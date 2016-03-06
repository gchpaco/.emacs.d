;; Goal: disable checkdoc when in .emacs.d/init.el and
;; .emacs.d/elhome/startup/*.

(require 'rx)
(require 'flycheck)

(defvar my-disabled-filenames
  (rx bos (or "~/.emacs.d/init.el"
             "~/.emacs"
             (: "~/.emacs.d/elhome/settings/" (* nonl) ".el")
             (: "~/.emacs.d/elhome/startup/" (* nonl) ".el"))
      eos)
  "Regexp to disable `checkdoc' processing for matching filenames.")

(defun my-flycheck-checkdoc-disabler ()
  (unless (null (string-match my-disabled-filenames buffer-file-truename))
    (add-to-list 'flycheck-disabled-checkers 'emacs-lisp-checkdoc)))

(add-hook 'flycheck-mode-hook 'my-flycheck-checkdoc-disabler)
