(eval-when-compile
  (require 'use-package))

(use-package ivy-rich :straight t)
(add-hook 'after-init-hook 'ivy-rich-mode)
(use-package company :straight t
  :config (setq company-idle-delay 0
                company-minimum-prefix-length 1
                company-tooltip-align-annotations t))
(add-hook 'after-init-hook 'global-company-mode)
(use-package project)

(use-package eglot :straight t :disabled t)
