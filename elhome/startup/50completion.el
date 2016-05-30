(use-package company
  :diminish company-mode
  :commands (global-company-mode)
  :init (add-hook 'after-init-hook 'global-company-mode))
