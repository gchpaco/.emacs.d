(eval-when-compile
  (require 'use-package))

(use-package flymake
  :straight t
  :bind (([f3] . flymake-popup-current-error-menu)
         ([f4] . flymake-goto-next-error)))

(use-package flymake-css :straight t)
(use-package flymake-csslint :straight t :disabled t)
(use-package flymake-easy :straight t)
(use-package flymake-lua :straight t)
(use-package flymake-python-pyflakes :straight t)
(use-package flymake-ruby :straight t)
(use-package flymake-shell :straight t)
(use-package flymake-yaml :straight t)

(use-package ggtags
  :diminish ggtags-mode
  :straight t
  :config
  (bind-keys :map ggtags-mode-map
             ("C-c g s" . ggtags-find-other-symbol)
             ("C-c g h" . ggtags-view-tag-history)
             ("C-c g r" . ggtags-find-reference)
             ("C-c g c" . ggtags-create-tags)
             ("C-c g u" . ggtags-update-tags)
             ("M-," . pop-tag-mark))
  :commands (ggtags-mode ggtags-build-imenu-index ggtags-eldoc-function))

(use-package codesearch :straight t)

(use-package smartparens
  :straight t
  :bind ("C-c k" . sp-unwrap-sexp)
  :init
  (require 'smartparens-config)
  (add-hook 'prog-mode-hook 'smartparens-mode))

(use-package fic-mode
  :straight t
  :init (add-hook 'prog-mode-hook 'fic-mode))

(use-package corral
  :straight t
  :bind (("M-9" . corral-parentheses-backward)
         ("M-0" . corral-parentheses-forward)
         ("M-[" . corral-brackets-backward)
         ("M-]" . corral-brackets-forward)
         ("M-\"" . corral-double-quotes-backward)))

(use-package srefactor :straight t)

(use-package literal-string :straight t)

(use-package kubernetes :straight t)

(use-package protobuf-mode :straight t
  :mode "\\.proto\\'"
  :config
  (setq-mode-local protobuf-mode
                   c-basic-offset 4))

(use-package string-inflection
  :straight t
  :bind ("C-c i" . string-inflection-cycle))

(use-package rc-mode
  :straight t
  :mode "\\.rc\\'")

(use-package yaml-mode :straight t)

(use-package gitignore-mode
  :mode "\\.gitignore\\'"
  :straight t)

(use-package graphviz-dot-mode
  :mode "\\.dot\\'"
  :straight t)

(use-package csv-mode
  :mode "\\.csv\\'"
  :straight t)

(use-package markdown-mode :straight t)
(use-package markdown-mode+ :straight t)
(use-package markdown-mac-link :straight t :disabled t)

(use-package docker :straight t)
(use-package docker-tramp :straight t)

(use-package emr
  :diminish emr-c-mode
  :straight t
  :bind (:map prog-mode-map
              ("M-<return>" . emr-show-refactor-menu))
  :config (add-hook 'prog-mode-hook 'emr-initialize))

(use-package pretty-mode
  :straight t
  :config (global-pretty-mode 1))

;(use-package syslog-mode :straight t)

(use-package restclient :straight t)

(use-package hl-indent
  :diminish hl-indent-mode
  :commands hl-indent-mode
  :straight t
  :init (add-hook 'prog-mode-hook 'hl-indent-mode))

(use-package highlight-parentheses
  :diminish highlight-parentheses-mode
  :commands highlight-parentheses-mode
  :straight t
  :init (add-hook 'prog-mode-hook 'highlight-parentheses-mode))

(use-package rainbow-delimiters
  :diminish rainbow-delimiters-mode
  :commands rainbow-delimiters-mode
  :straight t
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package unicode-troll-stopper
  :diminish unicode-troll-stopper-mode
  :commands unicode-troll-stopper-mode
  :straight t
  :init (add-hook 'prog-mode-hook 'unicode-troll-stopper-mode))
