(eval-when-compile
  (require 'use-package))

(use-package magit
  :ensure t
  :bind (("C-c C-g b" . magit-blame)
         ("C-c C-g l" . magit-log)
         ("C-c C-g p" . magit-pull)
         ("C-c C-g s" . magit-status)
         ("C-c s" . magit-status)))
(use-package magit-annex :ensure t)
(use-package magit-filenotify :ensure t)
(use-package magit-gitflow :ensure t)
(use-package magit-wip
  :disabled t
  :ensure t
  :diminish (magit-wip-before-change-mode magit-wip-after-apply-mode
                                          magit-wip-after-save-local-mode))

(add-to-list 'completion-ignored-extensions ".git/")

(use-package magithub :ensure t)
(use-package magit-lfs :ensure t)
