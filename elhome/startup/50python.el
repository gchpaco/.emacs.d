(eval-when-compile
  (require 'use-package))

(use-package python-mode
  :straight t :disabled t)

(use-package elpy
  :straight t
  :diminish elpy-mode
  :init (setq-default python-shell-exec-path
                      (list (expand-file-name "~/.pyenv/shims")
                            "/usr/local/opt/pyenv/shims"))
  :config
  (setq-default python-shell-interpreter "python3"
                python-shell-interpreter-args "-i")
  (elpy-enable))

(use-package pyenv-mode
  :straight t
  :functions pyenv-mode-versions
  :config
  (pyenv-mode)
  (add-hook 'projectile-switch-project-hook 'projectile-pyenv-mode-set))
(use-package pyenv-mode-auto :straight t)
(use-package pyfmt :straight t)

(use-package anaconda-mode
  :straight t
  :config (add-hook 'python-mode-hook 'anaconda-mode))

(use-package company-anaconda :straight t)

(use-package pip-requirements
  :straight t
  :mode "requirements.txt\\'")
(use-package pydoc :straight t)
(use-package python-info :straight t)

(use-package company-jedi
  :straight t
  :commands company-jedi
  :init
  (add-to-list 'company-backends 'company-jedi))

(use-package pungi
  :straight t
  :commands pungi:setup-jedi
  :init
  (add-hook 'python-mode-hook 'pungi:setup-jedi))

(defun projectile-pyenv-mode-set ()
  "Set pyenv version matching project name."
  (let ((project (projectile-project-name)))
    (if (member project (pyenv-mode-versions))
        (pyenv-mode-set project)
      (pyenv-mode-unset))))

(use-package ein
  :straight t)

(use-package python-docstring :straight t)

(use-package yapfify
  :straight t
  :disabled t
  :config (add-hook 'python-mode-hook 'yapf-mode))

(use-package py-autopep8
  :straight t
  :config (add-hook 'python-mode-hook 'py-autopep8-mode))

(use-package python-test
  :straight t)

(use-package pyimport
  :straight t)

(use-package pygen
  :straight t
  :disabled t
  :config (add-hook 'python-mode-hook 'pygen-mode))

(use-package importmagic
  :straight t
  :disabled t
  :config (add-hook 'python-mode-hook 'importmagic-mode))

(use-package indent-tools
  :straight t
  :bind ("C-c >" . indent-tools-hydra/body))

(use-package pylint
  :disabled t
  :straight t
  :config
  (add-hook 'python-mode-hook 'pylint-add-menu-items)
  (add-hook 'python-mode-hook 'pylint-add-key-bindings))

(require 'python)

(use-package python-docstring
  :bind (:map python-mode-map
              ("C-c c" . gpolonkai/python-add-docstring)))

(use-package python-switch-quotes
  :straight t
  :bind (:map python-mode-map
              ("C-c '" . python-switch-quotes)))
