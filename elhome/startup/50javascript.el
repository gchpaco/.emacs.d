(use-package js2-mode
  :mode "\\.js\\'"
  :ensure t
  :init
  (setq-default js-indent-level 2
                js2-basic-offset 2
                js2-strict-trailing-comma-warning nil
                js2-use-font-lock-faces t))
(use-package js2-refactor
  :diminish js2-refactor-mode
  :commands js2-refactor-mode
  :ensure t
  :init (progn (add-hook 'js2-mode-hook 'js2-refactor-mode))
  :config (js2r-add-keybindings-with-prefix "C-c C-m"))
(use-package tern
  :diminish tern-mode
  :commands tern-mode
  :ensure t
  :init (add-hook 'js2-mode-hook 'tern-mode))
(use-package tern-auto-complete
  :ensure t
  :config
  (eval-after-load 'tern
    '(tern-ac-setup)))
;(use-package flymake-jslint :ensure t)
(use-package flymake-json :ensure t)
