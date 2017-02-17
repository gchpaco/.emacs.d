(eval-when-compile
  (require 'use-package))

(use-package python-mode
  :disabled t
  :ensure t)

(use-package elpy
  :ensure t
  :functions elpy-use-cpython
  :diminish elpy-mode
  :pin elpy
  :init (setq-default python-shell-exec-path (list (expand-file-name "~/.pyenv/shims")
                                                   "/usr/local/opt/pyenv/shims"))
  :config
  (elpy-enable)
  (elpy-use-cpython))

(use-package pyenv-mode
  :ensure t
  :functions pyenv-mode-versions
  :config
  (pyenv-mode)
  (add-hook 'projectile-switch-project-hook 'projectile-pyenv-mode-set))
(use-package pyenv-mode-auto :ensure t)
(use-package pyfmt :ensure t)

(use-package anaconda-mode
  :ensure t
  :config (add-hook 'python-mode-hook 'anaconda-mode))

(use-package company-anaconda :ensure t)

(use-package pip-requirements
  :ensure t
  :mode "requirements.txt\\'")
(use-package pydoc :ensure t)
(use-package pydoc-info :ensure t)
(use-package python-info :ensure t)

(use-package company-jedi
  :ensure t
  :commands company-jedi
  :init
  (add-to-list 'company-backends 'company-jedi))

(use-package pungi
  :ensure t
  :commands pungi:setup-jedi
  :init
  (add-hook 'python-mode-hook 'pungi:setup-jedi))

(defun projectile-pyenv-mode-set ()
  "Set pyenv version matching project name."
  (let ((project (projectile-project-name)))
    (if (member project (pyenv-mode-versions))
        (pyenv-mode-set project)
      (pyenv-mode-unset))))

(use-package nose
  :ensure t
  :bind (:map python-mode-map
              ("C-c N a" . nosetests-all)
              ("C-c N m" . nosetests-module)
              ("C-c N ." . nosetests-one)
              ("C-c C-c" . nosetests-again)
              ("C-c N p a" . nosetests-pdb-all)
              ("C-c N p m" . nosetests-pdb-module)
              ("C-c N p ." . nosetests-pdb-one)))

(use-package ein
  :ensure t)

(use-package python-docstring :ensure t)

(use-package yapfify
  :ensure t
  :disabled t
  :config (add-hook 'python-mode-hook 'yapf-mode))

(use-package py-autopep8
  :ensure t
  :config (add-hook 'python-mode-hook 'py-autopep8-enable-on-save))

(use-package python-test
  :ensure t)

(use-package pyimport
  :ensure t)

(use-package pygen
  :ensure t
  :disabled t
  :config (add-hook 'python-mode-hook 'pygen-mode))

(use-package importmagic
  :ensure t
  :disabled t
  :config (add-hook 'python-mode-hook 'importmagic-mode))

(use-package indent-tools
  :ensure t
  :bind ("C-c >" . indent-tools-hydra/body))

(use-package pylint
  :ensure t
  :config
  (add-hook 'python-mode-hook 'pylint-add-menu-items)
  (add-hook 'python-mode-hook 'pylint-add-key-bindings))

(use-package python-docstring
  :bind (:map python-mode-map
              ("C-c c" . gpolonkai/python-add-docstring)))

(use-package python-switch-quotes
  :ensure t
  :bind (:map python-mode-map
              ("C-c '" . python-switch-quotes)))
