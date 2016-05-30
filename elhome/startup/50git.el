(use-package magit
  :ensure t
  :bind ("C-c s" . magit-status))
(use-package magit-annex :ensure t)
(use-package magit-filenotify :ensure t)
(use-package magit-gitflow :ensure t)
(use-package magit-wip
  :disabled t
  :ensure t
  :diminish (magit-wip-before-change-mode magit-wip-after-apply-mode
                                          magit-wip-after-save-local-mode))

(add-to-list 'completion-ignored-extensions ".git/")
