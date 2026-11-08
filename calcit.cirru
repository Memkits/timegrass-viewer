
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/DispatchOp
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ reel :store
                states $ decode-map-as
                  .unwrap $ get store :states
                  Map Dynamic Dynamic
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ match (get states :data)
                  (:some raw)
                    if (nil? raw)
                      app.schema/EditorState :content | :list? false :data (Option :none) :error $ Option :none
                      read-editor raw
                  (:none)
                    app.schema/EditorState :content | :list? false :data (Option :none) :error $ Option :none
                content $ :content state
              div
                {} $ :style $ .merge ui/fullscreen ui/column
                if (:list? state)
                  div
                    {} $ :style ui/expand
                    div ({})
                      button $ {} (:style ui/button) (:inner-text |Edit)
                        :on-click $ fn (e d!)
                          d! $ schema/Op :editor cursor $ assoc state :list? false
                    space-y 8
                    match (:data state)
                      (:some data) (comp-viewer data)
                      (:none) &unit
                  div
                    {} $ :style $ .merge ui/global ui/expand ui/column
                    div
                      {} $ :style $ {} (:padding 8)
                      button $ {} (:style ui/button) (:inner-text |Read)
                        :on-click $ fn (e d!)
                          try
                            match (try-parse-cirru-edn content)
                              (:ok parsed)
                                if (map? parsed)
                                  d! $ schema/Op :editor cursor $ -> state (assoc :list? true)
                                    assoc :data $ Option :some $ grab-info
                                      decode-map-as parsed $ Map Dynamic Dynamic
                                    assoc :error $ Option :none
                                  d! $ schema/Op :editor cursor $ assoc state :error (Option :some |Expected-map)
                              (:err message)
                                d! $ schema/Op :editor cursor $ assoc state :error (Option :some message)
                            fn (message)
                              d! $ schema/Op :editor cursor $ -> state (assoc :list? false)
                                assoc :error $ Option :some message
                              , &unit
                          , &unit
                    textarea $ {} (:value content) (:placeholder |Content)
                      :style $ .merge ui/expand ui/textarea $ {} (:height |420px) (:font-family ui/font-code) (:white-space |nowrap)
                      :on-input $ fn (e d!)
                        hint-fn $ Fn respo.schema/RespoEvent
                          Fn app.schema/Op $ -> Unit
                          -> Unit
                        d! $ schema/Op :editor cursor $ assoc state :content
                          decode-map-as (:value e) 'String
                    space-x 8
                    match (:error state)
                      (:some error)
                        Option :some $ <> error $ {} (:color :red)
                      (:none) (Option :none)
                if dev?
                  Option :some $ comp-typed-reel (>> states :reel) reel $ {}
                  Option :none
          :examples $ []
          :schema $ quote $ Fn
            reel.typed/State app.schema/Op $ Map Tag Dynamic
            -> respo.schema/Component
            :features :js-ffi
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
                          day-tasks $ .unwrap-or (get grouped-tasks day-format) ([])
                          day-notes $ .unwrap-or (get grouped-notes day-format) ([])
                        div
                          {} $ :style $ .merge ui/column
                            {} (:display |inline-flex) (:width |14%) (:padding-right |20px) (:padding-left |8px) (:margin-bottom |16px)
                              :border-left $ str "|1px solid " $ hsl 0 0 80
                          <> day-with-week $ {} (:font-family ui/font-fancy)
                            :color $ hsl 0 0 70
                            :font-size 14
                            :font-weight |300
                          div
                            {} $ :style $ .merge ui/expand
                              {} $ :padding-left |8px
                            if
                              not $ empty? day-tasks
                              Option :some $ list->
                                {} $ :style style-list
                                -> day-tasks $ map-indexed $ fn (idx task)
                                  [] idx $ <> (task :text)
                                    {} (:display :block) (:font-size 13)
                              Option :none
                            if
                              not $ empty? day-notes
                              Option :some $ list->
                                {} $ :style style-list
                                -> day-notes $ map-indexed $ fn (idx note)
                                  [] idx $ <> (note :text)
                                    {}
                                      :color $ hsl 0 0 70
                                      :font-size 13
                              Option :none
          :examples $ []
          :schema $ quote $ Fn app.schema/Info (-> respo.schema/Component) (:features :js-ffi)
        'grab-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn grab-info (data)
            let
                tasks $ let
                    tasks-map $ decode-map-as
                      .unwrap $ get data :tasks
                      Map Dynamic Dynamic
                    working $ decode-map-as
                      .unwrap $ get tasks-map :working
                      Map Dynamic Dynamic
                    finished $ decode-map-as
                      .unwrap $ get tasks-map :finished
                      Map Dynamic Dynamic
                  map-list-kv (.merge working finished)
                    fn (key value) (read-task-entry value)
                notes $ map-list-kv
                  decode-map-as
                    .unwrap $ get data :notes
                    Map Dynamic Dynamic
                  fn (key value) (read-entry value)
                all-time $ .concat
                  map tasks $ fn (task) (task :time)
                  map notes $ fn (note) (note :time)
                from-day $ .unwrap-or (min all-time) 0
                to-day $ .unwrap-or (max all-time) 0
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
          :schema $ quote $ Fn (Map Dynamic Dynamic) (-> app.schema/Info) (:features :js-ffi)
        'read-editor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-editor (raw)
            hint-fn $ Fn Dynamic $ -> app.schema/EditorState
            let
                state $ decode-map-as raw $ Map Tag Dynamic
              app.schema/EditorState :content
                decode-map-as
                  .unwrap $ get state :content
                  , 'String
                , :list?
                  decode-map-as
                    .unwrap $ get state :list?
                    , 'Bool
                  , :data
                    match (get state :data)
                      (:some data)
                        if (nil? data) (Option :none)
                          Option :some $ read-info data
                      (:none) (Option :none)
                    , :error $ match (get state :error)
                      (:some error)
                        if (string? error) (Option :some error) (Option :none)
                      (:none) (Option :none)
          :examples $ []
        'read-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-entry (value)
            decode-map-as
              if (struct? value) (&struct:to-map value) value
              , 'app.schema/Entry
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> app.schema/Entry)
        'read-groups $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-groups (value tasks?)
            filter-map-kv
              decode-map-as value $ Map String $ List Dynamic
              fn (day items)
                MapEntryDecision :keep day $ map items $ fn (item)
                  if tasks? (read-task-entry item) (read-entry item)
          :examples $ []
          :schema $ quote $ Fn Dynamic Bool
            -> $ Map String $ List app.schema/Entry
        'read-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-info (value)
            let
                data $ decode-map-as
                  if (struct? value) (&struct:to-map value) value
                  Map Dynamic Dynamic
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
          :schema $ quote $ Fn Dynamic (-> app.schema/Info)
        'read-task-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-task-entry (value)
            if (struct? value) (read-entry value)
              let
                  task $ decode-map-as value $ Map Dynamic Dynamic
                schema/Entry :text
                  decode-map-as
                    .unwrap $ get task :text
                    , 'String
                  , :time $ task-time task
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> app.schema/Entry)
        'style-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-list
            {} $ :margin-bottom 4
          :examples $ []
          :schema $ quote $ Map Tag Number
        'task-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn task-time (task)
            match (get task :finished-time)
              (:some finished)
                if (number? finished) finished $ decode-map-as
                  .unwrap $ get task :created-time
                  , 'Number
              (:none)
                decode-map-as
                  .unwrap $ get task :created-time
                  , 'Number
          :examples $ []
          :schema $ quote $ Fn (Map Dynamic Dynamic) (-> Number)
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
            respo.comp.space :refer $ space-x space-y
            app.config :refer $ dev?
            app.schema :as schema
            reel.comp.reel :refer $ comp-typed-reel
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main-fonts.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main-fonts.css)
              :cdn-url |https://cos-sh.tiye.me/Memkits/timegrass-viewer/
              :title "|Timegrass Viewer"
              :icon |http://cdn.tiye.me/logo/memkits.png
              :storage-key |timegrass-viewer
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref
            reel.typed/State app.schema/Op $ Map Tag Dynamic
        '*storage-failed? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *storage-failed? false
          :examples $ []
          :schema $ quote $ Ref Bool
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (message)
            if (enum? message)
              cond
                  = (enum-definition message) (Option :some schema/Op)
                  dispatch-resolved! $ decode-map-as message 'app.schema/Op
                (= (enum-definition message) (Option :some typed/Control))
                  dispatch-resolved! $ decode-map-as message 'reel.typed/Control
                true $ match (typed/decode-control message)
                  (:some control) (dispatch-resolved! control)
                  (:none)
                    dispatch-resolved! $ schema/decode-op message
              raise "|Expected Enum operation"
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/DispatchOp (-> Unit) (:features :js-ffi)
        'dispatch-resolved! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-resolved! (op)
            hint-fn $ Fn app.schema/ResolvedOp (-> Unit) (:features :js-ffi)
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (shared/now-ms)
            , &unit
          :examples $ []
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
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            narrow-element $ .unwrap $ js-ffi.browser/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            when-not @*storage-failed? $ js-ffi.browser/storage-set! |timegrass-viewer $ format-cirru-edn (@*reel :store)
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (remove-watch! *reel :changes) (clear-cache!)
            add-watch! *reel :changes $ fn (r p) (render-app!)
            reset! *reel $ typed/refresh updater @*reel schema/store
            println |Code-updated.
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
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
                  schema/Op :editor ([])
                    app.schema/EditorState :content | :list? false :data (Option :none) :error $ Option :some "|存档加载失败，已暂停自动保存以保留原始值；请修复存档后重新加载。"
                  generate-id!
                  shared/now-ms
                eprintln "|Storage restore failed; original value kept."
                , &unit
            , &unit
          :examples $ []
          :schema $ quote $ Fn String (-> Unit) (:features :js-ffi)
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
        'DispatchOp $ %{} 'CodeEntry
          :doc "|Raw UI Enum boundary includes anonymous Reel controls. dispatch! validates controls or decodes the closed application Op before recording it."
          :code $ quote $ def DispatchOp (:: :unhandled)
          :examples $ []
          :schema $ quote AnyEnum
        'EditorState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct EditorState (:content String) (:list? Bool)
            :data $ Option app.schema/Info
            :error $ Option String
          :examples $ []
          :schema $ quote StructDef
        'Entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Entry (:text String) (:time Number)
          :examples $ []
          :schema $ quote StructDef
        'Info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Info (:from-day String) (:days Number)
            :grouped-tasks $ Map String $ List app.schema/Entry
            :grouped-notes $ Map String $ List app.schema/Entry
          :examples $ []
          :schema $ quote StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :editor (List respo.schema/CoordKey) app.schema/EditorState
            :hydrate-storage $ Map Tag Dynamic
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (message)
            match message
              (:states cursor value)
                Op :states
                  decode-map-as cursor $ List respo.schema/CoordKey
                  , value
              (:hydrate-storage value)
                Op :hydrate-storage $ read-store value
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> app.schema/Op)
        'read-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-store (value)
            let
                root $ decode-map-as value $ Map Tag Dynamic
                states $ decode-map-as
                  .unwrap $ get root :states
                  Map Dynamic Dynamic
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
              assoc root :states $ assoc states :cursor cursor
          :examples $ []
          :schema $ quote $ Fn Dynamic
            -> $ Map Tag Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.time $ %{} 'FileEntry
      :defs $ {}
        'format-date $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-date (value offset pattern)
            decode-map-as (formatTime value offset pattern) 'String
          :examples $ []
          :schema $ quote $ Fn String Number String (-> String) (:features :js-ffi)
        'format-timestamp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-timestamp (value offset pattern)
            decode-map-as (formatTime value offset pattern) 'String
          :examples $ []
          :schema $ quote $ Fn Number Number String (-> String) (:features :js-ffi)
        'week-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn week-day (value)
            decode-map-as (weekDay value) 'Number
          :examples $ []
          :schema $ quote $ Fn Number (-> Number) (:features :js-ffi)
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
                      Map Dynamic Dynamic
                    conj cursor :data
                    , value
                  Map Dynamic Dynamic
              (:editor cursor state)
                let
                    base $ {}
                      :content $ :content state
                      :list? $ :list? state
                      :data nil
                      :error nil
                    with-data $ match (:data state)
                      (:some data) (assoc base :data data)
                      (:none) base
                    wire $ match (:error state)
                      (:some error) (assoc with-data :error error)
                      (:none) with-data
                  assoc store :states $ decode-map-as
                    assoc-in
                      decode-map-as
                        .unwrap $ get store :states
                        Map Dynamic Dynamic
                      conj cursor :data
                      , wire
                    Map Dynamic Dynamic
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) app.schema/Op String Number
            -> $ Map Tag Dynamic
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
