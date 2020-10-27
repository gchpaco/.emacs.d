(eval-when-compile
  (require 'use-package))

(use-package redshank
  :commands (asdf-mode)
  :mode ("\\.asdf?\\'" . asdf-mode))

(use-package paredit
  :disabled t
  :diminish paredit-mode
  :straight t
  :bind ("C-c k" . delete-pair)
  :config
  (bind-keys :map paredit-mode-map
             ([prior] . paredit-forward-slurp-sexp)
             ([next] . paredit-backward-slurp-sexp)
             ([home] . paredit-backward-barf-sexp)
             ([end] . paredit-forward-barf-sexp)))

(use-package cider :straight t)
(use-package cider-decompile :straight t)
;(use-package cider-profile :straight t)
(use-package clj-refactor :straight t :disabled t)
(use-package clojure-cheatsheet :straight t :disabled t)
(use-package clojure-env :straight t :disabled t)
(use-package clojure-mode :straight t)
(use-package clojure-mode-extra-font-locking :straight t)
(use-package clojure-mode-snippets :straight t :disabled t)
(use-package common-lisp-snippets :straight t)
(use-package macrostep :straight t)
(use-package nameless
  :straight t
  :commands (nameless-mode)
  :config (add-hook 'emacs-lisp-mode-hook #'nameless-mode))
