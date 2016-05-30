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
