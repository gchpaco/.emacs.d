(eval-when-compile
  (require 'use-package))

(use-package dired-x
  :functions dired-x-bind-find-file
  :config (dired-x-bind-find-file))

(use-package dired-toggle-sudo :ensure t)
(use-package dired+ :ensure t)
(use-package dired-filter :ensure t)
(use-package dired-hacks-utils :ensure t)
(use-package dired-imenu :ensure t)
(use-package direx :ensure t)
(use-package runner :disabled t :ensure t)
