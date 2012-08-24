(when (require 'bbdb nil t)
  (require 'bbdb-gnus)
  (require 'bbdb-message)
  (require 'bbdb-migrate)
  (require 'bbdb-mua)

  (bbdb-initialize 'gnus 'message))
