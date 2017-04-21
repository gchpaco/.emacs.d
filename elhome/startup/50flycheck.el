(eval-when-compile
  (require 'use-package)
  (require 'rx))

(use-package flycheck
  :diminish flycheck-mode
  :config (progn (add-hook 'flycheck-mode-hook 'my-flycheck-checkdoc-disabler)
                 (add-hook 'prog-mode-hook 'flycheck-mode))
  :ensure t)
(use-package flycheck-google-cpplint :ensure t :disabled t)
(use-package flycheck-pyflakes :ensure t)

;; Goal: disable checkdoc when in .emacs.d/init.el and
;; .emacs.d/elhome/startup/*.

(defvar my-disabled-filenames
  (rx bos (or "~/.emacs.d/init.el"
             "~/.emacs"
             (: "~/.emacs.d/elhome/settings/" (* nonl) ".el")
             (: "~/.emacs.d/elhome/startup/" (* nonl) ".el"))
      eos)
  "Regexp to disable `checkdoc' processing for matching filenames.")

(defun my-flycheck-checkdoc-disabler ()
  "Disable elisp checkdoc when in startup files."
  (unless (null (string-match my-disabled-filenames (or buffer-file-truename
                                                       "")))
    (add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc)))
