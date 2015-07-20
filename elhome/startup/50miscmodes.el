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
(require 'multicolumn)
(require 'multiple-cursors)
(require 'expand-region)
(require 'shelldoc)
(require 'emr)
(require 'hl-indent)
(require 'mwim)
(require 'runner)
(require 'unify-opening)
(require 'symon)
(require 'bury-successful-compilation)
(require 'highlight-parentheses)
(bury-successful-compilation 1)
(popwin-mode 1)
(multicolumn-global-mode 1)
(symon-mode)

(dired-x-bind-find-file)

(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'emr-initialize)
(add-hook 'prog-mode-hook 'form-feed-mode)
(add-hook 'prog-mode-hook 'hl-indent-mode)
(add-hook 'prog-mode-hook 'highlight-parentheses-mode)
(add-hook 'prog-mode-hook 'flycheck-mode)

(setq-default aw-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s))
