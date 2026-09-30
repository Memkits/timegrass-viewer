
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ assert-type (&map:get reel :store) (:: 'Map 'Tag 'Dynamic)
                states $ assert-type (&map:get store :states) (:: 'Map 'Tag 'Dynamic)
                cursor $ assert-type
                  option:unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ assert-type
                  option:unwrap-or (get states :data)
                    {} (:content |) (:list? false) (:data nil) (:error nil)
                  :: 'Map 'Tag 'Dynamic
                content $ assert-type (&map:get state :content) 'String
                listing? $ assert-type (&map:get state :list?) 'Bool
                data $ &map:get state :data
                error $ &map:get state :error
              div
                {} $ :style $ merge ui/fullscreen ui/column
                if listing?
                  div
                    {} $ :style ui/expand
                    div ({})
                      button $ {} (:style ui/button) (:inner-text |Edit)
                        :on-click $ fn (e d!)
                          d! $ :: :states cursor $ assoc state :list? false
                    =< nil 8
                    if (map? data)
                      comp-viewer $ assert-type data $ :: 'Map 'Tag 'Dynamic
                  div
                    {} $ :style $ merge ui/global ui/expand ui/column
                    div
                      {} $ :style $ {} (:padding 8)
                      button $ {} (:style ui/button) (:inner-text |Read)
                        :on-click $ fn (e d!)
                          match (try-parse-cirru-edn content)
                            (:ok parsed)
                              if (map? parsed)
                                d! $ :: :states cursor $ -> state (assoc :list? true)
                                  assoc :data $ grab-info $ assert-type parsed (:: 'Map 'Tag 'Dynamic)
                                  assoc :error nil
                                d! $ :: :states cursor $ assoc state :error |Expected-map
                            (:err message)
                              d! $ :: :states cursor $ assoc state :error message
                    textarea $ {} (:value content) (:placeholder |Content)
                      :style $ merge ui/expand ui/textarea $ {} (:height 420) (:font-family ui/font-code) (:white-space :nowrap)
                      :on-input $ fn (e d!)
                        d! $ :: :states cursor $ assoc state :content
                          assert-type
                            &map:get
                              assert-type e $ :: 'Map 'Tag 'Dynamic
                              , :value
                            , 'String
                    =< 8 nil
                    if (string? error)
                      <> (assert-type error 'String)
                        {} $ :color :red
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-viewer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-viewer (data)
            let
                from-day $ assert-type (&map:get data :from-day) 'String
                days $ assert-type (&map:get data :days) 'Number
                grouped-tasks $ assert-type (&map:get data :grouped-tasks)
                  :: 'Map 'String $ :: 'List $ :: 'Map 'Tag 'Dynamic
                grouped-notes $ assert-type (&map:get data :grouped-notes)
                  :: 'Map 'String $ :: 'List $ :: 'Map 'Tag 'Dynamic
              list->
                {} $ :style $ {} (:padding "|4px 8px")
                ->
                  range $ inc days
                  map $ fn (idx)
                    let
                        the-day $ app.time/format-date from-day idx |YYYY-MM-DD
                      [] idx $ let
                          day-format the-day
                          day-with-week $ app.time/format-date from-day idx "|YYYY-MM-DD ddd"
                          day-tasks $ option:unwrap-or (get grouped-tasks day-format) ([])
                          day-notes $ option:unwrap-or (get grouped-notes day-format) ([])
                        div
                          {} $ :style $ merge ui/column
                            {} (:display :inline-flex) (:width |14%) (:padding-right |20px) (:padding-left 8) (:margin-bottom 16)
                              :border-left $ str "|1px solid " $ hsl 0 0 80
                          <> day-with-week $ {} (:font-family ui/font-fancy)
                            :color $ hsl 0 0 70
                            :font-size 14
                            :font-weight 300
                          div
                            {} $ :style $ merge ui/expand
                              {} $ :padding-left 8
                            if
                              not $ empty? day-tasks
                              list->
                                {} $ :style style-list
                                -> day-tasks $ map-indexed $ fn (idx task)
                                  [] idx $ <>
                                    assert-type (&map:get task :text) 'String
                                    {} (:display :block) (:font-size 13)
                            if
                              not $ empty? day-notes
                              list->
                                {} $ :style $ merge style-list
                                -> day-notes $ map-indexed $ fn (idx note)
                                  [] idx $ <>
                                    assert-type (&map:get note :text) 'String
                                    {}
                                      :color $ hsl 0 0 70
                                      :font-size 13
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'grab-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn grab-info (data)
            let
                tasks $ let
                    tasks-map $ assert-type (&map:get data :tasks) (:: 'Map 'Tag 'Dynamic)
                    working $ assert-type (&map:get tasks-map :working) (:: 'Map 'Dynamic 'Dynamic)
                    finished $ assert-type (&map:get tasks-map :finished) (:: 'Map 'Dynamic 'Dynamic)
                  -> (merge working finished) (.to-list)
                    map $ fn (pair)
                      assert-type
                        option:unwrap $ last pair
                        :: 'Map 'Tag 'Dynamic
                notes $ ->
                  assert-type (&map:get data :notes) (:: 'Map 'Dynamic 'Dynamic)
                  .to-list
                  map $ fn (pair)
                    assert-type
                      option:unwrap $ last pair
                      :: 'Map 'Tag 'Dynamic
                all-time $ concat (map tasks task-time)
                  map notes $ fn (note)
                    assert-type (&map:get note :time) 'Number
                from-day $ option:unwrap-or (min all-time) 0
                to-day $ option:unwrap-or (max all-time) 0
                days $ ceil $ / (- to-day from-day) (* 1000 60 60 24)
                grouped-tasks $ group-by tasks $ fn (task)
                  app.time/format-timestamp (task-time task) 0 |YYYY-MM-DD
                grouped-notes $ group-by notes $ fn (note)
                  app.time/format-timestamp
                    assert-type (&map:get note :time) 'Number
                    , 0 |YYYY-MM-DD
                weekday-index $ app.time/week-day from-day
              {}
                :days $ + days weekday-index
                :from-day $ app.time/format-timestamp from-day (- 0 weekday-index) |YYYY-MM-DD
                :grouped-tasks grouped-tasks
                :grouped-notes grouped-notes
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'style-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-list
            {} $ :margin-bottom 4
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'task-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn task-time (task)
            let
                finished $ &map:get task :finished-time
                created $ &map:get task :created-time
              if (number? finished) (assert-type finished 'Number) (assert-type created 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
          :tests $ []
            %{} 'TestEntry (:name |finished-wins)
              :code $ quote $ = 20
                task-time $ {} (:created-time 10) (:finished-time 20)
              :tags $ #{} :unit
            %{} 'TestEntry (:name |created-fallback)
              :code $ quote $ = 10
                task-time $ {} (:created-time 10) (:finished-time nil)
              :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
            [] respo.core :refer $ [] defcomp <> >> list-> div button textarea
            [] respo.comp.space :refer $ [] =<
            [] reel.comp.reel :refer $ [] comp-reel
            [] app.config :refer $ [] dev?
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css)
              :cdn-url |https://cos-sh.tiye.me/Memkits/timegrass-viewer/
              :title "|Timegrass Viewer"
              :icon |http://cdn.tiye.me/logo/memkits.png
              :storage-key |timegrass-viewer
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            js-ffi.browser/add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            match (js-ffi.browser/storage-get |timegrass-viewer)
              (:some raw)
                match (try-parse-cirru-edn raw)
                  (:ok parsed)
                    if (map? parsed)
                      dispatch! $ :: :hydrate-storage $ assert-type parsed (:: 'Map 'Tag 'Dynamic)
                  (:err message) (println |Storage-migration-failed: message)
              (:none) &unit
            println |App-started.
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ js-ffi.browser/query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set! |timegrass-viewer $ format-cirru-edn $ assert-type (&map:get @*reel :store) (:: 'Map 'Tag 'Dynamic)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (clear-cache!)
            reset! *reel $ assert-type (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
            println |Code-updated.
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            [] respo.core :refer $ [] render! clear-cache!
            [] app.comp.container :refer $ [] comp-container
            [] app.updater :refer $ [] updater
            [] app.schema :as schema
            [] reel.util :refer $ [] listen-devtools!
            [] reel.core :refer $ [] reel-updater refresh-reel
            [] reel.schema :as reel-schema
            [] app.config :as config
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.time $ %{} 'FileEntry
      :defs $ {}
        'format-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-date (value offset pattern)
            let
                format-time $ unsafe-coerce formatTime $ :: 'Fn
                  {}
                    :args $ [] 'String 'Number 'String
                    :return 'String
              format-time value offset pattern
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Number 'String
            :features $ #{} :js-ffi
        'format-timestamp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-timestamp (value offset pattern)
            let
                format-time $ unsafe-coerce formatTime $ :: 'Fn
                  {}
                    :args $ [] 'Number 'Number 'String
                    :return 'String
              format-time value offset pattern
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'Number 'String
            :features $ #{} :js-ffi
        'week-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn week-day (value)
            let
                get-day $ unsafe-coerce weekDay $ :: 'Fn
                  {}
                    :args $ [] 'Number
                    :return 'Number
              get-day value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.time
          :require $ [] |../time.mjs :refer $ [] formatTime weekDay
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assert-type (update-states store cursor s) (:: 'Map 'Tag 'Dynamic)
              (:hydrate-storage data)
                assert-type data $ :: 'Map 'Tag 'Dynamic
              _ $ do (eprintln |Unknown-op: op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |hydrate-storage)
            :code $ quote $ = |saved
              assert-type
                &map:get
                  updater app.schema/store
                    :: :hydrate-storage $ assoc app.schema/store :marker |saved
                    , |id 0
                  , :marker
                , 'String
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ [] respo.cursor :refer $ [] update-states
