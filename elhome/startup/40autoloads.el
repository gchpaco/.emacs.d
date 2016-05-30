(eval-when-compile
  (require 'use-package))

(use-package jw-visit-source
  :commands (jw-visit-source)
  :bind ([f2] . jw-visit-source))
