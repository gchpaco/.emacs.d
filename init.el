;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(require 'cl)

(add-to-list 'exec-path "/opt/local/bin")
(add-to-list 'exec-path (expand-file-name "~/bin"))
(add-to-list 'exec-path "/usr/local/texlive/2011/bin/universal-darwin")
(add-to-list 'exec-path "/Applications/Racket v5.0.1/bin")

(add-to-list 'load-path "~/.emacs.d")

(require 'environment-local)

(set-language-environment "UTF-8")

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (end-of-buffer)
    (eval-print-last-sexp)))

;; local sources
(setq el-get-sources
      '(
        ;(:name magit
        ;       :after (lambda () (global-set-key (kbd "C-c g") 'magit-status))
        ;       :type elpa)
        (:name org-magit :type elpa)
        (:name feature-mode :type elpa)
        (:name find-file-in-project :type elpa)
        (:name fold-dwim :type elpa)
        (:name fold-dwim-org :type elpa)))

(setq my-packages
      (append
       '(el-get apache-mode auctex autopair cisco-router-mode 
                clang-completion-mode clevercss coffee-mode color-theme cedet
                color-theme-solarized crontab-mode dig dired-toggle-sudo
                doc-mode edit-server eredis escreen feature-mode filladapt
                find-file-in-project fold-dwim fold-dwim-org full-ack
                gist go-mode haml-mode highlight-parentheses js2-mode magit
                magithub mmm-mode nxhtml org-mode org-buffers org-fstree paredit
                puppet-mode quack rails-el rinari rspec-mode rst-mode
                ruby-block sass-mode smex ssh-config sudo-save tidy
                wikipedia-mode yaml-mode yasnippet)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

(require 'solarized-light-theme)
(require 'solarized-dark-theme)

(setq custom-file "~/.emacs.d/customizations.el")
(load custom-file)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(defvar *system-cpu-type*
  (if (string-match "^\\([^-]+\\)-.*$" system-configuration)
      (match-string 1 system-configuration)
    "unknown"))

(add-to-list 'load-path "~/wd/EXTERNAL")
(add-to-list 'load-path "~/wd/igc/emacs")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp")
(add-to-list 'load-path "/opt/local/share/lisp")

(add-to-list 'package-archives '("marmalade" .
                                 "http://marmalade-repo.org/packages/"))

(setq ispell-list-command "list")

(defun colons->list (string)
  (split-string string ":" nil))
(defun list->colons (list)
  (apply #'concat (car list) (mapcar (lambda (path) (concat ":" path)) (cdr list))))
(defun add-to-envlist (envname &rest items)
  (setenv envname
          (list->colons (remove-duplicates (append items (colons->list (or (getenv envname) "")))
                                           :test #'string-equal :from-end t))))
(let ((base-dir (expand-file-name "~/wd/acelot/proposals")))
  (add-to-envlist "BSTINPUTS" "." (concat base-dir "/bibstyles"))
  (add-to-envlist "BIBINPUTS" "." base-dir)
  (add-to-envlist "TEXINPUTS" "." (concat base-dir "/styles") (concat base-dir "/classes")))

(setq-default org-mobile-directory "~/Dropbox/MobileOrg/")
(setq-default org-mobile-inbox-for-pull "~/Dropbox/MobileOrg/index.org")

(add-to-list 'auto-mode-alist '("\\.asdf?\\'" . asdf-mode))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.igc\\'" . igc-mode))

(autoload 'igc-mode "igc-mode" nil t)
(autoload 'jw-visit-source "jw-visit-source" "If the current line contains text like '../src/program.rb:34', visit that file in the other window and position point on that line." t) 

(add-to-list 'completion-ignored-extensions ".git/")

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-flyspell)
(add-hook 'c-mode-common-hook 'flyspell-prog-mode)
(add-hook 'lisp-mode-hook 'flyspell-prog-mode)
(add-hook 'scheme-mode-hook 'flyspell-prog-mode)
(add-hook 'emacs-lisp-mode-hook 'flyspell-prog-mode)
(add-hook 'dired-mode-hook (lambda ()
			     (add-to-list 'dired-omit-extensions ".d")
			     (add-to-list 'dired-omit-extensions ".sty")
			     (add-to-list 'dired-omit-extensions ".rel")
			     (add-to-list 'dired-omit-extensions ".pdfsync")
			     (add-to-list 'dired-omit-extensions ".log")))

(add-hook 'c-mode-common-hook 'doc-mode)
(add-hook 'emacs-lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'text-mode-hook (lambda () (footnote-mode +1)))
(add-hook 'dired-mode-hook (lambda ()
			     (local-set-key (kbd "C-c C-r")
					    'wdired-change-to-wdired-mode)))
(add-hook 'ruby-mode-hook (lambda ()
                            (make-local-variable 'parens-require-spaces)
                            (setq parens-require-spaces nil)))

(setq-default semantic-load-turn-useful-things-on t)

(defun djcb-snip (b e summ)
  "remove selected lines, and replace it with [snip:summary (n lines)]"
  (interactive "r\nsSummary:")
  (let ((n (count-lines b e)))
    (delete-region b e)
    (insert (format "[snip%s (%d line%s)]" 
              (if (= 0 (length summ)) "" (concat ": " summ))
              n 
              (if (= 1 n) "" "s")))))

(require 'dired-x)
(require 'sgml-mode)
(require 'info-look)
(require 'pretty-greek)
(require 'uniquify)
(require 'org-install)
(require 'org)
(require 'zap-up-to-char)
(require 'mac-local)
(require 'color-theme)

(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
(setq-default ack-guess-type t)
(info-lookup-add-help
 :mode 'lisp-mode
 :regexp "[^][()'\" \t\n]+"
 :ignore-case t
 :doc-spec '(("(ansicl)Symbol Index" nil nil nil)))

(global-set-key [f2] 'jw-visit-source)
(global-set-key [f3] 'flymake-display-err-menu-for-current-line)
(global-set-key [f4] 'flymake-goto-next-error)
(global-set-key "\C-ca" 'eshell)
(global-set-key "\C-cA" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ce" 'edit-as-root)
(global-set-key "\C-cf" 'ffap)
(global-set-key "\C-cg" 'magit-status)
(global-set-key "\C-ch" 'anything)
(global-set-key "\C-ck" 'delete-pair)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cx" 'org-agenda)
(global-set-key "\C-cm" 'woman)
(global-set-key "\C-cn" 'tempo-forward-mark)
(global-set-key "\C-co" 'ff-find-other-file)
(global-set-key "\C-cp" 'tempo-backward-mark)
(global-set-key "\C-cr" 'org-capture)
(global-set-key "\C-cs" 'spell-word-noninteractively)
(global-set-key "\C-cu" 'browse-url-at-point)
(global-set-key "\C-\M-z" 'zap-up-to-char)
(global-set-key "\C-\M-y" 'kill-ring-search)
(global-set-key "\C-ctt" 'unicode-character-shortcut-insert)
(global-set-key "\C-ctu" 'unicode-character-insert)
(global-set-key "\C-cti" 'iso8879-character-insert)
(global-set-key "\C-ct'" 'unicode-smart-single-quote)
(global-set-key "\C-ct\"" 'unicode-smart-double-quote)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(setq default-abbrev-mode t)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers

(setq mmm-global-mode 'maybe)

;(add-to-list 'anything-sources 'anything-c-source-google-suggest)
;(add-to-list 'anything-sources 'anything-c-source-calculation-result)
;(add-to-list 'anything-sources 'anything-c-source-mac-spotlight)
;(add-to-list 'anything-sources 'anything-c-source-files-in-current-dir)
;(add-to-list 'anything-sources 'anything-c-source-recentf)

(autopair-global-mode)
(dired-x-bind-find-file)
(auto-compression-mode t)
(display-time)
(server-start)
(smex-initialize)
(put 'scroll-left 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'with-state 'scheme-indent-function 2)

