(eval-when-compile
  (require 'use-package))

(use-package projectile
  :ensure t
  :init
  (progn (setq-default projectile-enable-caching t
                       projectile-mode-line
                       '(:eval (format " Prj[%s]" (projectile-project-name))))
         (add-to-list 'projectile-globally-ignored-directories "build")
         (add-to-list 'projectile-globally-ignored-directories "external"))
  :config (projectile-global-mode))

(use-package helm-projectile
  :ensure t
  :init (setq-default projectile-completion-system 'helm
                      projectile-switch-project-action 'helm-projectile)
  :config (helm-projectile-on))

(use-package sr-speedbar :ensure t)
(use-package projectile-speedbar :ensure t)
(use-package persp-mode :ensure t :pin "melpa")
(use-package persp-projectile :ensure t)
(use-package projectile-codesearch :ensure t)
