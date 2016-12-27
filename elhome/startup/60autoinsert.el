(eval-when-compile
  (require 'use-package))

(use-package autoinsert
  :config
  (progn
    (add-to-list 'auto-insert-alist
                 '(("\\.rb" . "Ruby file") . my-ruby-module-default))
    (add-to-list 'auto-insert-alist
                 '(("\\.pp" . "Puppet module") . my-puppet-module-default))
    (add-to-list 'auto-insert-alist
                 '(("\\.cc" . "C++ file") . my-cc-module-default))
    (add-to-list 'auto-insert-alist
                 '(("\\.hpp" . "C++ interface file") . my-cc-header-default))))

(use-package auto-yasnippet :ensure t)

(use-package yasnippet
  :ensure t
  :bind (:map yas-minor-mode-map
         ("<tab>" . nil)
         ("TAB" . nil)))
