(eval-when-compile
  (require 'use-package))

(use-package js2-mode
  :mode "\\.js\\'"
  :straight t
  :init
  (setq-default js-indent-level 2
                js2-basic-offset 2
                js2-strict-trailing-comma-warning nil
                js2-use-font-lock-faces t))
(use-package js2-refactor
  :diminish js2-refactor-mode
  :commands js2-refactor-mode
  :straight t
  :init (progn (add-hook 'js2-mode-hook 'js2-refactor-mode))
  :config (js2r-add-keybindings-with-prefix "C-c C-m"))
(use-package json-mode
  :mode "\\.json\\'"
  :straight t)
(use-package jst
  :straight t)
(use-package tern
  :diminish tern-mode
  :commands tern-mode
  :straight t
  :init (add-hook 'js2-mode-hook 'tern-mode))
(use-package flymake-json :straight t)
