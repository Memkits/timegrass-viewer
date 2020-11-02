
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp defeffect <> >> list-> div button textarea span input]]
            [respo.comp.space :refer [=<]]
            [reel.comp.reel :refer [comp-reel]]
            [respo-md.comp.md :refer [comp-md]]
            [app.config :refer [dev?]]
            [cljs.reader :refer [read-string]]
            ["dayjs" :as dayjs]))

(def style-list {:padding-left 40})

(defcomp
 comp-viewer
 (data)
 (let [tasks (vals (merge (:working-tasks data) (:finished-tasks data)))
       notes (vals (:notes data))
       all-time (filter some? (concat (map :created-time tasks) (map :time notes)))
       from-day (dayjs (apply min all-time))
       to-day (dayjs (apply max all-time))
       days (js/Math.ceil
             (/ (- (apply max all-time) (apply min all-time)) (* 1000 60 60 24)))]
   (div
    {}
    (list->
     {}
     (->> (range (inc days))
          (map
           (fn [idx]
             (let [the-day (.add from-day idx "days")]
               [idx
                (let [day-format (.format the-day "YYYY-MM-DD")
                      day-tasks (->> tasks
                                     (filter
                                      (fn [task]
                                        (=
                                         day-format
                                         (.format (dayjs (:created-time task)) "YYYY-MM-DD")))))
                      day-notes (->> notes
                                     (filter
                                      (fn [task]
                                        (=
                                         day-format
                                         (.format (dayjs (:time task)) "YYYY-MM-DD")))))]
                  (div
                   {}
                   (<> day-format {:font-family ui/font-fancy, :color (hsl 0 0 80)})
                   (if (not (empty? day-tasks))
                     (list->
                      {:style style-list}
                      (->> day-tasks
                           (map-indexed (fn [idx task] [idx (div {} (<> (:text task)))])))))
                   (=< nil 20)
                   (if (not (empty? day-notes))
                     (list->
                      {:style style-list}
                      (->> day-notes
                           (map-indexed (fn [idx note] [idx (div {} (<> (:text note)))])))))))]))))))))

(defcomp
 comp-container
 (reel)
 (let [store (:store reel)
       states (:states store)
       cursor (or (:cursor states) [])
       state (or (:data states) {:content "", :list? false, :data? nil})]
   (div
    {:style (merge ui/fullscreen ui/column)}
    (if (:list? state)
      (div
       {:style ui/expand}
       (div
        {}
        (button
         {:style ui/button,
          :inner-text "Edit",
          :on-click (fn [e d!] (d! cursor (update state :list? not)))})
        (comp-viewer (:data state))))
      (div
       {:style (merge ui/global ui/expand ui/column)}
       (div
        {:style (merge {:padding 8})}
        (button
         {:style ui/button,
          :inner-text "Read",
          :on-click (fn [e d!]
            (d!
             cursor
             (-> state (update :list? not) (assoc :data (read-string (:content state))))))}))
       (textarea
        {:value (:content state),
         :placeholder "Content",
         :style (merge ui/expand ui/textarea {:height 420}),
         :on-input (fn [e d!] (d! cursor (assoc state :content (:value e))))})
       (=< 8 nil)
       (when dev? (comp-reel (>> states :reel) reel {})))))))
