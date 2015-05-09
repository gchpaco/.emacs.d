(add-to-list 'exec-path "/opt/local/bin")
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path (expand-file-name "~/.rbenv/bin"))
(add-to-list 'exec-path (expand-file-name "~/.rbenv/shims"))
(add-to-list 'exec-path (expand-file-name "~/.pyenv/shims"))
(add-to-list 'exec-path (expand-file-name "~/.local/bin"))
(add-to-list 'exec-path (expand-file-name "~/lib/go/bin"))
(add-to-list 'exec-path (expand-file-name "~/bin"))

(require 'environment-local)

(defun colons->list (string)
  (split-string string ":" nil))
(defun list->colons (list)
  (apply #'concat (car list) (mapcar (lambda (path) (concat ":" path))
                                     (cdr list))))
(defun add-to-envlist (envname &rest items)
  (setenv envname
          (list->colons (remove-duplicates (append items (colons->list
                                                          (or (getenv envname)
                                                              "")))
                                           :test #'string-equal :from-end t))))
(let ((base-dir (expand-file-name "~/wd/acelot/proposals")))
  (add-to-envlist "BSTINPUTS" "." (concat base-dir "/bibstyles"))
  (add-to-envlist "BIBINPUTS" "." base-dir)
  (add-to-envlist "TEXINPUTS" "." (concat base-dir "/styles")
                  (concat base-dir "/classes")))



(setenv "P4USER" "ghughes")
(setenv "P4CLIENT" (with-temp-buffer
                     (call-process "hostname" nil t)
                     (goto-char (point-max))
                     (delete-blank-lines)
                     (let ((trailnewlines (abs (skip-chars-backward "\n\t"))))
                       (if (> trailnewlines 0)
                           (progn
                             (delete-char trailnewlines))))
                     (buffer-string)))
