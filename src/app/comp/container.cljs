
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

(def style-list {:margin-bottom 4})

(defcomp
 comp-viewer
 (data)
 (let [from-day (dayjs (:from-day data))
       days (:days data)
       grouped-tasks (:grouped-tasks data)
       grouped-notes (:grouped-notes data)]
   (list->
    {:style {:padding "4px 8px"}}
    (->> (range (inc days))
         (map
          (fn [idx]
            (let [the-day (.add from-day idx "days")]
              [idx
               (let [day-format (.format the-day "YYYY-MM-DD")
                     day-with-week (.format the-day "YYYY-MM-DD ddd")
                     day-tasks (get grouped-tasks day-format)
                     day-notes (get grouped-notes day-format)]
                 (div
                  {:style (merge
                           ui/column
                           {:display :inline-flex,
                            :width "14%",
                            :padding-right "20px",
                            :padding-left 8,
                            :margin-bottom 16,
                            :border-left (str "1px solid " (hsl 0 0 80))})}
                  (<>
                   day-with-week
                   {:font-family ui/font-fancy,
                    :color (hsl 0 0 70),
                    :font-size 14,
                    :font-weight 300})
                  (div
                   {:style (merge ui/expand {:padding-left 8})}
                   (if (not (empty? day-tasks))
                     (list->
                      {:style style-list}
                      (->> day-tasks
                           (map-indexed
                            (fn [idx task]
                              [idx (<> (:text task) {:display :block, :font-size 13})])))))
                   (if (not (empty? day-notes))
                     (list->
                      {:style (merge style-list)}
                      (->> day-notes
                           (map-indexed
                            (fn [idx note]
                              [idx (<> (:text note) {:color (hsl 0 0 70), :font-size 13})]))))))))])))))))

(defn grab-info [data]
  (let [tasks (vals (merge (:working-tasks data) (:finished-tasks data)))
        notes (vals (:notes data))
        all-time (filter some? (concat (map :created-time tasks) (map :time notes)))
        from-day (dayjs (apply min all-time))
        to-day (dayjs (apply max all-time))
        days (js/Math.ceil
              (/ (- (apply max all-time) (apply min all-time)) (* 1000 60 60 24)))
        grouped-tasks (group-by
                       (fn [task] (.format (dayjs (:created-time task)) "YYYY-MM-DD"))
                       tasks)
        grouped-notes (group-by
                       (fn [note] (.format (dayjs (:time note)) "YYYY-MM-DD"))
                       notes)
        week-day (.day from-day)]
    {:days (+ days week-day),
     :from-day (.format (.subtract from-day week-day "days") "YYYY-MM-DD"),
     :grouped-tasks grouped-tasks,
     :grouped-notes grouped-notes}))

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
          :on-click (fn [e d!] (d! cursor (update state :list? not)))}))
       (=< nil 8)
       (if (some? (:days (:data state))) (comp-viewer (:data state))))
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
             (-> state
                 (update :list? not)
                 (assoc :data (grab-info (read-string (:content state)))))))}))
       (textarea
        {:value (:content state),
         :placeholder "Content",
         :style (merge ui/expand ui/textarea {:height 420}),
         :on-input (fn [e d!] (d! cursor (assoc state :content (:value e))))})
       (=< 8 nil)
       (when dev? (comp-reel (>> states :reel) reel {})))))))
