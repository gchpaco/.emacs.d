(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(require 'use-package)
(straight-use-package 'elhome)
(require 'elhome)
(straight-use-package 'org)
(straight-use-package 'python-mode)
(require 'python-mode)
(straight-use-package 'hook-helpers)
(use-package hook-helpers)

(straight-use-package 'diminish)

(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

(setq inhibit-startup-screen t)

(defvar package--builtin-versions
  ;; Mostly populated by loaddefs.el via autoload-builtin-package-versions.
  (purecopy `((emacs . ,(version-to-list emacs-version))))
  "Alist giving the version of each versioned builtin package.
I.e. each element of the list is of the form (NAME . VERSION) where
NAME is the package name as a symbol, and VERSION is its version
as a list.")

(straight-use-package 'elhome)
(require 'elhome)

(elhome-init)

(let ((secrets-file (locate-user-emacs-file "secrets.el" ".emacs.secrets.el")))
 (when (file-exists-p secrets-file)
   (load secrets-file)))

(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'with-state 'scheme-indent-function 2)
(put 'scroll-left 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; Efficiency hack on find file.
(remove-hook 'find-file-hooks 'vc-find-file-hook)

(setq-default magit-last-seen-setup-instructions "1.4.0")

;;; init.el ends here
