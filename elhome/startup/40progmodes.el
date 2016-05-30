(use-package flymake
  :ensure t
  :bind (([f3] . flymake-display-err-menu-for-current-line)
         ([f4] . flymake-goto-next-error)))

(use-package flymake-css :ensure t)
(use-package flymake-csslint :ensure t)
(use-package flymake-easy :ensure t)
(use-package flymake-lua :ensure t)
(use-package flymake-python-pyflakes :ensure t)
(use-package flymake-ruby :ensure t)
(use-package flymake-shell :ensure t)
(use-package flymake-yaml :ensure t)

(use-package ggtags
  :diminish ggtags-mode
  :ensure t
  :config
  (bind-keys :map ggtags-mode-map
             ("C-c g s" . ggtags-find-other-symbol)
             ("C-c g h" . ggtags-view-tag-history)
             ("C-c g r" . ggtags-find-reference)
             ("C-c g c" . ggtags-create-tags)
             ("C-c g u" . ggtags-update-tags)
             ("M-," . pop-tag-mark))
  :commands (ggtags-mode ggtags-build-imenu-index ggtags-eldoc-function))

(use-package codesearch :ensure t)

(use-package paredit-everywhere
  :ensure t
  :init (add-hook 'prog-mode-hook 'paredit-everywhere-mode))

(use-package fic-mode
  :ensure t
  :init (add-hook 'prog-mode-hook 'fic-mode))

(use-package corral
  :ensure t
  :bind (("M-9" . corral-parentheses-backward)
         ("M-0" . corral-parentheses-forward)
         ("M-[" . corral-brackets-backward)
         ("M-]" . corral-brackets-forward)
         ("M-\"" . corral-double-quotes-backward)))
