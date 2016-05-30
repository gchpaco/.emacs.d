(eval-when-compile
  (require 'use-package))

(use-package eproject
  :functions look-for
  :diminish eproject-mode
  :config (define-project-type cc (generic)
            (look-for "configure")
            :relevant-files ("\\.cc$" "\\.hpp$" "\\.c$" "\\.h$")))
(use-package eproject-extras)
