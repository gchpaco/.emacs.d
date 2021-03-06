(eval-when-compile
  (require 'use-package))

(setenv "PYENV_ROOT" (expand-file-name "~/.pyenv"))
(setenv "WORKON_HOME" (concat (getenv "PYENV_ROOT")) "/versions")
(setenv "PYTHONPATH" (expand-file-name "~/lib/python"))
(setenv "JAVA_HOME" "/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home")

(add-to-list 'exec-path "/opt/local/bin")
(push "/usr/local/bin" exec-path)
(add-to-list 'exec-path (expand-file-name "~/.pyenv/shims"))
(add-to-list 'exec-path "/usr/local/opt/pyenv/bin")
(add-to-list 'exec-path "/usr/local/opt/pyenv/shims")
(add-to-list 'exec-path (expand-file-name "~/lib/go/bin"))
(add-to-list 'exec-path (expand-file-name "~/.local/bin"))
(add-to-list 'exec-path (expand-file-name "~/bin"))

(defun add-tex-input-dirs (basename)
  "Add BASENAME as a TeX input directory."
  (let ((base-dir (expand-file-name basename)))
    (setenv "BSTINPUTS" (concat ".:" base-dir "/bibstyles:"
                                (getenv "BSTINPUTS")))
    (setenv "BIBINPUTS" (concat ".:" base-dir ":"
                                (getenv "BIBINPUTS")))
    (setenv "TEXINPUTS" (concat ".:" base-dir "/styles:"
                                (getenv "TEXINPUTS")))))
(add-tex-input-dirs "~/wd/citations")
(add-tex-input-dirs "~/wd/proposals")

(defun colons->list (string)
  "Convert path-like STRING to a list."
  (split-string string ":" nil))
(defun list->colons (list)
  "Convert LIST to a colon separated string, like for PATH."
  (apply #'concat (car list) (mapcar (lambda (path) (concat ":" path))
                                     (cdr list))))
(defun add-to-envlist (envname &rest items)
  "To the environment variable ENVNAME, append ITEMS."
  (setenv envname
          (list->colons (remove-duplicates (append items (colons->list
                                                          (or (getenv envname)
                                                              "")))
                                           :test #'string-equal :from-end t))))

(unless (getenv "EDITOR")
  (setenv "EDITOR" "emacsclient"))

(setenv "PATH"
        (substring (apply #'concat (mapcar (lambda (x)
                                             (concat (expand-file-name x) ":"))
                                           exec-path))
                   0 -1))
