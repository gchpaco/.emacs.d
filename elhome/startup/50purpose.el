(eval-when-compile
  (require 'use-package))

(defun uniquified-rx-for-name (filename)
  (cl-case uniquify-buffer-name-style
    ;; "name" -> "dir/name"
    (forward (concat "^\\(.*/\\)?" (regexp-quote filename) "$"))
    ;;  "name" -> "name\\dir"
    (reverse (concat "^" (regexp-quote filename) "\\(.*\\)?$"))
    ;;  "name" -> "name|dir"
    (post-forward (concat "^" (regexp-quote filename) "\\(|.*\\)?$"))
    ;; "name" -> "name<dir>"
    (post-forward-angle-brackets (concat "^" (regexp-quote filename) "\\(<.*>\\)?$"))
    ;; "name" -> "name<number>"
    (otherwise (concat "^" (regexp-quote filename) "\\(<.*>\\)?$"))))

(defun uniquified-rx-for-regexp (name-regexp)
  (let ((file-start ".*")
        (file-end ".*"))
    (when (string-prefix-p "^" name-regexp)
      (setq file-start "")
      (setq name-regexp (substring name-regexp 1)))
    (when (and (string-suffix-p "$" name-regexp)
               (not (string-suffix-p "\\$" name-regexp)))
      (setq file-end "")
      (setq name-regexp (substring name-regexp 0 -1)))
    (cl-case uniquify-buffer-name-style
      ;; "name" -> "^dir/.*name.*$"; "^name$" -> "^dir/name$"
      (forward (concat "^\\(.*/\\)?" file-start name-regexp file-end "$"))
      ;;  "name" -> "^.*name.*\\dir$"; "^name$" -> "^name\\dir$"
      (reverse (concat "^" file-start name-regexp file-end "\\(.*\\)?$"))
      ;;  "name" -> "^.*name.*|dir$"; "^name$" -> "^name|dir$"
      (post-forward (concat "^" file-start name-regexp file-end "\\(|.*\\)?$"))
      ;; "name" -> "^.*name.*<dir>$"; "^name$" -> "^name<dir>$"
      (post-forward-angle-brackets (concat "^" file-start name-regexp file-end "\\(<.*>\\)?$"))
      ;; "name" -> "^.*name.*<number>$"; "^name$" -> "^name<number>$"
      (otherwise (concat "^" file-start name-regexp file-end "\\(<.*>\\)?$")))))

;;; fixed configuration using uniqufied regular expressions
;; note `purpose-user-regexp-purposes' is used instead of `purpose-user-name-purposes'
;; will match "foo.txt" and "foo.txt<bar>", but not "baz.txt<bar>"
;(push (cons (uniquified-rx-for-name "foo.txt") 'txt) purpose-user-regexp-purposes)
;; will match "foo.txt", "foo.txt<bar>" and "baz.txt<bar>"
;(push (cons (uniquified-rx-for-regexp "\\.txt$") 'txt) purpose-user-regexp-purposes)
(use-package window-purpose
  :straight t
  :config
  (purpose-compile-user-configuration))
