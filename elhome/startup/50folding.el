(eval-when-compile
  (require 'use-package))

(use-package yafolding
  :straight t
  :config
  (add-hook 'prog-mode-hook 'yafolding-mode))
