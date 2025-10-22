(eval-when-compile
  (require 'use-package))

(when (eq system-type 'darwin)
 (setq-default insert-directory-program "/opt/homebrew/bin/gls"))
