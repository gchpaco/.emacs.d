(eval-when-compile
  (require 'use-package))

(use-package projectile
  :straight t
  :init
  (progn (bind-keys ("C-c p" . projectile-command-map))
         (setq-default projectile-enable-caching t
                       projectile-mode-line
                       '(:eval (format " Prj[%s]" (projectile-project-name)))))
  :config
  (progn (add-to-list 'projectile-globally-ignored-directories "build")
         (add-to-list 'projectile-globally-ignored-directories "external")
         (projectile-mode)))

(use-package helm-projectile
  :straight t
  :init (setq-default projectile-completion-system 'helm
                      projectile-switch-project-action 'helm-projectile)
  :config (helm-projectile-on))

(use-package projectile-speedbar :straight t :disabled t)
(use-package persp-mode :straight t :pin "melpa" :disabled t)
(use-package persp-projectile :straight t :disabled t)
(use-package projectile-codesearch :straight t
  :config
  (bind-keys :map projectile-command-map
             ("s c" . projectile-codesearch-search)))
