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
(defun gch/dired-hook ()
  (add-to-list 'dired-omit-extensions ".d")
  (add-to-list 'dired-omit-extensions ".sty")
  (add-to-list 'dired-omit-extensions ".rel")
  (add-to-list 'dired-omit-extensions ".pdfsync")
  (add-to-list 'dired-omit-extensions ".log"))
(add-hook 'dired-mode-hook 'gch/dired-hook)

(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'lisp-mode-hook 'smartparens-mode)
(add-hook 'scheme-mode-hook 'smartparens-mode)
(add-hook 'text-mode-hook 'footnote-mode)
(defun gch/puppet-mode ()
  (setq imenu-generic-expression
        '(("*Classes*" "^class\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)
          ("*Definitions*" "^define\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)
          ("*Sites*" "^site\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)
          ("*Nodes*" "^node\\s-*\\([:a-zA-Z0-9_-]+\\)\\s-*" 1)))
  (local-set-key (kbd "C-c z") 'align))
(add-hook 'puppet-mode-hook 'gch/puppet-mode)
(defun gch/dired-wdired ()
  (local-set-key (kbd "C-c C-r")
                 'wdired-change-to-wdired-mode))
(add-hook 'dired-mode-hook 'gch/dired-wdired)

(defun gch/no-space-parens ()
  (make-local-variable 'parens-require-spaces)
  (setq parens-require-spaces nil))
(add-hook 'ruby-mode-hook #'gch/no-space-parens)
(add-hook 'python-mode-hook #'gch/no-space-parens)
(add-hook 'c-mode-common-hook #'gch/no-space-parens)

(defun gch/org-hook ()
  (electric-indent-mode -1))
(add-hook 'org-mode-hook 'gch/org-hook)

(use-package abbrev
  :diminish abbrev-mode
  :init (add-hook 'progmodes-hooks 'abbrev-mode))

(defun my-dired-browser-find-file ()
  "Dired function to view a file in a web browser"
  (interactive)
  (browse-url (browse-url-file-url (dired-get-filename))))
(defun gch/dired-webbrowser ()
  (define-key dired-mode-map "b" 'my-dired-browser-find-file))
(add-hook 'dired-mode-hook 'gch/dired-webbrowser)
