(eval-when-compile
  (require 'use-package))

(use-package form-feed
  :diminish form-feed-mode
  :commands form-feed-mode
  :ensure t
  :init (add-hook 'prog-mode-hook 'form-feed-mode))

(use-package all :ensure t)

(use-package beginend :ensure t)

(use-package toggle-quotes
  :ensure t
  :bind "C-\"")

(use-package uuidgen :ensure t)

(use-package wgrep :ensure t)
(use-package wgrep-helm :ensure t)
(use-package wsd-mode :ensure t)

(use-package make-it-so :ensure t)

(use-package spaceline-config
  :ensure spaceline
  :functions (spaceline-emacs-theme
              spaceline-toggle-buffer-encoding-abbrev-off
              spaceline-toggle-hud-off)
  :init (setq-default spaceline-workspace-numbers-unicode t)
  :config
  (spaceline-emacs-theme)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (spaceline-toggle-hud-off))

(use-package bury-successful-compilation
  :ensure t
  :config (bury-successful-compilation 1))

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
(use-package grab-mac-link
  :if (eq window-system 'ns)
  :ensure t)

(use-package golden-ratio
  :disabled t
  :ensure t
  :config (golden-ratio-mode 1))

(use-package popwin
  :ensure t
  :functions popwin-mode
  :bind ("C-z" . popwin:keymap)
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

(use-package shelldoc :ensure t)
(use-package unify-opening :ensure t)
(use-package alfred-org-capture
  :if (eq window-system 'ns))

(use-package sqlup-mode :ensure t)

(use-package cssh :ensure t)
(use-package ssh :ensure t)
(use-package ssh-config-mode :ensure t :disabled t)

(use-package tidy :ensure t)

(use-package unbound :ensure t)

(use-package dash-at-point
  :bind "C-c d"
  :ensure t)
(use-package counsel-dash :ensure t)

(use-package avy
  :ensure t
  :init (setq-default avy-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s))
  :bind (("C-c j" . avy-goto-word-or-subword-1)
         ("C-c z" . avy-goto-char-2)))

(use-package ace-window
  :ensure t
  :bind "M-p"
  :init (setq-default aw-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s)))

(use-package list-unicode-display :ensure t)
(use-package math-symbol-lists :ensure t)
(use-package solarized-theme :ensure t :disabled t)

(defun force-plan9-theme (frame)
  (enable-theme 'plan9))

(use-package plan9-theme
  :ensure t
  :config (add-hook 'after-make-frame-functions 'force-plan9-theme))

(use-package editorconfig :ensure t)

(use-package epkg :ensure t)

(use-package git-annex :ensure t)

(use-package package-safe-delete :ensure t)

(use-package window-purpose :ensure t)

(use-package inversion :ensure t)

(defun djcb-snip (b e summ)
  "Remove selected lines, and replace them with `[snip:SUMM (n lines)]'."
  (interactive "r\nsSummary:")
  (let ((n (count-lines b e)))
    (delete-region b e)
    (insert (format "[snip%s (%d line%s)]"
              (if (= 0 (length summ)) "" (concat ": " summ))
              n
              (if (= 1 n) "" "s")))))

(use-package winner
  :ensure nil
  :if (fboundp 'winner-mode)
  :init (winner-mode 1))

(use-package blackboard-bold-mode
  :ensure t)

(use-package fix-muscle-memory
  :disabled t
  :init
  (setq fix-muscle-memory-use-emoji t)
  :config
  (fix-muscle-memory-load-problem-words 'foo
                                        '(("teh" . "the")
                                          ("comptuer" . "computer")
                                          ("destory" . "destroy")
                                          ("occured" . "occurred")
                                          ("heira" . "hiera")))
  (add-hook 'text-mode-hook 'abbrev-mode)
  (add-hook 'prog-mode-hook 'abbrev-mode)

  (turn-on-fix-muscle-memory-on-extended-command))

(use-package with-editor
  :ensure t
  :config
  (add-hook 'shell-mode-hook 'with-editor-export-editor)
  (add-hook 'shell-mode-hook 'with-editor-export-git-editor)
  (add-hook 'term-exec-hook 'with-editor-export-editor)
  (add-hook 'term-exec-hook 'with-editor-export-git-editor)
  (add-hook 'eshell-mode-hook 'with-editor-export-editor)
  (add-hook 'eshell-mode-hook 'with-editor-export-git-editor))

(use-package ibuffer-git
  :ensure t)

(use-package ibuffer-projectile
  :ensure t)

(add-hook 'before-save-hook 'copyright-update)

(use-package ztree :ensure t)

(use-package anything-tramp
  :ensure t)

(use-package ini-mode :ensure t)

(use-package terraform-mode :ensure t)
