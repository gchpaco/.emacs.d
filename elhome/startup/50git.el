(eval-when-compile
  (require 'use-package))

(use-package magit
  :straight t
  :bind (("C-c C-g b" . magit-blame)
         ("C-c C-g l" . magit-log)
         ("C-c C-g p" . magit-pull)
         ("C-c C-g s" . magit-status)
         ("C-c s" . magit-status)))
(define-hook-helper git-rebase-mode ()
  (remove-hook 'git-rebase-mode-hook 'delete-trailing-whitespace))
(use-package magit-annex :straight t)
(use-package magit-filenotify :straight t)
(use-package magit-gitflow :straight t)
(use-package magit-wip
  :disabled t
  :straight t
  :diminish (magit-wip-before-change-mode magit-wip-after-apply-mode
                                          magit-wip-after-save-local-mode))

(add-to-list 'completion-ignored-extensions ".git/")

(use-package magithub :straight t)
(use-package magit-lfs :straight t)
(use-package orgit :straight t)
(use-package magit-todos :straight t)
(use-package forge :straight t)
