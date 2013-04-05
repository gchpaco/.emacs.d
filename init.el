;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(require 'cl)

(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'inversion)

;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j, and you have a working developper edition of el-get.

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))

;; local sources
(setq el-get-sources
      '((:name elhome :after (elhome-init))
        (:name org-magit :type elpa)
        (:name company :type elpa)
	(:name cl-lib :type elpa)
        (:name ack-and-a-half :type elpa)
        (:name all :type elpa)
        (:name evernote-mode :type elpa)
        (:name feature-mode :type elpa)
        (:name jenkins-watch :type elpa)
        (:name ipython :type elpa)
        (:name js2-mode :type elpa)
        (:name markdown-mode :type elpa)
        (:name mediawiki :type elpa)
        (:name p4 :type elpa)
        (:name projectile :type elpa)
        (:name pep8 :type elpa)
        (:name auctex :type elpa)
        (:name ssh :type elpa)
        (:name yasnippet :type elpa)
        (:name magit-gh-pulls :type elpa)
        (:name feature-mode :type elpa)))

(setq my-packages
      (append
       '(anything apache-mode auctex
                  cssh fic-ext-mode
                  org-magit magit-gh-pulls
                  ack-and-a-half
                  all
                  evernote-mode
                  feature-mode
                  jenkins-watch
                  ipython ein
                  e2wm
                  js2-mode
                  markdown-mode
                  mediawiki
                  p4
                  autopair smart-operator
                  projectile python-mode
                  pep8 pretty-mode
                  minimap ri-emacs tail undo-tree ssh
                  xcscope xcscope+
                  virtualenv python ipython pymacs ropemacs
                  clang-completion-mode clevercss coffee-mode
                  crontab-mode dig dired-toggle-sudo emms feature-mode
                  go-mode highlight-parentheses js2-mode magit haml-mode
                  mmm-mode org-buffers org-fstree paredit
                  puppet-mode quack rails-el rinari rspec-mode rst-mode
                  ruby-block smex ssh-config sudo-save tidy yasnippet sass-mode
                  yaml-mode elhome)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

(elhome-init)

(defun djcb-snip (b e summ)
  "remove selected lines, and replace it with [snip:summary (n lines)]"
  (interactive "r\nsSummary:")
  (let ((n (count-lines b e)))
    (delete-region b e)
    (insert (format "[snip%s (%d line%s)]"
              (if (= 0 (length summ)) "" (concat ": " summ))
              n
              (if (= 1 n) "" "s")))))

(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'with-state 'scheme-indent-function 2)
(put 'scroll-left 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
