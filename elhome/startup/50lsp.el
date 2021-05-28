(eval-when-compile
  (require 'use-package))

(use-package lsp-mode :straight t)
(use-package company-lsp :straight t)
(use-package helm-lsp :straight t)
(use-package lsp-ui :straight t)
(use-package lsp-java
  :straight t
  :after lsp
  :config
  (add-hook 'java-mode-hook #'lsp))
(use-package lsp-latex :straight t)
