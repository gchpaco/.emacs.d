(eval-when-compile
  (require 'use-package))

(use-package vertico :straight t
  :init (vertico-mode))

(use-package savehist :straight t :init (savehist-mode))

(use-package orderless :straight t
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))
