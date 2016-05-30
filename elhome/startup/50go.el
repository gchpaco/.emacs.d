(defun my-go-mode-hook ()
  (setq-local tab-width 4)
  (whitespace-mode 0))

(use-package go-mode
  :bind (:map go-mode-map
              ("C-c C-r" . go-remove-unused-imports)
              ("C-c C-k" . godoc))
  :config (progn (add-hook 'go-mode-hook #'my-go-mode-hook)
                 (add-hook 'before-save-hook #'gofmt-before-save))
  :ensure t)
(use-package go-complete :ensure t)
(use-package go-direx :ensure t)
(use-package go-dlv :ensure t)
(use-package go-eldoc
  :commands (go-eldoc-setup)
  :ensure t
  :init (add-hook 'go-mode-hook #'go-eldoc-setup))
(use-package go-errcheck :ensure t)
(use-package go-guru :ensure t)
(use-package go-projectile :ensure t)
(use-package go-snippets :ensure t)
(use-package go-stacktracer :ensure t)
(use-package golint :ensure t)
(use-package gotest :ensure t)
(use-package flymake-go :ensure t)
(use-package company-go :ensure t)
(use-package go-oracle
  :disabled t
  :ensure t
  :init (setq-default go-oracle-command (expand-file-name "~/lib/go/bin/oracle")))

(add-to-list 'exec-path "/usr/local/go/bin")
(setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin"))
(setenv "GOPATH" "/Users/ghughes/lib/go:/Users/ghughes/wd/git-work/lib/go")
