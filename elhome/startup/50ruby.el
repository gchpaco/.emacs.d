(require 'speedbar)
(speedbar-add-supported-extension ".rb")
(defun my-get-module-from-ruby-file ()
  (flet ((strip-slash (string) (substring string 0 -1))
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
  "# Graham Hughes <graham.hughes@citrixonline.com>" \n
  "#" \n
  "# === Copyright" \n
  "#" \n
  "# Copyright 2012 Citrix Systems Inc, unless otherwise noted." \n
  "#" \n
  "module " str " #:nodoc:"\n
  > "# " _ \n
  > "class " (capitalize (substring
                          (file-name-nondirectory buffer-file-name) 0 -3)) \n
  > "end" \n
  > "end" \n)
(add-to-list 'auto-insert-alist
             '(("\\.rp" . "Ruby file") . my-ruby-module-default))