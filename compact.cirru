
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require
          [] respo-ui.core :refer $ [] hsl
          [] respo-ui.core :as ui
          [] respo.core :refer $ [] defcomp defeffect <> >> list-> div button textarea span input
          [] respo.comp.space :refer $ [] =<
          [] reel.comp.reel :refer $ [] comp-reel
          [] respo-md.comp.md :refer $ [] comp-md
          [] app.config :refer $ [] dev?
          [] "\"dayjs" :default dayjs
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ or (:cursor states) ([])
                state $ or (:data states)
                  {} (:content "\"") (:list? false) (:data? nil)
              div
                {} $ :style (merge ui/fullscreen ui/column)
                if (:list? state)
                  div
                    {} $ :style ui/expand
                    div ({})
                      button $ {} (:style ui/button) (:inner-text "\"Edit")
                        :on-click $ fn (e d!)
                          d! cursor $ update state :list? not
                    =< nil 8
                    if
                      some? $ :days (:data state)
                      comp-viewer $ :data state
                  div
                    {} $ :style (merge ui/global ui/expand ui/column)
                    div
                      {} $ :style
                        merge $ {} (:padding 8)
                      button $ {} (:style ui/button) (:inner-text "\"Read")
                        :on-click $ fn (e d!)
                          d! cursor $ -> state (update :list? not)
                            assoc :data $ grab-info
                              parse-cirru-edn $ :content state
                    textarea $ {}
                      :value $ :content state
                      :placeholder "\"Content"
                      :style $ merge ui/expand ui/textarea
                        {} (:height 420) (:font-family ui/font-code) (:white-space :nowrap)
                      :on-input $ fn (e d!)
                        d! cursor $ assoc state :content (:value e)
                    =< 8 nil
                    when dev? $ comp-reel (>> states :reel) reel ({})
        |grab-info $ quote
          defn grab-info (data)
            let
                tasks $ ->
                  merge (-> data :tasks :working) (-> data :tasks :finished)
                  .to-list
                  map last
                notes $ -> (:notes data) (.to-list) (map last)
                all-time $ filter
                  concat
                    map tasks $ fn (x)
                      or (:finished-time x) (:created-time x)
                    map notes $ fn (x) (:time x)
                  , some?
                from-day $ dayjs (min all-time)
                to-day $ dayjs (max all-time)
                days $ js/Math.ceil
                  /
                    - (max all-time) (min all-time)
                    * 1000 60 60 24
                grouped-tasks $ group-by tasks
                  fn (task)
                    .format
                      dayjs $ or (:finished-time task) (:created-time task)
                      , "\"YYYY-MM-DD"
                grouped-notes $ group-by notes
                  fn (note)
                    .format
                      dayjs $ :time note
                      , "\"YYYY-MM-DD"
                week-day $ .!day from-day
              {}
                :days $ + days week-day
                :from-day $ .!format (.!subtract from-day week-day "\"days") "\"YYYY-MM-DD"
                :grouped-tasks grouped-tasks
                :grouped-notes grouped-notes
        |comp-viewer $ quote
          defcomp comp-viewer (data)
            let
                from-day $ dayjs (:from-day data)
                days $ :days data
                grouped-tasks $ :grouped-tasks data
                grouped-notes $ :grouped-notes data
              list->
                {} $ :style
                  {} $ :padding "\"4px 8px"
                ->
                  range $ inc days
                  map $ fn (idx)
                    let
                        the-day $ .add from-day idx "\"days"
                      [] idx $ let
                          day-format $ .format the-day "\"YYYY-MM-DD"
                          day-with-week $ .format the-day "\"YYYY-MM-DD ddd"
                          day-tasks $ get grouped-tasks day-format
                          day-notes $ get grouped-notes day-format
                        div
                          {} $ :style
                            merge ui/column $ {} (:display :inline-flex) (:width "\"14%") (:padding-right "\"20px") (:padding-left 8) (:margin-bottom 16)
                              :border-left $ str "\"1px solid " (hsl 0 0 80)
                          <> day-with-week $ {} (:font-family ui/font-fancy)
                            :color $ hsl 0 0 70
                            :font-size 14
                            :font-weight 300
                          div
                            {} $ :style
                              merge ui/expand $ {} (:padding-left 8)
                            if
                              not $ empty? day-tasks
                              list->
                                {} $ :style style-list
                                -> day-tasks $ map-indexed
                                  fn (idx task)
                                    [] idx $ <> (:text task)
                                      {} (:display :block) (:font-size 13)
                            if
                              not $ empty? day-notes
                              list->
                                {} $ :style (merge style-list)
                                -> day-notes $ map-indexed
                                  fn (idx note)
                                    [] idx $ <> (:text note)
                                      {}
                                        :color $ hsl 0 0 70
                                        :font-size 13
        |style-list $ quote
          def style-list $ {} (:margin-bottom 4)
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          [] respo.cursor :refer $ [] update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          [] respo.core :refer $ [] render! clear-cache! realize-ssr!
          [] app.comp.container :refer $ [] comp-container
          [] app.updater :refer $ [] updater
          [] app.schema :as schema
          [] reel.util :refer $ [] listen-devtools!
          [] reel.core :refer $ [] reel-updater refresh-reel
          [] reel.schema :as reel-schema
          [] app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! (? e)
            .setItem js/localStorage (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            .addEventListener js/window |beforeunload persist-storage!
            repeat! 60 persist-storage!
            let
                raw $ .getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |snippets $ quote
          defn snippets () $ println config/cdn?
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main-fonts.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:cdn-url "\"http://cdn.tiye.me/timegrass-viewer/") (:title "\"Timegrass Viewer") (:icon "\"http://cdn.tiye.me/logo/memkits.png") (:storage-key "\"timegrass-viewer")
