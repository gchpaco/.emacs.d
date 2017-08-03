(eval-when-compile
  (require 'use-package))

(use-package yafolding
  :ensure t
  :config
  (add-hook 'prog-mode-hook 'yafolding-mode))
