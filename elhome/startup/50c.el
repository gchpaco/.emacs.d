(eval-when-compile
  (require 'use-package))

(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))

(use-package irony
  :commands (irony-mode)
  :defer t
  :init
  (autoload 'irony-mode "irony" nil t)
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'my-irony-mode-hook))

(use-package company-irony :ensure t)
(use-package company-c-headers :ensure t)
(use-package java-snippets :ensure t)
(use-package preproc-font-lock :ensure t)

(defun my-override-parens ()
  "Override normal insert-space-before-M-( behavior."
  (make-local-variable 'parens-require-spaces)
  (setq parens-require-spaces nil))

(defun my-c-common-hook ()
  (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
    (ggtags-mode 1)
    (setq-local imenu-create-index-function
                #'ggtags-build-imenu-index)
    (setq-local eldoc-documentation-function
                #'ggtags-eldoc-function)))

(use-package cc-mode
  :defer t
  :init (progn (add-hook 'c-mode-common-hook 'my-c-common-hook)
               (add-hook 'c-mode-common-hook 'my-override-parens)
               (add-hook 'c-mode-common-hook 'hs-minor-mode)))

(use-package modern-cpp-font-lock
  :commands modern-c++-font-lock-mode
  :ensure t
  :init (add-hook 'c++-mode-hook #'modern-c++-font-lock-mode))

(setq-default gdb-many-windows t)
(setq-default gdb-show-main t)

(defun my-get-project-relative-name ()
  (file-relative-name (buffer-file-name)
                      (concat (projectile-project-root) "src")))

(defun my-alternate-file (name)
  (concat (file-name-sans-extension name) ".hpp"))

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

(use-package objc-font-lock :ensure t)

(use-package flycheck-flawfinder :ensure t
  :config
  (flycheck-flawfinder-setup)
  (flycheck-add-next-checker 'c/c++-cppcheck '(warning . flawfinder)))
