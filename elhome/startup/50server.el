(eval-when-compile
  (require 'use-package))

(defun bury-server-buffer ()
  (let ((server-buf (current-buffer)))
    (bury-buffer)
    (switch-to-buffer-other-frame server-buf)))

(use-package edit-server
  :straight t
  :if window-system
  :init
  (add-hook 'after-init-hook 'server-start t)
  (add-hook 'after-init-hook 'edit-server-start t)
  (add-hook 'server-switch-hook 'bury-server-buffer)
  (add-hook 'server-done-hook 'delete-frame))

(use-package edit-server-htmlize
  :if window-system
  :straight t)
