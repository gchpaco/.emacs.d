(require 'elpy)
(require 'pyenv-mode)

(elpy-enable)
(elpy-use-cpython)
(add-to-list 'company-backends 'company-jedi)
(pyenv-mode)

(defun projectile-pyenv-mode-set ()
  "Set pyenv version matching project name.
Version must be already installed."
  (pyenv-mode-set (projectile-project-name)))

(add-hook 'projectile-switch-project-hook 'projectile-pyenv-mode-set)
