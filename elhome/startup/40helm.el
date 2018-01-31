(eval-when-compile
  (require 'use-package))

(use-package helm
  :diminish helm-mode
  :bind (("M-x" . helm-M-x)
         ("C-c M-x" . execute-extended-command)
         ("M-y" . helm-show-kill-ring)
         ("C-M-y" . kill-ring-search)
         ("C-x b" . helm-mini)
         ("C-x C-f" . helm-find-files)
         ("C-h SPC" . helm-all-mark-rings))
  :config (progn (setq-default helm-command-prefix-key "C-c h")
                 (use-package helm-config)
                 (add-to-list 'helm-sources-using-default-as-input
                              'helm-source-man-pages)
                 (helm-mode 1)
                 (bind-keys :map helm-map
                            ([tab] . helm-execute-persistent-action)
                            ("C-i" . helm-execute-persistent-action)
                            ("C-z" . helm-select-action))
                 (bind-key "C-c h o" #'helm-occur))
  :straight t)

(use-package shell)
(use-package eshell)
(use-package helm-eshell
  :commands (helm-eshell-history helm-comint-input-ring helm-minibuffer-history)
  :bind (:map eshell-mode-map
         ("C-c C-l" . helm-eshell-history))
  :bind (:map shell-mode-map
         ("C-c C-l" . helm-comint-input-ring)
         ("C-c C-l" . helm-minibuffer-history)))
(use-package helm-ack :straight t)
(use-package helm-ag :straight t)
(use-package helm-bibtex :straight t)
(use-package helm-c-yasnippet :straight t)
(use-package helm-company :straight t)
(use-package helm-git-files :straight t)
(use-package helm-go-package :straight t)
(use-package helm-google :straight t)
(use-package helm-gtags :straight t)
(use-package helm-helm-commands :straight t)
(use-package helm-itunes :disabled t :straight t)
(use-package helm-ls-git :straight t)
(use-package helm-open-github :disabled t :straight t)
(use-package helm-org-rifle :straight t)
(use-package helm-orgcard :straight t)
(use-package helm-package :straight t)
(use-package helm-projectile :straight t)
(use-package helm-pydoc :disabled t :straight t)
(use-package helm-unicode :straight t)
