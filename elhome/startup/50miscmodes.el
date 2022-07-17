(eval-when-compile
  (require 'use-package))

(use-package which-key :straight t
  :init (which-key-mode t))

(use-package form-feed
  :diminish form-feed-mode
  :commands form-feed-mode
  :straight t
  :init (add-hook 'prog-mode-hook 'form-feed-mode))

(use-package all :straight t)

(use-package beginend :straight t)

(use-package toggle-quotes
  :straight t
  :bind ("C-\"" . toggle-quotes))

(use-package uuidgen :straight t)

(use-package wgrep :straight t)
(use-package wgrep-helm :straight t)
(use-package wsd-mode :straight t)

(use-package make-it-so :straight t)

(use-package spaceline-config
  :straight spaceline
  :functions (spaceline-emacs-theme
              spaceline-toggle-buffer-encoding-abbrev-off
              spaceline-toggle-hud-off)
  :init (setq-default spaceline-workspace-numbers-unicode t)
  :config
  (spaceline-emacs-theme)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (spaceline-toggle-hud-off))

(use-package bury-successful-compilation
  :straight t
  :config (bury-successful-compilation 1))

(use-package mac-local
  :if (eq window-system 'ns))

(use-package osx-browse
  :if (eq window-system 'ns)
  :straight t)

(use-package osx-clipboard
  :if (eq window-system 'ns)
  :straight t)

(use-package osx-lib
  :if (eq window-system 'ns)
  :straight t)

(use-package osx-trash
  :if (eq window-system 'ns)
  :straight t)
(use-package reveal-in-osx-finder
  :if (eq window-system 'ns)
  :straight t)
(use-package grab-mac-link
  :if (eq window-system 'ns)
  :straight t)

(use-package golden-ratio
  :disabled t
  :straight t
  :config (golden-ratio-mode 1))

(use-package popwin
  :straight t
  :functions popwin-mode
  :bind ("C-z" . popwin:keymap)
  :config (popwin-mode 1))

(use-package multicolumn
  :straight t
  :config (multicolumn-global-mode 1))

(use-package smex
  :straight t
  :config (add-hook 'after-init-hook #'smex-initialize))

(use-package time
  :config (add-hook 'after-init-hook #'display-time))

(use-package unify-opening :straight t)
(use-package alfred-org-capture
  :if (eq window-system 'ns))

(use-package sqlup-mode :straight t)

(use-package cssh :straight t)
(use-package ssh :straight t)
(use-package ssh-config-mode :straight t :disabled t)

(use-package tidy :straight t)

(use-package unbound :straight t)

(case system-type
  (darwin (use-package dash-at-point
            :bind ("C-c d" . dash-at-point)
            :straight t)
          (use-package counsel-dash :straight t))
  (otherwise (use-package zeal-at-point
               :bind ("C-c d" . zeal-at-point)
               :straight t)))

(use-package avy
  :straight t
  :init (setq-default avy-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s))
  :bind (("C-c j" . avy-goto-word-or-subword-1)
         ("C-c z" . avy-goto-char-2)))

(use-package ace-window
  :straight t
  :bind ("M-p" . ace-window)
  :init (setq-default aw-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s)))

(use-package list-unicode-display :straight t)
(use-package math-symbol-lists :straight t)

(defadvice load-theme (before clear-previous-themes activate)
  "Clear existing theme settings instead of layering them"
  (mapc #'disable-theme custom-enabled-themes))

(use-package solarized-theme :straight t :disabled t)
(use-package plan9-theme :straight t)
(use-package parchment-theme :straight t)

(use-package editorconfig :straight t)

(use-package epkg :straight t)

(use-package git-annex :straight t)

(use-package package-safe-delete :straight t)

(use-package window-purpose :straight t)

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
  :straight nil
  :if (fboundp 'winner-mode)
  :init (winner-mode 1))

(use-package blackboard-bold-mode
  :straight t)

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
  :straight t
  :config
  (add-hook 'shell-mode-hook 'with-editor-export-editor)
  (add-hook 'shell-mode-hook 'with-editor-export-git-editor)
  (add-hook 'term-exec-hook 'with-editor-export-editor)
  (add-hook 'term-exec-hook 'with-editor-export-git-editor)
  (add-hook 'eshell-mode-hook 'with-editor-export-editor)
  (add-hook 'eshell-mode-hook 'with-editor-export-git-editor))

(use-package ibuffer-git
  :straight t)

(use-package ibuffer-projectile
  :straight t)

(add-hook 'before-save-hook 'copyright-update)

(use-package ztree :straight t)

(use-package anything-tramp
  :straight t)

(use-package ini-mode :straight t)

(use-package terraform-mode :straight t
  :config
  (add-hook 'terraform-mode-hook 'terraform-format-on-save-mode))
(use-package company-terraform :straight t)

(use-package password-store :straight t)

(use-package scratch :straight t)
(use-package scratch-ext :straight t)

(use-package nxml-mode)

(use-package prodigy :straight t)
