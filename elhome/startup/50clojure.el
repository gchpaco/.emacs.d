(eval-when-compile
  (require 'use-package))

(use-package clojure-mode :straight t
  :init (progn (add-hook 'clojure-mode-hook #'paredit-mode)))
(use-package cider :straight t)
