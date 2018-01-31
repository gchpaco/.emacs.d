(eval-when-compile
  (require 'use-package))

(use-package eproject
  :straight t
  :functions look-for
  :diminish eproject-mode)
(use-package eproject-extras)
