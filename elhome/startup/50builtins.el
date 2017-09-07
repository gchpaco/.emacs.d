(eval-when-compile
  (require 'use-package))

(use-package electric-pair-mode
  :commands electric-pair-mode
  :init (add-hook 'prog-mode-hook 'electric-pair-mode))

(use-package electric-indent-mode
  :commands electric-indent-mode
  :init (add-hook 'prog-mode-hook 'electric-indent-mode))

(use-package ispell
  :diminish ispell-minor-mode)

(use-package battery
  :config (display-battery-mode 1))

(use-package sgml-mode)
(use-package info-look)
(use-package uniquify)
(use-package zap-up-to-char
  :bind ("C-M-z" . zap-up-to-char))
(use-package multiple-cursors
  :bind
  ("C-S-c C-S-c" . mc/edit-lines)
  ("C->" . mc/mark-next-like-this)
  ("C-<" . mc/mark-previous-like-this)
  ("C-c C-<" . mc/mark-all-like-this))
(use-package expand-region
  :bind ("C-'" . er/expand-region))

(use-package browse-url
  :bind ("C-c u" . browse-url-at-point))

(use-package eshell
  :bind ("C-c a". eshell))

(use-package ffap
  :bind ("C-c f" . ffap))

(use-package find-file
  :bind ("C-c o" . ff-find-other-file))

(use-package woman
  :bind ("C-c m" . woman))

(use-package tramp
  :config
  (setq tramp-default-method "ssh")
  (defalias 'exit-tramp 'tramp-cleanup-all-buffers)
  (add-to-list 'tramp-default-proxies-alist
               '("\\." nil nil))
  (add-to-list 'tramp-default-proxies-alist
               '("\\`cunningham\\.local\\'" nil "/ssh:sc.denali-systems.com:"))
  (add-to-list 'tramp-default-proxies-alist
               '("\\`ec2cloner\\'" nil "/ssh:cunningham.local:")))
