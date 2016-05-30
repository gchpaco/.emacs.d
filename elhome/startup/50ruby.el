(use-package ruby-mode
  :config
  (progn (speedbar-add-supported-extension ".rb")
         (add-to-list 'speedbar-fetch-etags-parse-list
             '("\\.rb" . "\\(\\(class\\|def\\)\\s-+\\([a-zA-Z0-9_.:]+\\)\\)\\s-*(?^?"))))

(defun my-get-module-from-ruby-file ()
  (cl-flet ((strip-slash (string) (substring string 0 -1))
         (rubyify (filename)
                  (apply #'concat (mapcar #'capitalize
                                          (split-string filename "[_-]")))))
    (reduce
     (lambda (x y) (concat x "::" y))
     (nreverse
      (loop for dir = (file-name-directory buffer-file-name)
            then (file-name-directory (strip-slash dir))
            for stub = (file-name-nondirectory (strip-slash dir))
            then (file-name-nondirectory (strip-slash dir))
            until (or (string= dir "/")
                      (string= stub "lib"))
            collect (rubyify stub))))))
(define-skeleton my-ruby-module-default
  "Ruby module initial contents"
  (my-get-module-from-ruby-file)
  "# === Authors" \n
  "#" \n
  "# Graham Hughes <ghughes@meteor.com>" \n
  "#" \n
  "# === Copyright" \n
  "#" \n
  "# Copyright 2012, 2016 Citrix Systems Inc, unless otherwise noted." \n
  "#" \n
  "module " str " #:nodoc:"\n
  > "# " _ \n
  > "class " (capitalize (substring
                          (file-name-nondirectory buffer-file-name) 0 -3)) \n
  > "end" \n
  > "end" \n)
