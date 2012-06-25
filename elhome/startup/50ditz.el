(if (file-exists-p "~/wd/EXTERNAL/emacs-ditz")
    (progn (add-to-list 'load-path "~/wd/EXTERNAL/emacs-ditz")
           (require 'ditz)
           (setq ditz-program "~/.rbenv/shims/ditz")
           (setq ditz-issue-directory "issues")
           (setq ditz-find-issue-directory-automatically-flag t)))