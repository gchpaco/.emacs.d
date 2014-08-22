(require 'ede)

(ede-cpp-root-project "rethinkdb"
                      :file "/Users/graham/wd/rethinkdb/configure"
                      :include-path '("/external/gtest_1.6.0/include"
                                      "/external/re2_20140111"
                                      "/external/v8_3.22.24.17/include"
                                      "/src")
                      :system-include-path '("/usr/include"))
