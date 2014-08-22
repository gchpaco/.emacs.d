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
