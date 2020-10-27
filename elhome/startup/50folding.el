(eval-when-compile
  (require 'use-package))

(use-package origami
  :straight t
  :config
  (add-hook 'prog-mode-hook 'origami-mode))

(use-package yafolding
  :straight t
  :disabled t
  :config
  (add-hook 'prog-mode-hook 'yafolding-mode))
