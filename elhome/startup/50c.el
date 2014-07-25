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
