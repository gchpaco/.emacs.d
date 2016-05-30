(eval-when-compile
  (require 'use-package))

(use-package ede
  :commands (ede-minor-mode)
  :init (progn (add-hook 'c-mode-hook 'ede-minor-mode)
               (add-hook 'c++-mode-hook 'ede-minor-mode)))
(use-package ede/cpp-root)
