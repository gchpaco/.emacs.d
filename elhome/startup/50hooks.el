(eval-when-compile
  (require 'use-package))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-flyspell)
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(add-hook 'lisp-mode-hook 'flyspell-prog-mode)
(add-hook 'scheme-mode-hook 'flyspell-prog-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)
(define-hook-helper dired-mode ()
  (add-to-list 'dired-omit-extensions ".d")
  (add-to-list 'dired-omit-extensions ".sty")
  (add-to-list 'dired-omit-extensions ".rel")
  (add-to-list 'dired-omit-extensions ".pdfsync")
  (add-to-list 'dired-omit-extensions ".log"))

(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'text-mode-hook (lambda () (footnote-mode +1)))
(define-hook-helper puppet-mode ()
  (setq imenu-generic-expression
        '(("*Classes*" "^class\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)
          ("*Definitions*" "^define\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)
          ("*Sites*" "^site\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)
          ("*Nodes*" "^node\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)))
  (local-set-key (kbd "C-c z") 'align))
(define-hook-helper dired-mode ()
  (local-set-key (kbd "C-c C-r")
                 'wdired-change-to-wdired-mode))
(create-hook-helper no-space-parens ()
  :hooks (ruby-mode-hook
          python-mode-hook
          c-mode-common-hook)
  (make-local-variable 'parens-require-spaces)
  (setq parens-require-spaces nil))
(define-hook-helper org-mode ()
  (electric-indent-mode -1))

(use-package abbrev
  :diminish abbrev-mode
  :init (add-hook 'progmodes-hooks 'abbrev-mode))

(defun my-dired-browser-find-file ()
  "Dired function to view a file in a web browser"
  (interactive)
  (browse-url (browse-url-file-url (dired-get-filename))))
(define-hook-helper dired-mode ()
  (define-key dired-mode-map "b" 'my-dired-browser-find-file))
