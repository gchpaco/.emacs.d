(eval-when-compile
  (require 'use-package))

(use-package dired-x
  :functions dired-x-bind-find-file
  :config (dired-x-bind-find-file))

(use-package dired-toggle-sudo :straight t)
(use-package dired+ :straight t)
(use-package dired-hacks-utils :straight t)
(use-package dired-filter :straight t)
(use-package dired-imenu :straight t)
(use-package direx :straight t)
(use-package runner :disabled t :straight t)
