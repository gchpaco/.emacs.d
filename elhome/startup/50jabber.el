(eval-when-compile
  (require 'use-package))

(use-package jabber :ensure t
  :bind-keymap ("C-c C-y" . jabber-global-keymap))
