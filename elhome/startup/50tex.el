(eval-when-compile
  (require 'use-package))

(use-package tex
  :straight auctex)

(use-package auctex-latexmk :straight t)
(use-package auctex-lua :straight t)

(use-package bibtex-utils :straight t)

(use-package biblio :straight t)

(use-package company-auctex :straight t)
(use-package company-math :straight t)
