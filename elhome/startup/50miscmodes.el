(use-package electric-pair-mode
  :commands electric-pair-mode
  :init (add-hook 'prog-mode-hook 'electric-pair-mode))

(use-package electric-indent-mode
  :commands electric-indent-mode
  :init (add-hook 'prog-mode-hook 'electric-indent-mode))

(use-package ispell
  :diminish ispell-minor-mode)

(use-package form-feed
  :diminish form-feed-mode
  :commands form-feed-mode
  :ensure t
  :init (add-hook 'prog-mode-hook 'form-feed-mode))

(use-package all :ensure t)

(use-package beginend :ensure t)

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

(use-package pretty-mode
  :ensure t
  :config (global-pretty-mode 1))

(use-package restclient :ensure t)
(use-package syslog-mode :ensure t)

(use-package toggle-quotes
  :ensure t
  :bind "C-\"")

(use-package uuidgen :ensure t)

(use-package wgrep :ensure t)
(use-package wgrep-helm :ensure t)
(use-package wsd-mode :ensure t)

(use-package emr
  :diminish emr-c-mode
  :ensure t
  :bind (:map prog-mode-map
              ("M-RET" . emr-show-refactor-menu))
  :config (add-hook 'prog-mode-hook 'emr-initialize))

(use-package dired-x
  :config (dired-x-bind-find-file))

(use-package dired+ :ensure t)
(use-package dired-filter :ensure t)
(use-package dired-hacks-utils :ensure t)
(use-package dired-imenu :ensure t)
(use-package direx :ensure t)
(use-package make-it-so :ensure t)
(use-package runner :ensure t)

(use-package markdown-mode :ensure t)
(use-package markdown-mode+ :ensure t)
(use-package markdown-mac-link :ensure t)

(use-package docker :ensure t)
(use-package docker-tramp :ensure t)

(use-package spaceline-config
  :ensure spaceline
  :init (setq-default spaceline-workspace-numbers-unicode t)
  :config
  (spaceline-emacs-theme)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (spaceline-toggle-hud-off))

(use-package bury-successful-compilation
  :ensure t
  :config (bury-successful-compilation 1))

(use-package battery
  :config (display-battery-mode 1))

(use-package mac-local
  :if (eq window-system 'ns))

(use-package osx-browse
  :if (eq window-system 'ns)
  :ensure t)

(use-package osx-clipboard
  :if (eq window-system 'ns)
  :ensure t)

(use-package osx-lib
  :if (eq window-system 'ns)
  :ensure t)

(use-package osx-trash
  :if (eq window-system 'ns)
  :ensure t)
(use-package reveal-in-osx-finder
  :if (eq window-system 'ns)
  :ensure t)

(use-package golden-ratio
  :disabled t
  :ensure t
  :config (golden-ratio-mode 1))

(use-package popwin
  :ensure t
  :config (popwin-mode 1))

(use-package eyebrowse
  :ensure t
  :config (eyebrowse-mode 1))

(use-package multicolumn
  :ensure t
  :config (multicolumn-global-mode 1))

(use-package smex
  :ensure t
  :config (add-hook 'after-init-hook #'smex-initialize))

(use-package time
  :config (add-hook 'after-init-hook #'display-time))

(use-package sgml-mode)
(use-package info-look)
(use-package uniquify)
(use-package zap-up-to-char
  :bind "C-M-z")
(use-package multiple-cursors
  :bind
  ("C-S-c C-S-c" . mc/edit-lines)
  ("C->" . mc/mark-next-like-this)
  ("C-<" . mc/mark-previous-like-this)
  ("C-c C-<" . mc/mark-all-like-this))
(use-package expand-region
  :bind ("C-'" . er/expand-region))
(use-package shelldoc :ensure t)
(use-package unify-opening :ensure t)
(use-package e2wm
  :ensure t
  :bind ("M-+" . e2wm:start-management))
(use-package window-layout :ensure t)
(use-package e2wm-bookmark :ensure t)
(use-package e2wm-term :ensure t)
(use-package elwm
  :ensure t
  :bind
  ("C-c <down>" . elwm-shift-down)
  ("C-c <up>" . elwm-shift-up)
  ("C-c <left>" . elwm-shift-left)
  ("C-c <right>" . elwm-shift-right)
  ("C-c <next>" . elwm-swap-down)
  ("C-c <prior>" . elwm-swap-up)
  ("C-c w 2" . elwm-split-window))
(use-package alfred-org-capture)

(use-package browse-url
  :bind ("C-c u" . browse-url-at-point))

(use-package eshell
  :bind ("C-c a". eshell))

(use-package sqlup-mode :ensure t)

(use-package cssh :ensure t)
(use-package ssh :ensure t)
(use-package ssh-config-mode :ensure t)

(use-package tidy :ensure t)

(use-package unbound :ensure t)

(use-package dash :ensure t)
(use-package dash-at-point
  :bind "C-c d"
  :ensure t)
(use-package counsel-dash :ensure t)

(use-package ffap
  :bind "C-c f")

(use-package find-file
  :bind ("C-c o" . ff-find-other-file))

(use-package avy
  :ensure t
  :init (setq-default avy-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s))
  :bind (("C-c j" . avy-goto-word-or-subword-1)
         ("C-c z" . avy-goto-char-2)))

(use-package woman
  :bind "C-c m")

(use-package ace-window
  :ensure t
  :bind "M-p"
  :init (setq-default aw-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s)))

(use-package popwin
  :ensure t
  :bind ("C-z" . popwin:keymap))

(use-package list-unicode-display :ensure t)
(use-package math-symbol-lists :ensure t)
(use-package solarized-theme :ensure t :disabled t)
(use-package plan9-theme :ensure t)

(use-package csv-mode
  :mode "\\.csv\\'"
  :ensure t)

(use-package editorconfig :ensure t)

(use-package epkg :ensure t)

(use-package git-annex :ensure t)

(use-package gitignore-mode
  :mode "\\.gitignore\\'"
  :ensure t)

(use-package graphviz-dot-mode
  :mode "\\.dot\\'"
  :ensure t)

(use-package package-safe-delete :ensure t)

(use-package window-purpose :ensure t)

(use-package yaml-mode :ensure t)
