(use-package bbdb
  :ensure t
  :config
  (use-package bbdb-gnus)
  (use-package bbdb-message)
  (use-package bbdb-migrate)
  (use-package bbdb-mua)
  (bbdb-initialize 'gnus 'message))

(use-package gmail2bbdb :ensure t)
