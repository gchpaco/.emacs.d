(autoload 'igc-mode "igc-mode" nil t)
(autoload 'jw-visit-source "jw-visit-source"
  "If the current line contains text like '../src/program.rb:34', visit that file in the other window and position point on that line." t)

(autoload 'ack-and-a-half-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file "ack-and-a-half" nil t)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)
