
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/
    :init-fn |app.main/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507461830530) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1507461833421) (:by |root)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1507461835738) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:store) (:type :leaf) (:at 1507461837276) (:by |root)
                              |j $ {} (:text |reel) (:type :leaf) (:at 1507461838285) (:by |root)
                            :type :expr
                            :at 1507461836110
                            :by |root
                        :type :expr
                        :at 1507461834650
                        :by |root
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1509727105928) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:states) (:type :leaf) (:at 1509727107223) (:by |root)
                              |j $ {} (:text |store) (:type :leaf) (:at 1509727108033) (:by |root)
                            :type :expr
                            :at 1509727106316
                            :by |root
                        :type :expr
                        :at 1509727104820
                        :by |root
                      |n $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1584780923771) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |or) (:type :leaf) (:at 1584780992272) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:cursor) (:type :leaf) (:at 1584780925829) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780926681) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780923944
                                :by |rJG4IHzWf
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584780994497) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780993270
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780991636
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780921790
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1584780889620) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1584780892595) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1584780894689) (:by |rJG4IHzWf)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1584780900314) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584780894090
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1584780901408) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:content) (:type :leaf) (:at 1584780906050) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1584780907617) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1584780901741
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:list?) (:type :leaf) (:at 1604307336393) (:by |rJG4IHzWf)
                                      |j $ {} (:text |false) (:type :leaf) (:at 1604307339377) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604307322587
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:data?) (:type :leaf) (:at 1604307531797) (:by |rJG4IHzWf)
                                      |j $ {} (:text |nil) (:type :leaf) (:at 1604307532921) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604307528620
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1584780901014
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584780889933
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1584780887905
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507461834351
                    :by |root
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1604307341913) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1604307342466) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1604307343580) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1604307345413) (:by |rJG4IHzWf)
                                  |j $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1604307348336) (:by |rJG4IHzWf)
                                  |r $ {} (:text |ui/column) (:type :leaf) (:at 1604307354612) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604307345603
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604307342744
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604307342119
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |if) (:type :leaf) (:at 1604307357746) (:by |rJG4IHzWf)
                          |L $ {}
                            :data $ {}
                              |T $ {} (:text |:list?) (:type :leaf) (:at 1604307359544) (:by |rJG4IHzWf)
                              |j $ {} (:text |state) (:type :leaf) (:at 1604307360621) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604307358413
                            :by |rJG4IHzWf
                          |P $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1604307361603) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604307363356) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1604307493917) (:by |rJG4IHzWf)
                                      |j $ {} (:text |ui/expand) (:type :leaf) (:at 1604307495167) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604307490638
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604307362993
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |div) (:type :leaf) (:at 1604307371980) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604307373676) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604307373954
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |button) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                              |j $ {} (:text |ui/button) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604307381819
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:inner-text) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"Edit") (:type :leaf) (:at 1604307384681) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604307381819
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1604307381819) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604307381819
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1604307390275) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1604307391304) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |update) (:type :leaf) (:at 1604307398589) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1604307400526) (:by |rJG4IHzWf)
                                                          |r $ {} (:text |:list?) (:type :leaf) (:at 1604307401754) (:by |rJG4IHzWf)
                                                          |v $ {} (:text |not) (:type :leaf) (:at 1604307403333) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604307391795
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604307388094
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604307381819
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604307381819
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604307381819
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604307381819
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604307370239
                                :by |rJG4IHzWf
                              |t $ {}
                                :data $ {}
                                  |T $ {} (:text |=<) (:type :leaf) (:at 1604387148348) (:by |rJG4IHzWf)
                                  |j $ {} (:text |nil) (:type :leaf) (:at 1604387150196) (:by |rJG4IHzWf)
                                  |r $ {} (:text |8) (:type :leaf) (:at 1604387150944) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604387147153
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |some?) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:days) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:data) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604387145972
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604387145972
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604387145972
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |comp-viewer) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:data) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                          |j $ {} (:text |state) (:type :leaf) (:at 1604387145972) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1604387145972
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604387145972
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604387145972
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604307361148
                            :by |rJG4IHzWf
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1499755354983) (:by |root)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |merge) (:type :leaf) (:at 1499755354983) (:by |root)
                                          |j $ {} (:text |ui/global) (:type :leaf) (:at 1521129814235) (:by |root)
                                          |n $ {} (:text |ui/expand) (:type :leaf) (:at 1604307488985) (:by |rJG4IHzWf)
                                          |r $ {} (:text |ui/column) (:type :leaf) (:at 1604307432603) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1499755354983
                                    :type :expr
                                    :at 1499755354983
                                :type :expr
                                :at 1499755354983
                              |l $ {}
                                :data $ {}
                                  |T $ {} (:text |div) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |merge) (:type :leaf) (:at 1604307438852) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604307439699) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1604307445672) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |8) (:type :leaf) (:at 1604307442053) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604307439923
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604307439366
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604307437781
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604307429323
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604307429323
                                    :by |rJG4IHzWf
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |button) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                              |j $ {} (:text |ui/button) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604307429323
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:inner-text) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                              |j $ {} (:text "|\"Read") (:type :leaf) (:at 1604307883036) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604307429323
                                            :by |rJG4IHzWf
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1604307429323
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |->) (:type :leaf) (:at 1604307543770) (:by |rJG4IHzWf)
                                                          |L $ {} (:text |state) (:type :leaf) (:at 1604307545089) (:by |rJG4IHzWf)
                                                          |T $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |update) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                              |r $ {} (:text |:list?) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                              |v $ {} (:text |not) (:type :leaf) (:at 1604307429323) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1604307429323
                                                            :by |rJG4IHzWf
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |assoc) (:type :leaf) (:at 1604307551401) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |:data) (:type :leaf) (:at 1604307552457) (:by |rJG4IHzWf)
                                                              |r $ {}
                                                                :data $ {}
                                                                  |D $ {} (:text |grab-info) (:type :leaf) (:at 1604385604209) (:by |rJG4IHzWf)
                                                                  |T $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629371538783) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:content) (:type :leaf) (:at 1604307560164) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |state) (:type :leaf) (:at 1604307561036) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1604307559251
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604307553942
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604385574247
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604307547626
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604307543065
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604307429323
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604307429323
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604307429323
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604307429323
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604307429323
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604307429323
                                :by |rJG4IHzWf
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |textarea) (:type :leaf) (:at 1552321295613) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1512359504843) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:value) (:type :leaf) (:at 1512359505740) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:content) (:type :leaf) (:at 1512359519072) (:by |rJG4IHzWf)
                                              |j $ {} (:text |state) (:type :leaf) (:at 1584780914332) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1512359518303
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1512359505095
                                        :by |rJG4IHzWf
                                      |n $ {}
                                        :data $ {}
                                          |T $ {} (:text |:placeholder) (:type :leaf) (:at 1512359565393) (:by |rJG4IHzWf)
                                          |j $ {} (:text "|\"Content") (:type :leaf) (:at 1552321072612) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1512359562842
                                        :by |rJG4IHzWf
                                      |p $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1512359618050) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |D $ {} (:text |merge) (:type :leaf) (:at 1512359675059) (:by |rJG4IHzWf)
                                              |L $ {} (:text |ui/expand) (:type :leaf) (:at 1555609489873) (:by |rJG4IHzWf)
                                              |T $ {} (:text |ui/textarea) (:type :leaf) (:at 1512359621430) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1512359676048) (:by |rJG4IHzWf)
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:height) (:type :leaf) (:at 1512359679785) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |420) (:type :leaf) (:at 1604307466135) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1512359678671
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1629372896554) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |ui/font-code) (:type :leaf) (:at 1629372899475) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1629372893871
                                                    :by |rJG4IHzWf
                                                  |x $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:white-space) (:type :leaf) (:at 1629372912863) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |:nowrap) (:type :leaf) (:at 1629372914133) (:by |rJG4IHzWf)
                                                    :type :expr
                                                    :at 1629372906718
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1512359675605
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1512359674211
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1512359616676
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:on-input) (:type :leaf) (:at 1515731637149) (:by |root)
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |fn) (:type :leaf) (:at 1573355458962) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |T $ {} (:text |e) (:type :leaf) (:at 1573355459482) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |d!) (:type :leaf) (:at 1573355459980) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1573355459236
                                                :by |rJG4IHzWf
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |d!) (:type :leaf) (:at 1573355463209) (:by |rJG4IHzWf)
                                                  |r $ {} (:text |cursor) (:type :leaf) (:at 1584780918978) (:by |rJG4IHzWf)
                                                  |v $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |assoc) (:type :leaf) (:at 1584780932163) (:by |rJG4IHzWf)
                                                      |L $ {} (:text |state) (:type :leaf) (:at 1584780932805) (:by |rJG4IHzWf)
                                                      |P $ {} (:text |:content) (:type :leaf) (:at 1584780935039) (:by |rJG4IHzWf)
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:value) (:type :leaf) (:at 1512359559399) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |e) (:type :leaf) (:at 1573355472480) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1512359558827
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1584780929603
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1515731639686
                                                :by |root
                                            :type :expr
                                            :at 1573355456413
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1512359551423
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1512359504511
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1512359496483
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1584875384898) (:by |rJG4IHzWf)
                                  |r $ {} (:text |nil) (:type :leaf) (:at 1499755354983) (:by |root)
                                :type :expr
                                :at 1499755354983
                              |x $ {}
                                :data $ {}
                                  |D $ {} (:text |when) (:type :leaf) (:at 1521954057510) (:by |root)
                                  |L $ {} (:text |dev?) (:type :leaf) (:at 1521954059290) (:by |root)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507461815046) (:by |root)
                                      |b $ {}
                                        :data $ {}
                                          |D $ {} (:text |>>) (:type :leaf) (:at 1584780611347) (:by |rJG4IHzWf)
                                          |T $ {} (:text |states) (:type :leaf) (:at 1509727101297) (:by |root)
                                          |j $ {} (:text |:reel) (:type :leaf) (:at 1584780613268) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1584780610581
                                        :by |rJG4IHzWf
                                      |j $ {} (:text |reel) (:type :leaf) (:at 1507461840459) (:by |root)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1507461841342) (:by |root)
                                        :type :expr
                                        :at 1507461840980
                                        :by |root
                                    :type :expr
                                    :at 1507461809635
                                    :by |root
                                :type :expr
                                :at 1521954055333
                                :by |root
                            :type :expr
                            :at 1499755354983
                        :type :expr
                        :at 1604307357153
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604307341230
                    :by |rJG4IHzWf
                :type :expr
                :at 1507461832154
                :by |root
            :type :expr
            :at 1499755354983
          |grab-info $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1604385605148) (:by |rJG4IHzWf)
              |j $ {} (:text |grab-info) (:type :leaf) (:at 1604385605148) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |data) (:type :leaf) (:at 1604385608112) (:by |rJG4IHzWf)
                :type :expr
                :at 1604385605148
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1604385618746) (:by |rJG4IHzWf)
                  |T $ {}
                    :data $ {}
                      |yT $ {}
                        :data $ {}
                          |T $ {} (:text |grouped-tasks) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |group-by) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                              |b $ {} (:text |tasks) (:type :leaf) (:at 1629371960892) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |task) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |.format) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |dayjs) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |or) (:type :leaf) (:at 1629372972728) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629372972728) (:text |:finished-time)
                                                  |j $ {} (:text |task) (:type :leaf) (:at 1629372979398) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1629372972728
                                                :by |rJG4IHzWf
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629372972728) (:text |:created-time)
                                                  |j $ {} (:text |task) (:type :leaf) (:at 1629372980952) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1629372972728
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1629372972728
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604385608885
                                        :by |rJG4IHzWf
                                      |r $ {} (:text "|\"YYYY-MM-DD") (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |yj $ {}
                        :data $ {}
                          |T $ {} (:text |grouped-notes) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |group-by) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                              |b $ {} (:text |notes) (:type :leaf) (:at 1629371964222) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |note) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |.format) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |dayjs) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:time) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                              |j $ {} (:text |note) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1604385608885
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604385608885
                                        :by |rJG4IHzWf
                                      |r $ {} (:text "|\"YYYY-MM-DD") (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |yr $ {}
                        :data $ {}
                          |T $ {} (:text |week-day) (:type :leaf) (:at 1604387020490) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.!day) (:type :leaf) (:at 1629371984529) (:by |rJG4IHzWf)
                              |j $ {} (:text |from-day) (:type :leaf) (:at 1604387031414) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604387021209
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604387019140
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |tasks) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1629372034565) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |merge) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |->) (:type :leaf) (:at 1629372606170) (:by |rJG4IHzWf)
                                      |j $ {} (:text |data) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |n $ {} (:text |:tasks) (:type :leaf) (:at 1629372612624) (:by |rJG4IHzWf)
                                      |r $ {} (:text |:working) (:type :leaf) (:at 1629372609300) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |D $ {} (:text |->) (:type :leaf) (:at 1629372616155) (:by |rJG4IHzWf)
                                      |L $ {} (:text |data) (:type :leaf) (:at 1629372616808) (:by |rJG4IHzWf)
                                      |P $ {} (:text |:tasks) (:type :leaf) (:at 1629372620565) (:by |rJG4IHzWf)
                                      |T $ {} (:text |:finished) (:type :leaf) (:at 1629372619089) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |.to-list) (:type :leaf) (:at 1629372037836) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629372035199
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1629372056877) (:by |rJG4IHzWf)
                                  |j $ {} (:text |last) (:type :leaf) (:at 1629372055123) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629372038456
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |notes) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1629372046005) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:notes) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |j $ {} (:text |data) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |.to-list) (:type :leaf) (:at 1629372048849) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629372046493
                                :by |rJG4IHzWf
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1629372051981) (:by |rJG4IHzWf)
                                  |j $ {} (:text |last) (:type :leaf) (:at 1629372052858) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1629372050650
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |all-time) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |filter) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |concat) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |map) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |r $ {} (:text |tasks) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1629372004019) (:by |rJG4IHzWf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |x) (:type :leaf) (:at 1629372004336) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1629372005017
                                            :by |rJG4IHzWf
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |or) (:type :leaf) (:at 1629372842905) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:finished-time) (:type :leaf) (:at 1629372847688) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |x) (:type :leaf) (:at 1629372847985) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1629372844168
                                                :by |rJG4IHzWf
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:created-time) (:type :leaf) (:at 1629372005838) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |x) (:type :leaf) (:at 1629372006852) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1629372006091
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1629372842218
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1629372003743
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |map) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |r $ {} (:text |notes) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |v $ {}
                                        :data $ {}
                                          |D $ {} (:text |fn) (:type :leaf) (:at 1629372011107) (:by |rJG4IHzWf)
                                          |T $ {}
                                            :data $ {}
                                              |D $ {} (:text |x) (:type :leaf) (:at 1629372013084) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1629372012042
                                            :by |rJG4IHzWf
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:time) (:type :leaf) (:at 1629372016403) (:by |rJG4IHzWf)
                                              |j $ {} (:text |x) (:type :leaf) (:at 1629372017732) (:by |rJG4IHzWf)
                                            :type :expr
                                            :at 1629372016940
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1629372009257
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                              |v $ {} (:text |some?) (:type :leaf) (:at 1629371976858) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |from-day) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |dayjs) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |j $ {} (:text |min) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |r $ {} (:text |all-time) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |to-day) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |dayjs) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |j $ {} (:text |max) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |r $ {} (:text |all-time) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |days) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |js/Math.ceil) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |/) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |-) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |j $ {} (:text |max) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                          |r $ {} (:text |all-time) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1604385608885
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |j $ {} (:text |min) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                          |r $ {} (:text |all-time) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                        :type :expr
                                        :at 1604385608885
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |*) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |j $ {} (:text |1000) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |r $ {} (:text |60) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |v $ {} (:text |60) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                      |x $ {} (:text |24) (:type :leaf) (:at 1604385608885) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604385608885
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604385608885
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604385608885
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385608885
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604385608885
                    :by |rJG4IHzWf
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1604385626378) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:days) (:type :leaf) (:at 1604385628866) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |+) (:type :leaf) (:at 1604387038469) (:by |rJG4IHzWf)
                              |T $ {} (:text |days) (:type :leaf) (:at 1604385631346) (:by |rJG4IHzWf)
                              |j $ {} (:text |week-day) (:type :leaf) (:at 1604387040976) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604387037893
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385627431
                        :by |rJG4IHzWf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:from-day) (:type :leaf) (:at 1604385681040) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |.!format) (:type :leaf) (:at 1629371987405) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |.!subtract) (:type :leaf) (:at 1629371989492) (:by |rJG4IHzWf)
                                  |T $ {} (:text |from-day) (:type :leaf) (:at 1604385684949) (:by |rJG4IHzWf)
                                  |j $ {} (:text |week-day) (:type :leaf) (:at 1604387108312) (:by |rJG4IHzWf)
                                  |r $ {} (:text "|\"days") (:type :leaf) (:at 1604387091262) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604387043851
                                :by |rJG4IHzWf
                              |j $ {} (:text "|\"YYYY-MM-DD") (:type :leaf) (:at 1604386181571) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604386176125
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604385678522
                        :by |rJG4IHzWf
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |:grouped-tasks) (:type :leaf) (:at 1604385660556) (:by |rJG4IHzWf)
                          |j $ {} (:text |grouped-tasks) (:type :leaf) (:at 1604385673500) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1604385631954
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |:grouped-notes) (:type :leaf) (:at 1604385665303) (:by |rJG4IHzWf)
                          |j $ {} (:text |grouped-notes) (:type :leaf) (:at 1604385670243) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1604385645550
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604385624325
                    :by |rJG4IHzWf
                :type :expr
                :at 1604385618150
                :by |rJG4IHzWf
            :type :expr
            :at 1604385605148
            :by |rJG4IHzWf
          |comp-viewer $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1604307603847) (:by |rJG4IHzWf)
              |j $ {} (:text |comp-viewer) (:type :leaf) (:at 1604307601775) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |data) (:type :leaf) (:at 1604307606168) (:by |rJG4IHzWf)
                :type :expr
                :at 1604307601775
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |ST $ {}
                    :data $ {}
                      |D $ {} (:text |list->) (:type :leaf) (:at 1604309390717) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1604308345200) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |:style) (:type :leaf) (:at 1604309410556) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |{}) (:type :leaf) (:at 1604309408256) (:by |rJG4IHzWf)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1604309396548) (:by |rJG4IHzWf)
                                      |j $ {} (:text "|\"4px 8px") (:type :leaf) (:at 1604309401739) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604309395535
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604309407544
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604309409139
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604308344887
                        :by |rJG4IHzWf
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |->) (:type :leaf) (:at 1629371932979) (:by |rJG4IHzWf)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |range) (:type :leaf) (:at 1604308336387) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |inc) (:type :leaf) (:at 1604308338937) (:by |rJG4IHzWf)
                                  |j $ {} (:text |days) (:type :leaf) (:at 1604308341326) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604308337951
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604308334189
                            :by |rJG4IHzWf
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |map) (:type :leaf) (:at 1604308355118) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1604308358406) (:by |rJG4IHzWf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |idx) (:type :leaf) (:at 1604308359647) (:by |rJG4IHzWf)
                                    :type :expr
                                    :at 1604308358817
                                    :by |rJG4IHzWf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |let) (:type :leaf) (:at 1604308362021) (:by |rJG4IHzWf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |the-day) (:type :leaf) (:at 1604308365294) (:by |rJG4IHzWf)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |.add) (:type :leaf) (:at 1604308375427) (:by |rJG4IHzWf)
                                                  |T $ {} (:text |from-day) (:type :leaf) (:at 1604308373738) (:by |rJG4IHzWf)
                                                  |j $ {} (:text |idx) (:type :leaf) (:at 1604308378773) (:by |rJG4IHzWf)
                                                  |r $ {} (:text "|\"days") (:type :leaf) (:at 1604308381925) (:by |rJG4IHzWf)
                                                :type :expr
                                                :at 1604308367012
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604308363895
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604308363687
                                        :by |rJG4IHzWf
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1604308393726) (:by |rJG4IHzWf)
                                          |j $ {} (:text |idx) (:type :leaf) (:at 1604308395333) (:by |rJG4IHzWf)
                                          |r $ {}
                                            :data $ {}
                                              |D $ {} (:text |let) (:type :leaf) (:at 1604308581634) (:by |rJG4IHzWf)
                                              |L $ {}
                                                :data $ {}
                                                  |T $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |day-format) (:type :leaf) (:at 1604308584725) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.format) (:type :leaf) (:at 1604308586566) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |the-day) (:type :leaf) (:at 1604308586566) (:by |rJG4IHzWf)
                                                          |r $ {} (:text "|\"YYYY-MM-DD") (:type :leaf) (:at 1604387176809) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604308586566
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604308582142
                                                    :by |rJG4IHzWf
                                                  |b $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |day-with-week) (:type :leaf) (:at 1604387189256) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |.format) (:type :leaf) (:at 1604387192522) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |the-day) (:type :leaf) (:at 1604387192522) (:by |rJG4IHzWf)
                                                          |r $ {} (:text "|\"YYYY-MM-DD ddd") (:type :leaf) (:at 1604387221607) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604387192522
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604387183583
                                                    :by |rJG4IHzWf
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |day-tasks) (:type :leaf) (:at 1604308665413) (:by |rJG4IHzWf)
                                                      |b $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |get) (:type :leaf) (:at 1604309354249) (:by |rJG4IHzWf)
                                                          |T $ {} (:text |grouped-tasks) (:type :leaf) (:at 1604309353039) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |day-format) (:type :leaf) (:at 1604309356582) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604309352553
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604308663477
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |day-notes) (:type :leaf) (:at 1604308679227) (:by |rJG4IHzWf)
                                                      |b $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |get) (:type :leaf) (:at 1604309361046) (:by |rJG4IHzWf)
                                                          |j $ {} (:text |grouped-notes) (:type :leaf) (:at 1604309363065) (:by |rJG4IHzWf)
                                                          |r $ {} (:text |day-format) (:type :leaf) (:at 1604309365296) (:by |rJG4IHzWf)
                                                        :type :expr
                                                        :at 1604309360605
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604308663477
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604308582025
                                                :by |rJG4IHzWf
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |div) (:type :leaf) (:at 1604308398076) (:by |rJG4IHzWf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604308398748) (:by |rJG4IHzWf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:style) (:type :leaf) (:at 1604309459379) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |D $ {} (:text |merge) (:type :leaf) (:at 1604386581464) (:by |rJG4IHzWf)
                                                              |T $ {} (:text |ui/column) (:type :leaf) (:at 1604386624461) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604386584281) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:display) (:type :leaf) (:at 1604386586012) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |:inline-flex) (:type :leaf) (:at 1604386589188) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1604386585068
                                                                    :by |rJG4IHzWf
                                                                  |r $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:width) (:type :leaf) (:at 1604386657745) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text "|\"14%") (:type :leaf) (:at 1604386612258) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1604386594004
                                                                    :by |rJG4IHzWf
                                                                  |v $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:padding-right) (:type :leaf) (:at 1604386641390) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text "|\"20px") (:type :leaf) (:at 1604386646047) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1604386636468
                                                                    :by |rJG4IHzWf
                                                                  |w $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:padding-left) (:type :leaf) (:at 1604386702054) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |8) (:type :leaf) (:at 1604386702540) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1604386700115
                                                                    :by |rJG4IHzWf
                                                                  |x $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:margin-bottom) (:type :leaf) (:at 1604386675910) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |16) (:type :leaf) (:at 1604386676286) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1604386671024
                                                                    :by |rJG4IHzWf
                                                                  |y $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:border-left) (:type :leaf) (:at 1604386682349) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |str) (:type :leaf) (:at 1604386684230) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1604386689713) (:by |rJG4IHzWf)
                                                                          |r $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1604386691266) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |0) (:type :leaf) (:at 1604386691629) (:by |rJG4IHzWf)
                                                                              |r $ {} (:text |0) (:type :leaf) (:at 1604386692010) (:by |rJG4IHzWf)
                                                                              |v $ {} (:text |80) (:type :leaf) (:at 1604386692473) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1604386690834
                                                                            :by |rJG4IHzWf
                                                                        :type :expr
                                                                        :at 1604386683135
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604386680004
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604386582302
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604386580507
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604309458632
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604308398415
                                                    :by |rJG4IHzWf
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |<>) (:type :leaf) (:at 1604308399534) (:by |rJG4IHzWf)
                                                      |j $ {} (:text |day-with-week) (:type :leaf) (:at 1604387201766) (:by |rJG4IHzWf)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604308863325) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:font-family) (:type :leaf) (:at 1604308869011) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1604308871362) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1604308863531
                                                            :by |rJG4IHzWf
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:color) (:type :leaf) (:at 1604308875884) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |hsl) (:type :leaf) (:at 1604308876425) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |0) (:type :leaf) (:at 1604308877020) (:by |rJG4IHzWf)
                                                                  |r $ {} (:text |0) (:type :leaf) (:at 1604308877362) (:by |rJG4IHzWf)
                                                                  |v $ {} (:text |70) (:type :leaf) (:at 1604386796739) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1604308876111
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604308872259
                                                            :by |rJG4IHzWf
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:font-size) (:type :leaf) (:at 1604309507568) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |14) (:type :leaf) (:at 1604386790102) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1604309502716
                                                            :by |rJG4IHzWf
                                                          |x $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:font-weight) (:type :leaf) (:at 1604309511269) (:by |rJG4IHzWf)
                                                              |j $ {} (:text |300) (:type :leaf) (:at 1604309512330) (:by |rJG4IHzWf)
                                                            :type :expr
                                                            :at 1604309509503
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604308862499
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604308399223
                                                    :by |rJG4IHzWf
                                                  |v $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |div) (:type :leaf) (:at 1604386330984) (:by |rJG4IHzWf)
                                                      |L $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |{}) (:type :leaf) (:at 1604386331550) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:style) (:type :leaf) (:at 1604386551191) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |D $ {} (:text |merge) (:type :leaf) (:at 1604386726307) (:by |rJG4IHzWf)
                                                                  |T $ {} (:text |ui/expand) (:type :leaf) (:at 1604386552396) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604386727415) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |:padding-left) (:type :leaf) (:at 1604386730089) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |8) (:type :leaf) (:at 1604386749914) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1604386728127
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604386727148
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604386724737
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604386549787
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604386332440
                                                        :by |rJG4IHzWf
                                                      |T $ {}
                                                        :data $ {}
                                                          |D $ {} (:text |if) (:type :leaf) (:at 1604308697207) (:by |rJG4IHzWf)
                                                          |L $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |not) (:type :leaf) (:at 1604308699969) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |empty?) (:type :leaf) (:at 1604308705652) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |day-tasks) (:type :leaf) (:at 1604308708016) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1604308700681
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604308699619
                                                            :by |rJG4IHzWf
                                                          |T $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |list->) (:type :leaf) (:at 1604308473250) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604308474099) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:style) (:type :leaf) (:at 1604308812475) (:by |rJG4IHzWf)
                                                                      |j $ {} (:text |style-list) (:type :leaf) (:at 1604386723019) (:by |rJG4IHzWf)
                                                                    :type :expr
                                                                    :at 1604308810868
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604308473745
                                                                :by |rJG4IHzWf
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |->) (:type :leaf) (:at 1629371943665) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |day-tasks) (:type :leaf) (:at 1604308675744) (:by |rJG4IHzWf)
                                                                  |v $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |map-indexed) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |fn) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                          |j $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |idx) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |task) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1604308661195
                                                                            :by |rJG4IHzWf
                                                                          |r $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |[]) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |idx) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                              |r $ {}
                                                                                :data $ {}
                                                                                  |T $ {} (:text |<>) (:type :leaf) (:at 1604308661195) (:by |rJG4IHzWf)
                                                                                  |j $ {}
                                                                                    :data $ {}
                                                                                      |T $ {} (:text |:text) (:type :leaf) (:at 1604308754457) (:by |rJG4IHzWf)
                                                                                      |j $ {} (:text |task) (:type :leaf) (:at 1604308756012) (:by |rJG4IHzWf)
                                                                                    :type :expr
                                                                                    :at 1604308747512
                                                                                    :by |rJG4IHzWf
                                                                                  |r $ {}
                                                                                    :data $ {}
                                                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604309190976) (:by |rJG4IHzWf)
                                                                                      |j $ {}
                                                                                        :data $ {}
                                                                                          |T $ {} (:text |:display) (:type :leaf) (:at 1604309199929) (:by |rJG4IHzWf)
                                                                                          |j $ {} (:text |:block) (:type :leaf) (:at 1604309224824) (:by |rJG4IHzWf)
                                                                                        :type :expr
                                                                                        :at 1604309197684
                                                                                        :by |rJG4IHzWf
                                                                                      |r $ {}
                                                                                        :data $ {}
                                                                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1604309529571) (:by |rJG4IHzWf)
                                                                                          |j $ {} (:text |13) (:type :leaf) (:at 1604309530120) (:by |rJG4IHzWf)
                                                                                        :type :expr
                                                                                        :at 1604309526328
                                                                                        :by |rJG4IHzWf
                                                                                    :type :expr
                                                                                    :at 1604309189728
                                                                                    :by |rJG4IHzWf
                                                                                :type :expr
                                                                                :at 1604308661195
                                                                                :by |rJG4IHzWf
                                                                            :type :expr
                                                                            :at 1604308661195
                                                                            :by |rJG4IHzWf
                                                                        :type :expr
                                                                        :at 1604308661195
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604308661195
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604308661195
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604308469291
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604308696684
                                                        :by |rJG4IHzWf
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |if) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |not) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |empty?) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |day-notes) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                :type :expr
                                                                :at 1604386335785
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604386335785
                                                            :by |rJG4IHzWf
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |list->) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |:style) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |merge) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                          |j $ {} (:text |style-list) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                        :type :expr
                                                                        :at 1604386335785
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604386335785
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604386335785
                                                                :by |rJG4IHzWf
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |->) (:type :leaf) (:at 1629371945662) (:by |rJG4IHzWf)
                                                                  |j $ {} (:text |day-notes) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                  |r $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |map-indexed) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                      |j $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |fn) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                          |j $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |idx) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |note) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                            :type :expr
                                                                            :at 1604386335785
                                                                            :by |rJG4IHzWf
                                                                          |r $ {}
                                                                            :data $ {}
                                                                              |T $ {} (:text |[]) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                              |j $ {} (:text |idx) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                              |r $ {}
                                                                                :data $ {}
                                                                                  |T $ {} (:text |<>) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                  |j $ {}
                                                                                    :data $ {}
                                                                                      |T $ {} (:text |:text) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                      |j $ {} (:text |note) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                    :type :expr
                                                                                    :at 1604386335785
                                                                                    :by |rJG4IHzWf
                                                                                  |r $ {}
                                                                                    :data $ {}
                                                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                      |r $ {}
                                                                                        :data $ {}
                                                                                          |T $ {} (:text |:color) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                          |j $ {}
                                                                                            :data $ {}
                                                                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                              |j $ {} (:text |0) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                              |r $ {} (:text |0) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                              |v $ {} (:text |70) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                            :type :expr
                                                                                            :at 1604386335785
                                                                                            :by |rJG4IHzWf
                                                                                        :type :expr
                                                                                        :at 1604386335785
                                                                                        :by |rJG4IHzWf
                                                                                      |v $ {}
                                                                                        :data $ {}
                                                                                          |T $ {} (:text |:font-size) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                          |j $ {} (:text |13) (:type :leaf) (:at 1604386335785) (:by |rJG4IHzWf)
                                                                                        :type :expr
                                                                                        :at 1604386335785
                                                                                        :by |rJG4IHzWf
                                                                                    :type :expr
                                                                                    :at 1604386335785
                                                                                    :by |rJG4IHzWf
                                                                                :type :expr
                                                                                :at 1604386335785
                                                                                :by |rJG4IHzWf
                                                                            :type :expr
                                                                            :at 1604386335785
                                                                            :by |rJG4IHzWf
                                                                        :type :expr
                                                                        :at 1604386335785
                                                                        :by |rJG4IHzWf
                                                                    :type :expr
                                                                    :at 1604386335785
                                                                    :by |rJG4IHzWf
                                                                :type :expr
                                                                :at 1604386335785
                                                                :by |rJG4IHzWf
                                                            :type :expr
                                                            :at 1604386335785
                                                            :by |rJG4IHzWf
                                                        :type :expr
                                                        :at 1604386335785
                                                        :by |rJG4IHzWf
                                                    :type :expr
                                                    :at 1604386330185
                                                    :by |rJG4IHzWf
                                                :type :expr
                                                :at 1604308395611
                                                :by |rJG4IHzWf
                                            :type :expr
                                            :at 1604308581033
                                            :by |rJG4IHzWf
                                        :type :expr
                                        :at 1604308393390
                                        :by |rJG4IHzWf
                                    :type :expr
                                    :at 1604308360271
                                    :by |rJG4IHzWf
                                :type :expr
                                :at 1604308358143
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604308351602
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604308346171
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604308343079
                    :by |rJG4IHzWf
                  |D $ {} (:text |let) (:type :leaf) (:at 1604385806532) (:by |rJG4IHzWf)
                  |L $ {}
                    :data $ {}
                      |yT $ {}
                        :data $ {}
                          |T $ {} (:text |days) (:type :leaf) (:at 1604308187479) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:days) (:type :leaf) (:at 1604385727752) (:by |rJG4IHzWf)
                              |j $ {} (:text |data) (:type :leaf) (:at 1604385728359) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604385726341
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604308186870
                        :by |rJG4IHzWf
                      |yj $ {}
                        :data $ {}
                          |T $ {} (:text |grouped-tasks) (:type :leaf) (:at 1604309298658) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:grouped-tasks) (:type :leaf) (:at 1604385714863) (:by |rJG4IHzWf)
                              |j $ {} (:text |data) (:type :leaf) (:at 1604385717449) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604385712810
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604309292594
                        :by |rJG4IHzWf
                      |yr $ {}
                        :data $ {}
                          |T $ {} (:text |grouped-notes) (:type :leaf) (:at 1604309332613) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:grouped-notes) (:type :leaf) (:at 1604385723422) (:by |rJG4IHzWf)
                              |j $ {} (:text |data) (:type :leaf) (:at 1604385724301) (:by |rJG4IHzWf)
                            :type :expr
                            :at 1604385719344
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604309327819
                        :by |rJG4IHzWf
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |from-day) (:type :leaf) (:at 1604308154833) (:by |rJG4IHzWf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |dayjs) (:type :leaf) (:at 1604386188145) (:by |rJG4IHzWf)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:from-day) (:type :leaf) (:at 1604385731827) (:by |rJG4IHzWf)
                                  |j $ {} (:text |data) (:type :leaf) (:at 1604385732698) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1604385730325
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1604386184805
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1604308148860
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1604307764492
                    :by |rJG4IHzWf
                :type :expr
                :at 1604307763433
                :by |rJG4IHzWf
            :type :expr
            :at 1604307601775
            :by |rJG4IHzWf
          |style-list $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1604308822133) (:by |rJG4IHzWf)
              |j $ {} (:text |style-list) (:type :leaf) (:at 1604308822133) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1604308823460) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:margin-bottom) (:type :leaf) (:at 1604309166857) (:by |rJG4IHzWf)
                      |j $ {} (:text |4) (:type :leaf) (:at 1604387278457) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1604309163996
                    :by |rJG4IHzWf
                :type :expr
                :at 1604308822133
                :by |rJG4IHzWf
            :type :expr
            :at 1604308822133
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1519699088805) (:by |root)
                    |j $ {} (:text |respo-md.comp.md) (:type :leaf) (:at 1519699092590) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1519699093410) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1519699093922) (:by |root)
                        |j $ {} (:text |comp-md) (:type :leaf) (:at 1519699096732) (:by |root)
                      :type :expr
                      :at 1519699093683
                      :by |root
                  :type :expr
                  :at 1519699088529
                  :by |root
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1521954061645) (:by |root)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788377809) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521954064826) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1521954065219) (:by |root)
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521954067604) (:by |root)
                      :type :expr
                      :at 1521954065004
                      :by |root
                  :type :expr
                  :at 1521954061310
                  :by |root
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1604308111886) (:by |rJG4IHzWf)
                    |j $ {} (:text "|\"dayjs") (:type :leaf) (:at 1604308114568) (:by |rJG4IHzWf)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1629371701553) (:by |rJG4IHzWf)
                    |v $ {} (:text |dayjs) (:type :leaf) (:at 1604308116243) (:by |rJG4IHzWf)
                  :type :expr
                  :at 1604308111586
                  :by |rJG4IHzWf
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1629371525058) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |r $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516527080962) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540958704705) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1508946162679) (:by |root)
                    |v $ {}
                      :data $ {}
                        |xT $ {} (:text |textarea) (:type :leaf) (:at 1512359490531) (:by |rJG4IHzWf)
                        |yT $ {} (:text |input) (:type :leaf) (:at 1552321107012) (:by |rJG4IHzWf)
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1499755354983) (:by |root)
                        |l $ {} (:text |defeffect) (:type :leaf) (:at 1573355389740) (:by |rJG4IHzWf)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1499755354983) (:by |root)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584780606618) (:by |rJG4IHzWf)
                        |u $ {} (:text |list->) (:type :leaf) (:at 1604308419977) (:by |rJG4IHzWf)
                        |v $ {} (:text |div) (:type :leaf) (:at 1499755354983) (:by |root)
                        |x $ {} (:text |button) (:type :leaf) (:at 1499755354983) (:by |root)
                        |y $ {} (:text |span) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |x $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |=<) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507461846175) (:by |root)
                    |j $ {} (:text |reel.comp.reel) (:type :leaf) (:at 1507461855480) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507461856264) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507461856706) (:by |root)
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507461858342) (:by |root)
                      :type :expr
                      :at 1507461856484
                      :by |root
                  :type :expr
                  :at 1507461845717
                  :by |root
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.schema $ {}
        :defs $ {}
          |store $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1499755354983) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584781007054) (:by |rJG4IHzWf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584781007486) (:by |rJG4IHzWf)
                                :type :expr
                                :at 1584781007287
                                :by |rJG4IHzWf
                            :type :expr
                            :at 1584781004285
                            :by |rJG4IHzWf
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
          :type :expr
          :at 1499755354983
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |store) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text |data) (:type :leaf) (:at 1584874633844) (:by |rJG4IHzWf)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1519489491135) (:by |root)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1519489492110) (:by |root)
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1629371550576) (:by |rJG4IHzWf)
                  |j $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |l $ {}
                    :data $ {}
                      |D $ {} (:text |do) (:type :leaf) (:at 1629371552840) (:by |rJG4IHzWf)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1629371555413) (:by |rJG4IHzWf)
                          |j $ {} (:text "|\"Unknown op:") (:type :leaf) (:at 1629371559234) (:by |rJG4IHzWf)
                          |r $ {} (:text |op) (:type :leaf) (:at 1629371559578) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629371553198
                        :by |rJG4IHzWf
                      |T $ {} (:text |store) (:type :leaf) (:at 1629371551794) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629371552215
                    :by |rJG4IHzWf
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1507399855618) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |update-states) (:type :leaf) (:at 1584874626558) (:by |rJG4IHzWf)
                          |j $ {} (:text |store) (:type :leaf) (:at 1584874628374) (:by |rJG4IHzWf)
                          |r $ {} (:text |data) (:type :leaf) (:at 1584874632002) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874625235
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1507399852251
                    :by |root
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157657108) (:by |root)
                      |j $ {} (:text |data) (:type :leaf) (:at 1584874637339) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1518157547521
                    :by |root
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1584874616480) (:by |rJG4IHzWf)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1584874616895) (:by |rJG4IHzWf)
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1584874620034) (:by |rJG4IHzWf)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1584874621356) (:by |rJG4IHzWf)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1584874621745) (:by |rJG4IHzWf)
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874623096) (:by |rJG4IHzWf)
                      :type :expr
                      :at 1584874621524
                      :by |rJG4IHzWf
                  :type :expr
                  :at 1584874616720
                  :by |rJG4IHzWf
              :type :expr
              :at 1584874614885
              :by |rJG4IHzWf
          :type :expr
          :at 1499755354983
      |app.main $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1629371654949) (:by |rJG4IHzWf)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1507400119272) (:by |root)
                    :type :expr
                    :at 1499755354983
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1629371659098) (:by |rJG4IHzWf)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |persist-storage! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1533919517365) (:by |rJG4IHzWf)
              |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |?) (:type :leaf) (:at 1629371590703) (:by |rJG4IHzWf)
                  |j $ {} (:text |e) (:type :leaf) (:at 1629371591169) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |.setItem) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956703087) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1629371597198) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:store) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                          |j $ {} (:text |@*reel) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1533919515671
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1533919515671
                    :by |rJG4IHzWf
                :type :expr
                :at 1533919515671
                :by |rJG4IHzWf
            :type :expr
            :at 1533919515671
            :by |rJG4IHzWf
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.querySelector) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1499755354983) (:by |root)
                  |r $ {} (:text ||.app) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1629371676551) (:by |rJG4IHzWf)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |->) (:type :leaf) (:at 1507399778895) (:by |root)
                  |T $ {} (:text |reel-schema/reel) (:type :leaf) (:at 1507399776350) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:base) (:type :leaf) (:at 1507401405076) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |assoc) (:type :leaf) (:at 1507399781682) (:by |root)
                      |j $ {} (:text |:store) (:type :leaf) (:at 1507399793097) (:by |root)
                      |r $ {} (:text |schema/store) (:type :leaf) (:at 1507399787471) (:by |root)
                    :type :expr
                    :at 1507399779656
                    :by |root
                :type :expr
                :at 1507399777531
                :by |root
            :type :expr
            :at 1499755354983
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |listen-devtools!) (:type :leaf) (:at 1507461739167) (:by |root)
                  |j $ {} (:text ||a) (:type :leaf) (:at 1507461691211) (:by |root)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1507461693919) (:by |root)
                :type :expr
                :at 1507461684494
                :by |root
              |yL $ {}
                :data $ {}
                  |T $ {} (:text |.addEventListener) (:type :leaf) (:at 1518157450281) (:by |root)
                  |j $ {} (:text |js/window) (:type :leaf) (:at 1518157453505) (:by |root)
                  |r $ {} (:text ||beforeunload) (:type :leaf) (:at 1518157458163) (:by |root)
                  |v $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919515671) (:by |rJG4IHzWf)
                :type :expr
                :at 1518157357847
                :by |root
              |yN $ {}
                :data $ {}
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544956062322) (:by |rJG4IHzWf)
                  |b $ {} (:text |60) (:type :leaf) (:at 1544956066171) (:by |rJG4IHzWf)
                  |j $ {} (:text |persist-storage!) (:type :leaf) (:at 1533919535136) (:by |rJG4IHzWf)
                :type :expr
                :at 1533919529874
                :by |rJG4IHzWf
              |yP $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1518157495438) (:by |root)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1518157496930) (:by |root)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.getItem) (:type :leaf) (:at 1518157501316) (:by |root)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1518157504638) (:by |root)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956709260) (:by |rJG4IHzWf)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788293499) (:by |root)
                                :type :expr
                                :at 1518157506313
                                :by |root
                            :type :expr
                            :at 1518157497615
                            :by |root
                        :type :expr
                        :at 1518157495826
                        :by |root
                    :type :expr
                    :at 1518157495644
                    :by |root
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |when) (:type :leaf) (:at 1533919640958) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1518157515786) (:by |root)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1518157516878) (:by |root)
                        :type :expr
                        :at 1518157515117
                        :by |root
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1518157523818) (:by |root)
                          |j $ {} (:text |:hydrate-storage) (:type :leaf) (:at 1518157669936) (:by |root)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1629371602309) (:by |rJG4IHzWf)
                              |j $ {} (:text |raw) (:type :leaf) (:at 1518157531240) (:by |root)
                            :type :expr
                            :at 1518157527987
                            :by |root
                        :type :expr
                        :at 1518157521635
                        :by |root
                    :type :expr
                    :at 1518157514334
                    :by |root
                :type :expr
                :at 1518157492640
                :by |root
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text "||App started.") (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |main!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874434638) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874509800) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874440190) (:by |rJG4IHzWf)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874446442) (:by |rJG4IHzWf)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874449063) (:by |rJG4IHzWf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874452316) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544874440404
                    :by |rJG4IHzWf
                :type :expr
                :at 1544874433785
                :by |rJG4IHzWf
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |y $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399915531) (:by |root)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1499755354983) (:by |root)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1499755354983) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |r) (:type :leaf) (:at 1629372700923) (:by |rJG4IHzWf)
                          |j $ {} (:text |p) (:type :leaf) (:at 1629372701636) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1499755354983
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1499755354983) (:by |root)
                        :type :expr
                        :at 1499755354983
                    :type :expr
                    :at 1499755354983
                :type :expr
                :at 1499755354983
            :type :expr
            :at 1499755354983
          |snippets $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf)
              |j $ {} (:text |snippets) (:type :leaf) (:at 1551977434239) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1551977434239
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1551977458023) (:by |rJG4IHzWf)
                  |j $ {} (:text |config/cdn?) (:type :leaf) (:at 1551977477010) (:by |rJG4IHzWf)
                :type :expr
                :at 1551977444630
                :by |rJG4IHzWf
            :type :expr
            :at 1551977434239
            :by |rJG4IHzWf
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1499755354983) (:by |root)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1499755354983) (:by |root)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1499755354983) (:by |root)
                :type :expr
                :at 1499755354983
              |t $ {}
                :data $ {}
                  |D $ {} (:text |when) (:type :leaf) (:at 1547437687530) (:by |root)
                  |L $ {}
                    :data $ {}
                      |D $ {} (:text |and) (:type :leaf) (:at 1584874662518) (:by |rJG4IHzWf)
                      |T $ {} (:text |config/dev?) (:type :leaf) (:at 1547437691006) (:by |root)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1584874664551) (:by |rJG4IHzWf)
                          |j $ {} (:text |op) (:type :leaf) (:at 1584874665829) (:by |rJG4IHzWf)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1584874671745) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1584874663522
                        :by |rJG4IHzWf
                    :type :expr
                    :at 1584874661674
                    :by |rJG4IHzWf
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |println) (:type :leaf) (:at 1518156276516) (:by |root)
                      |r $ {} (:text "|\"Dispatch:") (:type :leaf) (:at 1547437698992) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1518156280471) (:by |root)
                    :type :expr
                    :at 1518156274050
                    :by |root
                :type :expr
                :at 1547437686766
                :by |root
              |v $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1499755354983) (:by |root)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507399899641) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reel-updater) (:type :leaf) (:at 1507399887573) (:by |root)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507399888500) (:by |root)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507399891576) (:by |root)
                      |v $ {} (:text |op) (:type :leaf) (:at 1507399892687) (:by |root)
                      |x $ {} (:text |op-data) (:type :leaf) (:at 1507399894594) (:by |root)
                    :type :expr
                    :at 1507399884621
                    :by |root
                :type :expr
                :at 1584780634192
                :by |rJG4IHzWf
            :type :expr
            :at 1499755354983
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1629371612043) (:by |rJG4IHzWf)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1629371612043) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1629371612043
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |if)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |nil?)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |build-errors)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |do) (:type :leaf) (:at 1629371612043) (:by |rJG4IHzWf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1629371612043) (:by |rJG4IHzWf)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1629371612043) (:by |rJG4IHzWf)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1629371612043) (:by |rJG4IHzWf)
                        :type :expr
                        :at 1629371612043
                        :by |rJG4IHzWf
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |clear-cache!)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |add-watch)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |*reel)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |:changes)
                          |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |fn)
                              |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |reel)
                                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |prev)
                              |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |render-app!)
                      |x $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |reset!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |*reel)
                          |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |refresh-reel)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |@*reel)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |schema/store)
                              |v $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |updater)
                      |y $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |hud!)
                          |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text "|\"ok~")
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text "|\"Ok")
                    :type :expr
                    :at 1629371612043
                    :by |rJG4IHzWf
                  |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371612043)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |hud!)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text "|\"error")
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371612043) (:text |build-errors)
                :type :expr
                :at 1629371612043
                :by |rJG4IHzWf
            :type :expr
            :at 1629371612043
            :by |rJG4IHzWf
          |repeat! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1629371583760) (:by |rJG4IHzWf)
              |j $ {} (:text |repeat!) (:type :leaf) (:at 1629371583760) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |duration)
                  |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |cb)
                :type :expr
                :at 1629371583760
                :by |rJG4IHzWf
              |v $ {}
                :data $ {}
                  |T $ {} (:text |js/setTimeout) (:type :leaf) (:at 1629371583760) (:by |rJG4IHzWf)
                  |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371583760)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |fn)
                      |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371583760)
                        :data $ {}
                      |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371583760)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |cb)
                      |v $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371583760)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |repeat!)
                          |j $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371583760)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |*)
                              |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |1000)
                              |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |duration)
                          |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |cb)
                  |r $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371583760)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |*)
                      |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |1000)
                      |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371583760) (:text |duration)
                :type :expr
                :at 1629371583760
                :by |rJG4IHzWf
            :type :expr
            :at 1629371583760
            :by |rJG4IHzWf
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1499755354983
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1499755354983) (:by |root)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1499755354983) (:by |root)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1629371626706) (:by |rJG4IHzWf)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1629371626706) (:by |rJG4IHzWf)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371626706) (:text |build-errors)
                  :type :expr
                  :at 1629371626706
                  :by |rJG4IHzWf
                |yyj $ {} (:type :expr) (:by |rJG4IHzWf) (:at 1629371626706)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371626706) (:text "|\"bottom-tip")
                    |j $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371626706) (:text |:default)
                    |r $ {} (:type :leaf) (:by |rJG4IHzWf) (:at 1629371626706) (:text |hud!)
                |yT $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1499755354983) (:by |root)
                  :type :expr
                  :at 1499755354983
                |yj $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399674614) (:by |root)
                    |j $ {} (:text |reel.util) (:type :leaf) (:at 1507399678694) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399680625) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399681518) (:by |root)
                        |j $ {} (:text |listen-devtools!) (:type :leaf) (:at 1518156292092) (:by |root)
                      :type :expr
                      :at 1507399680857
                      :by |root
                  :type :expr
                  :at 1507399674125
                  :by |root
                |yr $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399684313) (:by |root)
                    |j $ {} (:text |reel.core) (:type :leaf) (:at 1507399687162) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507399688098) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1507399688928) (:by |root)
                        |j $ {} (:text |reel-updater) (:type :leaf) (:at 1507399691010) (:by |root)
                        |q $ {} (:text |refresh-reel) (:type :leaf) (:at 1518156288482) (:by |root)
                      :type :expr
                      :at 1507399688322
                      :by |root
                  :type :expr
                  :at 1507399683930
                  :by |root
                |yv $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1507399715600) (:by |root)
                    |j $ {} (:text |reel.schema) (:type :leaf) (:at 1507399717674) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507399755750) (:by |root)
                    |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507399757678) (:by |root)
                  :type :expr
                  :at 1507399715229
                  :by |root
                |yy $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1527788303612) (:by |root)
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788304925) (:by |root)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788306048) (:by |root)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788306884) (:by |root)
                  :type :expr
                  :at 1527788302920
                  :by |root
                |T $ {} (:text |:require) (:type :leaf) (:at 1499755354983) (:by |root)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |render!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1499755354983) (:by |root)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |v $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1499755354983) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
                |y $ {}
                  :data $ {}
                    |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1508556737455) (:by |root)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1499755354983) (:by |root)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |[]) (:type :leaf) (:at 1499755354983) (:by |root)
                        |j $ {} (:text |updater) (:type :leaf) (:at 1499755354983) (:by |root)
                      :type :expr
                      :at 1499755354983
                  :type :expr
                  :at 1499755354983
              :type :expr
              :at 1499755354983
          :type :expr
          :at 1499755354983
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1544873875614) (:by |rJG4IHzWf)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |=) (:type :leaf) (:at 1629371684207) (:by |rJG4IHzWf)
                  |j $ {} (:text "|\"dev") (:type :leaf) (:at 1629371687056) (:by |rJG4IHzWf)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |get-env) (:type :leaf) (:at 1629371691025) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"mode") (:type :leaf) (:at 1629371694603) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1629371689211
                    :by |rJG4IHzWf
                :type :expr
                :at 1629371683826
                :by |rJG4IHzWf
            :type :expr
            :at 1544873875614
            :by |rJG4IHzWf
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1518157345496) (:by |root)
              |j $ {} (:text |site) (:type :leaf) (:at 1518157327696) (:by |root)
              |r $ {}
                :data $ {}
                  |yT $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527868458476) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/memkits.png") (:type :leaf) (:at 1604307223315) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527868457696
                    :by |root
                  |yf $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544956719115) (:by |rJG4IHzWf)
                      |j $ {} (:text "|\"timegrass-viewer") (:type :leaf) (:at 1604307205573) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1544956719115
                    :by |rJG4IHzWf
                  |T $ {} (:text |{}) (:type :leaf) (:at 1518157346643) (:by |root)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:dev-ui) (:type :leaf) (:at 1527526864597) (:by |root)
                      |x $ {} (:text "|\"http://localhost:8100/main-fonts.css") (:type :leaf) (:at 1556700447561) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527526861413
                    :by |root
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:release-ui) (:type :leaf) (:at 1527526868617) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/favored-fonts/main-fonts.css") (:type :leaf) (:at 1556700443008) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527526865931
                    :by |root
                  |w $ {}
                    :data $ {}
                      |T $ {} (:text |:cdn-url) (:type :leaf) (:at 1528008962775) (:by |root)
                      |j $ {} (:text "|\"http://cdn.tiye.me/timegrass-viewer/") (:type :leaf) (:at 1604307215709) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1528008960614
                    :by |root
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527868457305) (:by |root)
                      |j $ {} (:text "|\"Timegrass Viewer") (:type :leaf) (:at 1604307201699) (:by |rJG4IHzWf)
                    :type :expr
                    :at 1527868456422
                    :by |root
                :type :expr
                :at 1518157327696
                :by |root
            :type :expr
            :at 1545933382603
            :by |root
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788237503
          :by |root
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788237503) (:by |root)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788237503) (:by |root)
          :type :expr
          :at 1527788237503
          :by |root
  :users $ {}
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |rJG4IHzWf $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |rJG4IHzWf) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
