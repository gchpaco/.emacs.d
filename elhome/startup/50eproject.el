(use-package eproject
  :diminish eproject-mode
  :config (define-project-type cc (generic)
            (look-for "configure")
            :relevant-files ("\\.cc$" "\\.hpp$" "\\.c$" "\\.h$")))
(use-package eproject-extras)
