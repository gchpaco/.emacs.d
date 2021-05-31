(eval-when-compile
  (require 'use-package))

(use-package popper
  :straight t
  :bind (("C-`"   . popper-toggle-latest)
         ("M-`"   . popper-cycle)
         ("C-M-`" . popper-toggle-type))
  :init
  (setq popper-group-function #'popper-group-by-projectile)
  (setq popper-reference-buffers
        '(Custom-mode
          compilation-mode
          messages-mode
          help-mode
          occur-mode
          "\\*Warnings\\*"
          "\\*Compile-Log\\*"
          "\\*Messages\\*"
          "\\*Backtrace\\*"
          "\\*Apropos"
          "^Calc:"
          "\\*TeX Help\\*"
          "\\*Shell Command Output\\*"
          "\\*Async Shell Command\\*"
          "\\*Completions\\*"
          "[oO]utput\\*"
          ))
  (popper-mode +1))

(winner-mode 1)
