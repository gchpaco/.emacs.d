;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(require 'cl)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'inversion)

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
	(:name elhome :after elhome-init)
        (:name org-magit :type elpa)))

(setq my-packages
      (append
       '(el-get Enhanced-Ruby-Mode
                anything anything-ack anything-orgcard apache-mode auctex
                auto-complete auto-complete-clang auto-complete-css bbdb
                auto-complete-emacs-lisp auto-complete-etags auto-complete-latex
                auto-complete-ruby auto-complete-yasnippet
                cisco-router-mode cssh fic-ext-mode html5
                mediawiki minimap ri-emacs ssh tail undo-tree
                xcscope xcscope+ erc
                clang-completion-mode clevercss coffee-mode cedet
                crontab-mode dig dired-toggle-sudo emms feature-mode
                gist go-mode haml-mode highlight-parentheses js2-mode magit
                magithub mmm-mode nxhtml org-mode org-buffers org-fstree paredit
                puppet-mode quack rails-el rinari rspec-mode rst-mode
                ruby-block sass-mode smex ssh-config sudo-save tidy
                wikipedia-mode yaml-mode yasnippet
                elhome)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

(defun djcb-snip (b e summ)
  "remove selected lines, and replace it with [snip:summary (n lines)]"
  (interactive "r\nsSummary:")
  (let ((n (count-lines b e)))
    (delete-region b e)
    (insert (format "[snip%s (%d line%s)]"
              (if (= 0 (length summ)) "" (concat ": " summ))
              n
              (if (= 1 n) "" "s")))))

(put 'scroll-left 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'with-state 'scheme-indent-function 2)
