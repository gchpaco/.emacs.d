(eval-when-compile
  (require 'use-package))

(use-package projectile
  :ensure t
  :init
  (progn (setq-default projectile-enable-caching t
                       projectile-mode-line
                       '(:eval (format " Prj[%s]" (projectile-project-name)))))
  :config
  (progn (add-to-list 'projectile-globally-ignored-directories "build")
         (add-to-list 'projectile-globally-ignored-directories "external")
         (projectile-mode)))

(use-package helm-projectile
  :ensure t
  :init (setq-default projectile-completion-system 'helm
                      projectile-switch-project-action 'helm-projectile)
  :config (helm-projectile-on))

(use-package projectile-speedbar :ensure t :disabled t)
(use-package persp-mode :ensure t :pin "melpa" :disabled t)
(use-package persp-projectile :ensure t :disabled t)
(use-package projectile-codesearch :ensure t
  :config
  (bind-keys :map projectile-command-map
             ("s c" . projectile-codesearch-search)))
