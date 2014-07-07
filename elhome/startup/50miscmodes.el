(require 'dired-x)
(require 'sgml-mode)
(require 'info-look)
(require 'pretty-mode)
(global-pretty-mode 1)
(require 'uniquify)
(require 'zap-up-to-char)
(case window-system
  ((ns) (require 'mac-local)))
(require 'popwin)
(require 'magit-annex)
(popwin-mode 1)

(dired-x-bind-find-file)
