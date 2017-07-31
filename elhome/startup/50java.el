(eval-when-compile
  (require 'use-package))

(use-package emacs-eclim
  :ensure t
  :disabled t
  :init
  (setq-default eclim-eclipse-dirs '("/Applications/Eclipse.app/Contents/Eclipse/")
                eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclimd")
  (add-hook 'after-init-hook 'global-eclim-mode))

(use-package eclimd
  :disabled t)

(use-package company-emacs-eclim
  :functions company-emacs-eclim-setup
  :config (company-emacs-eclim-setup)
  :disabled t)

(use-package meghanada :ensure t
  :init
  (add-hook 'java-mode-hook 'meghanada-mode))
