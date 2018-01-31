(eval-when-compile
  (require 'use-package))

(use-package company
  :diminish company-mode
  :straight t
  :commands (global-company-mode)
  :init (add-hook 'after-init-hook 'global-company-mode))

(use-package company-terraform
  :straight t
  :init (company-terraform-init))

(use-package company-quickhelp
  :straight t
  :init (company-quickhelp-mode 1))
