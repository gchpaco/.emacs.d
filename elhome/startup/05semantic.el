(eval-when-compile
  (require 'use-package))

(use-package semantic
  :diminish semantic-mode
  :init (setq-default semantic-load-turn-useful-things-on t)
  :config (progn (global-semanticdb-minor-mode 1)
                 (global-semantic-idle-scheduler-mode 1)
                 (global-semantic-stickyfunc-mode 1)
                 (semantic-mode 1))
  :straight t)

(use-package speedbar
  :bind ("C-c B" . speedbar-get-focus))
