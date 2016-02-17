(require 'autoinsert)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)

(defun my-override-parens ()
  (make-variable-buffer-local 'parens-require-spaces)
  (setq parens-require-spaces nil))
(add-hook 'c++-mode-hook 'my-override-parens)
(add-hook 'c-mode-hook 'my-override-parens)
(add-hook 'objc-mode-hook 'my-override-parens)

(defun my-c-common-hook ()
  (require 'ggtags)
  (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
    (ggtags-mode 1)
    (setq-local imenu-create-index-function
                #'ggtags-build-imenu-index)
    (setq-local eldoc-documentation-function
                #'ggtags-eldoc-function)))

(add-hook 'c-mode-common-hook 'my-c-common-hook)

(add-hook 'c-mode-hook 'ede-minor-mode)
(add-hook 'c++-mode-hook 'ede-minor-mode)

(add-hook 'c-mode-common-hook 'hs-minor-mode)

(setq gdb-many-windows t)
(setq gdb-show-main t)

(defun my-get-project-relative-name ()
  (file-relative-name (buffer-file-name)
                      (concat (projectile-project-root) "src")))

(defun my-alternate-file (name)
  (concat (file-name-sans-extension (name)) ".hpp"))

(define-skeleton my-cc-module-default
  "C++ implementation file contents, per RethinkDB"
  (my-alternate-file (my-get-project-relative-name))
  "// Copyright " (format-time-string "%Y")
  " RethinkDB, all rights reserved." \n
  "#include \"" str "\"" \n \n
  "// XXX C++ headers" \n
  _ \n
  "// XXX C headers" \n
  _ \n
  "#include \"errors.hpp\"" \n
  "// XXX boost" \n
  _ \n
  "// XXX private headers" \n
  _ \n
  -)

(add-to-list 'auto-insert-alist
             '(("\\.cc" . "C++ file") . my-cc-module-default))

(define-skeleton my-cc-header-default
  "C++ interface file contents, per RethinkDB"
  (upcase
   (replace-regexp-in-string "[^A-Za-z]" "_" (my-get-project-relative-name)))
  "// Copyright " (format-time-string "%Y")
  " RethinkDB, all rights reserved." \n
  "#ifndef " str "_" \n
  "#define " str "_" \n
  \n
  "// XXX C++ headers" \n
  _ \n
  "// XXX C headers" \n
  _ \n
  "#include \"errors.hpp\"" \n
  "// XXX boost" \n
  _ \n
  "// XXX private headers" \n
  _ \n
  - \n
  \n
  "#endif  // " str "_" \n)

(add-to-list 'auto-insert-alist
             '(("\\.hpp" . "C++ interface file") . my-cc-header-default))
