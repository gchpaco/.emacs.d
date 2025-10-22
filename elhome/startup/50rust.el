(eval-when-compile
  (require 'use-package))

(defun my-rust-mode-hook ()
  (setq indent-tabs-mode nil
        rust-format-on-save t
        rust-mode-treesitter-derive t)
  (prettify-symbols-mode))

(use-package rust-mode
  :config (progn (add-hook 'rust-mode-hook #'my-rust-mode-hook)
                 (add-hook 'rust-mode-hook 'eglot-ensure))
  :straight t)
