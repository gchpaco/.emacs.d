(eval-when-compile
  (require 'use-package))

(use-package e2wm
  :straight t
  :bind ("M-+" . e2wm:start-management))
(use-package window-layout :straight t)
(use-package e2wm-bookmark :straight t)
(use-package term)
(use-package e2wm-term :straight t)
(use-package elwm
  :straight t
  :bind
  ("C-c <down>" . elwm-shift-down)
  ("C-c <up>" . elwm-shift-up)
  ("C-c <left>" . elwm-shift-left)
  ("C-c <right>" . elwm-shift-right)
  ("C-c <next>" . elwm-swap-down)
  ("C-c <prior>" . elwm-swap-up)
  ("C-c w 2" . elwm-split-window))
