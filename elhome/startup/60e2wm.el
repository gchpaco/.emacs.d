(eval-when-compile
  (require 'use-package))

(use-package e2wm
  :ensure t
  :bind ("M-+" . e2wm:start-management))
(use-package window-layout :ensure t)
(use-package e2wm-bookmark :ensure t)
(use-package term)
(use-package e2wm-term :ensure t)
(use-package elwm
  :ensure t
  :bind
  ("C-c <down>" . elwm-shift-down)
  ("C-c <up>" . elwm-shift-up)
  ("C-c <left>" . elwm-shift-left)
  ("C-c <right>" . elwm-shift-right)
  ("C-c <next>" . elwm-swap-down)
  ("C-c <prior>" . elwm-swap-up)
  ("C-c w 2" . elwm-split-window))
