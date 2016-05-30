(eval-when-compile
  (require 'use-package))

(use-package redshank
  :commands (asdf-mode)
  :mode ("\\.asdf?\\'" . asdf-mode))

(use-package paredit
  :diminish paredit-mode
  :ensure t
  :bind ("C-c k" . delete-pair)
  :config
  (bind-keys :map paredit-mode-map
             ([prior] . paredit-forward-slurp-sexp)
             ([next] . paredit-backward-slurp-sexp)
             ([home] . paredit-backward-barf-sexp)
             ([end] . paredit-forward-barf-sexp)))

(use-package cider :ensure t)
(use-package cider-decompile :ensure t)
(use-package cider-profile :ensure t)
(use-package clj-refactor :ensure t)
(use-package clojure-cheatsheet :ensure t)
(use-package clojure-env :ensure t)
(use-package clojure-mode :ensure t)
(use-package clojure-mode-extra-font-locking :ensure t)
(use-package clojure-mode-snippets :ensure t :disabled t)
(use-package common-lisp-snippets :ensure t)
(use-package macrostep :ensure t)
