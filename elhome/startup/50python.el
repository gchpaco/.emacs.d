(require 'elpy)
(require 'pyenv-mode)
(require 'anaconda-mode)
(require 'pungi)

(elpy-enable)
(elpy-use-cpython)
(add-to-list 'company-backends 'company-jedi)
(pyenv-mode)

(defun projectile-pyenv-mode-set ()
  "Set pyenv version matching project name."
  (let ((project (projectile-project-name)))
    (if (member project (pyenv-mode-versions))
        (pyenv-mode-set project)
      (pyenv-mode-unset))))

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'pungi:setup-jedi)
(add-hook 'projectile-switch-project-hook 'projectile-pyenv-mode-set)
