(eval-when-compile
  (require 'use-package))

(use-package flymake
  :ensure t
  :bind (([f3] . flymake-popup-current-error-menu)
         ([f4] . flymake-goto-next-error)))

(use-package flymake-css :ensure t)
(use-package flymake-csslint :ensure t :disabled t)
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

(use-package srefactor :ensure t)

(use-package literal-string :ensure t)

(use-package kubernetes :ensure t)

(use-package protobuf-mode :ensure t
  :mode "\\.proto\\'"
  :config
  (setq-mode-local protobuf-mode
                   c-basic-offset 4))

(use-package string-inflection
  :ensure t
  :bind ("C-c i" . string-inflection-cycle))

(use-package rc-mode
  :ensure t
  :mode "\\.rc\\'")

(use-package yaml-mode :ensure t)

(use-package gitignore-mode
  :mode "\\.gitignore\\'"
  :ensure t)

(use-package graphviz-dot-mode
  :mode "\\.dot\\'"
  :ensure t)

(use-package csv-mode
  :mode "\\.csv\\'"
  :ensure t)

(use-package markdown-mode :ensure t)
(use-package markdown-mode+ :ensure t)
(use-package markdown-mac-link :ensure t :disabled t)

(use-package docker :ensure t)
(use-package docker-tramp :ensure t)

(use-package emr
  :diminish emr-c-mode
  :ensure t
  :bind (:map prog-mode-map
              ("M-<return>" . emr-show-refactor-menu))
  :config (add-hook 'prog-mode-hook 'emr-initialize))

(use-package pretty-mode
  :ensure t
  :config (global-pretty-mode 1))

(use-package syslog-mode :ensure t)

(use-package restclient :ensure t)

(use-package hl-indent
  :diminish hl-indent-mode
  :commands hl-indent-mode
  :ensure t
  :init (add-hook 'prog-mode-hook 'hl-indent-mode))

(use-package highlight-parentheses
  :diminish highlight-parentheses-mode
  :commands highlight-parentheses-mode
  :ensure t
  :init (add-hook 'prog-mode-hook 'highlight-parentheses-mode))

(use-package rainbow-delimiters
  :diminish rainbow-delimiters-mode
  :commands rainbow-delimiters-mode
  :ensure t
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))
