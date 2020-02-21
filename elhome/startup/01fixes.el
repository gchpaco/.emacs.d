(eval-when-compile
  (require 'use-package))

(when (eq system-type 'darwin)
 (setq-default insert-directory-program "/usr/local/bin/gls"))

(straight-use-package 'org)
