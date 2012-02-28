(defun ido-find-file-in-tag-files ()
  (interactive)
  (save-excursion
    (let ((enable-recursive-minibuffers t))
      (visit-tags-table-buffer))
    (find-file
     (expand-file-name
      (ido-completing-read
       "Project file: " (tags-table-files) nil t)))))

(setq ido-decorations '("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]"
                        " [Matched]" " [Not readable]" " [Too big]"
                        " [Confirm]"))
(defun ido-disable-line-truncation ()
  (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(add-hook 'ido-minibuffer-setup-hook
          (lambda ()
            (define-key ido-file-dir-completion-map [(meta control shift ?b)]
              'ido-goto-bookmark)))

(require 'bookmark)
(defun ido-goto-bookmark (bookmark)
  (interactive
   (let ((enable-recursive-minibuffers t))
     (list (bookmark-completing-read "Jump to bookmark"
                                     bookmark-current-bookmark))))
  (unless bookmark
    (error "No bookmark specified"))
  (let ((filename (bookmark-get-filename bookmark)))
    (ido-set-current-directory
     (if (file-directory-p filename)
         filename
       (file-name-directory filename)))
    (setq ido-exit 'refresh
          ido-text-init ido-text
          ido-rotate-temp t)
    (exit-minibuffer)))
