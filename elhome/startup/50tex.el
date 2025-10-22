(eval-when-compile
  (require 'use-package))

(use-package auctex :straight t :disabled t)

(use-package tex-site :straight auctex :disabled t)

(use-package bibtex-utils :straight t :disabled t)

(use-package biblio :straight t :disabled t)

(use-package company-auctex :straight t :disabled t)
(use-package company-math :straight t :disabled t)
