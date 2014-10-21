(require 'eproject)
(require 'eproject-extras)

(define-project-type cc (generic)
  (look-for "configure")
  :relevant-files ("\\.cc$" "\\.hpp$" "\\.c$" "\\.h$"))
