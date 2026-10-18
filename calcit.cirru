
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op |app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ reel :store
                states $ decode-map-as
                  .unwrap $ get store :states
                  :: 'Map 'Dynamic 'Dynamic
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                raw-state $ .unwrap-or (get states :data) nil
                state $ decode-map-as
                  if (nil? raw-state)
                    {} (:content |) (:list? false) (:data nil) (:error nil)
                    , raw-state
                  :: 'Map 'Tag 'Dynamic
                content $ decode-map-as
                  .unwrap $ get state :content
                  , 'String
                listing? $ decode-map-as
                  .unwrap $ get state :list?
                  , 'Bool
                data $ .unwrap-or (get state :data) nil
                error $ .unwrap-or (get state :error) nil
              div
                {} $ :style $ merge ui/fullscreen ui/column
                if listing?
                  div
                    {} $ :style ui/expand
                    div ({})
                      button $ {} (:style ui/button) (:inner-text |Edit)
                        :on-click $ fn (e d!)
                          d! $ schema/Op :states cursor $ assoc state :list? false
                    =< nil 8
                    if (nil? data) &unit $ comp-viewer $ read-info data
                  div
                    {} $ :style $ merge ui/global ui/expand ui/column
                    div
                      {} $ :style $ {} (:padding 8)
                      button $ {} (:style ui/button) (:inner-text |Read)
                        :on-click $ fn (e d!)
                          try
                            match (try-parse-cirru-edn content)
                              (:ok parsed)
                                if (map? parsed)
                                  d! $ schema/Op :states cursor $ -> state (assoc :list? true)
                                    assoc :data $ grab-info $ decode-map-as parsed (:: 'Map 'Dynamic 'Dynamic)
                                    assoc :error nil
                                  d! $ schema/Op :states cursor $ assoc state :error |Expected-map
                              (:err message)
                                d! $ schema/Op :states cursor $ assoc state :error message
                            fn (message)
                              d! $ schema/Op :states cursor $ -> state (assoc :list? false) (assoc :error message)
                              , &unit
                          , &unit
                    textarea $ {} (:value content) (:placeholder |Content)
                      :style $ merge ui/expand ui/textarea $ {} (:height 420) (:font-family ui/font-code) (:white-space :nowrap)
                      :on-input $ fn (e d!)
                        d! $ schema/Op :states cursor $ assoc state :content
                          decode-map-as
                            .unwrap $ get
                              decode-map-as e $ :: 'Map 'Tag 'Dynamic
                              , :value
                            , 'String
                    =< 8 nil
                    if (string? error)
                      <> error $ {} $ :color :red
                when dev? $ comp-reel (>> states :reel) (reel-view/view-data reel) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'app.schema/Op (:: 'Map 'Tag 'Dynamic)
            :features $ #{} :js-ffi
        'comp-viewer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-viewer (data)
            let
                from-day $ data :from-day
                days $ data :days
                grouped-tasks $ data :grouped-tasks
                grouped-notes $ data :grouped-notes
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
                            :font-weight |300
                          div
                            {} $ :style $ merge ui/expand
                              {} $ :padding-left 8
                            if
                              not $ empty? day-tasks
                              list->
                                {} $ :style style-list
                                -> day-tasks $ map-indexed $ fn (idx task)
                                  [] idx $ <> (task :text)
                                    {} (:display :block) (:font-size 13)
                            if
                              not $ empty? day-notes
                              list->
                                {} $ :style $ merge style-list
                                -> day-notes $ map-indexed $ fn (idx note)
                                  [] idx $ <> (note :text)
                                    {}
                                      :color $ hsl 0 0 70
                                      :font-size 13
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'app.schema/Info
            :features $ #{} :js-ffi
        'grab-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn grab-info (data)
            let
                tasks $ let
                    tasks-map $ decode-map-as
                      .unwrap $ get data :tasks
                      :: 'Map 'Dynamic 'Dynamic
                    working $ decode-map-as
                      .unwrap $ get tasks-map :working
                      :: 'Map 'Dynamic 'Dynamic
                    finished $ decode-map-as
                      .unwrap $ get tasks-map :finished
                      :: 'Map 'Dynamic 'Dynamic
                  map-list-kv (merge working finished)
                    fn (key value) (read-task-entry value)
                notes $ map-list-kv
                  decode-map-as
                    .unwrap $ get data :notes
                    :: 'Map 'Dynamic 'Dynamic
                  fn (key value) (read-entry value)
                all-time $ concat
                  map tasks $ fn (task) (task :time)
                  map notes $ fn (note) (note :time)
                from-day $ option:unwrap-or (min all-time) 0
                to-day $ option:unwrap-or (max all-time) 0
                days $ ceil $ / (- to-day from-day) (* 1000 60 60 24)
                grouped-tasks $ group-by tasks $ fn (task)
                  app.time/format-timestamp (task :time) 0 |YYYY-MM-DD
                grouped-notes $ group-by notes $ fn (note)
                  app.time/format-timestamp (note :time) 0 |YYYY-MM-DD
                weekday-index $ app.time/week-day from-day
              schema/Info :days (+ days weekday-index) :from-day
                app.time/format-timestamp from-day (- 0 weekday-index) |YYYY-MM-DD
                , :grouped-tasks grouped-tasks :grouped-notes grouped-notes
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Info)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'read-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-entry (value)
            decode-map-as
              if (struct? value) (&struct:to-map value) value
              , 'app.schema/Entry
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Entry)
            :args $ [] 'Dynamic
        'read-groups $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-groups (value tasks?)
            filter-map-kv
              decode-map-as value $ :: 'Map 'String $ :: 'List 'Dynamic
              fn (day items)
                MapEntryDecision :keep day $ map items $ fn (item)
                  if tasks? (read-task-entry item) (read-entry item)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Bool
            :return $ :: 'Map 'String $ :: 'List 'app.schema/Entry
        'read-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-info (value)
            let
                data $ decode-map-as
                  if (struct? value) (&struct:to-map value) value
                  :: 'Map 'Dynamic 'Dynamic
              schema/Info :from-day
                decode-map-as
                  .unwrap $ get data :from-day
                  , 'String
                , :days
                  decode-map-as
                    .unwrap $ get data :days
                    , 'Number
                  , :grouped-tasks
                    read-groups
                      .unwrap $ get data :grouped-tasks
                      , true
                    , :grouped-notes $ read-groups
                      .unwrap $ get data :grouped-notes
                      , false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Info)
            :args $ [] 'Dynamic
        'read-task-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-task-entry (value)
            if (struct? value) (read-entry value)
              let
                  task $ decode-map-as value $ :: 'Map 'Dynamic 'Dynamic
                schema/Entry :text
                  decode-map-as
                    .unwrap $ get task :text
                    , 'String
                  , :time $ task-time task
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Entry)
            :args $ [] 'Dynamic
        'style-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-list
            {} $ :margin-bottom 4
          :examples $ []
          :schema $ :: 'Map 'Tag 'Number
        'task-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn task-time (task)
            let
                finished $ .unwrap-or (get task :finished-time) nil
                created $ .unwrap-or (get task :created-time) nil
              if (number? finished) finished $ decode-map-as created 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
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
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> list-> div button textarea
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            reel.typed-compat :as reel-view
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
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.schema/Op (:: 'Map 'Tag 'Dynamic)
        '*storage-failed? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *storage-failed? false
          :examples $ []
          :schema $ :: 'Ref 'Bool
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (message)
            if (enum? message)
              reset! *reel $ match (typed/decode-control message)
                (:some control) (typed/apply-control updater @*reel control)
                (:none)
                  typed/record-op updater @*reel (schema/decode-op message) (generate-id!) (shared/now-ms)
              raise "|Expected Enum operation"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (r p) (render-app!)
            listen-devtools! |a dispatch!
            js-ffi.browser/add-event-listener! |beforeunload $ fn (_) (persist-storage!)
            match (js-ffi.browser/storage-get |timegrass-viewer)
              (:some raw) (restore-storage! raw)
              (:none) &unit
            println |App-started.
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            narrow-element $ option:unwrap $ js-ffi.browser/query-selector |.app
          :examples $ []
          :schema $ :: 'respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            when-not @*storage-failed? $ js-ffi.browser/storage-set! |timegrass-viewer $ format-cirru-edn (@*reel :store)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (remove-watch! *reel :changes) (clear-cache!)
            add-watch! *reel :changes $ fn (r p) (render-app!)
            reset! *reel $ typed/refresh updater @*reel schema/store
            println |Code-updated.
            , &unit
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
        'restore-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn restore-storage! (raw)
            try
              let
                  restored $ schema/read-store $ parse-cirru-edn raw
                reset! *reel $ typed/record-op updater @*reel (schema/Op :hydrate-storage restored) (generate-id!) (shared/now-ms)
                reset! *storage-failed? false
                , &unit
              fn (message) (reset! *storage-failed? true)
                reset! *reel $ typed/record-op updater @*reel
                  schema/Op :states ([])
                    {} (:content |) (:list? false) (:data nil) (:error "|存档加载失败，已暂停自动保存以保留原始值；请修复存档后重新加载。")
                  generate-id!
                  shared/now-ms
                eprintln "|Storage restore failed; original value kept."
                , &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            reel.typed :as typed
            js-ffi.shared :as shared
            respo.ffi.browser :refer $ narrow-element
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Entry (:text 'String) (:time 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'Info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Info (:from-day 'String) (:days 'Number)
            :grouped-tasks $ :: 'Map 'String $ :: 'List 'app.schema/Entry
            :grouped-notes $ :: 'Map 'String $ :: 'List 'app.schema/Entry
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :hydrate-storage $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'EnumDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (message)
            match message
              (:states cursor value)
                Op :states
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , value
              (:hydrate-storage value)
                Op :hydrate-storage $ read-store value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'Enum
        'read-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-store (value)
            let
                root $ decode-map-as value $ :: 'Map 'Tag 'Dynamic
                states $ decode-map-as
                  .unwrap $ get root :states
                  :: 'Map 'Dynamic 'Dynamic
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
              assoc root :states $ assoc states :cursor cursor
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'store $ %{} 'CodeEntry (:doc |)
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
            decode-map-as (formatTime value offset pattern) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Number 'String
            :features $ #{} :js-ffi
        'format-timestamp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-timestamp (value offset pattern)
            decode-map-as (formatTime value offset pattern) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'Number 'String
            :features $ #{} :js-ffi
        'week-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn week-day (value)
            decode-map-as (weekDay value) 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.time
          :require $ |../time.mjs :refer $ formatTime weekDay
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor value)
                assoc store :states $ decode-map-as
                  assoc-in
                    decode-map-as
                      .unwrap $ get store :states
                      :: 'Map 'Dynamic 'Dynamic
                    conj cursor :data
                    , value
                  :: 'Map 'Dynamic 'Dynamic
              (:hydrate-storage data) data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'app.schema/Op 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |hydrate-storage)
            :code $ quote $ = |saved
              decode-map-as
                .unwrap $ get
                  updater app.schema/store
                    app.schema/Op :hydrate-storage $ assoc app.schema/store :marker |saved
                    , |id 0
                  , :marker
                , 'String
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
