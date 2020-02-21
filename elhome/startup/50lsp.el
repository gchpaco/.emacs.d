(eval-when-compile
  (require 'use-package))

(use-package lsp-mode :straight t)
(use-package company-lsp :straight t)
(use-package helm-lsp :straight t)
(use-package lsp-ui :straight t)
(use-package lsp-treemacs :straight t)
(use-package lsp-java
  :straight t
  :disabled t
  :after lsp
  :config
  (add-hook 'java-mode-hook #'lsp))
(use-package dap-mode
  :straight t
  :disabled t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))
(use-package dap-java :after lsp-java :disabled t)
(use-package lsp-java-treemacs :after treemacs :disabled t)
