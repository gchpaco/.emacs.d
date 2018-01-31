(eval-when-compile
  (require 'use-package))

(defun my-go-mode-hook ()
  (setq-local tab-width 4)
  (whitespace-mode 0))

(use-package go-mode
  :bind (:map go-mode-map
              ("C-c C-r" . go-remove-unused-imports)
              ("C-c C-k" . godoc))
  :config (progn (add-hook 'go-mode-hook #'my-go-mode-hook)
                 (add-hook 'before-save-hook #'gofmt-before-save))
  :straight t)
(use-package go-complete :straight t)
(use-package go-direx :straight t)
(use-package go-dlv :straight t)
(use-package go-eldoc
  :commands (go-eldoc-setup)
  :straight t
  :init (add-hook 'go-mode-hook #'go-eldoc-setup))
(use-package go-errcheck :straight t)
(use-package go-guru :straight t)
(use-package go-projectile :straight t)
(use-package go-snippets :straight t)
(use-package go-stacktracer :straight t)
(use-package golint :straight t)
(use-package gotest :straight t)
(use-package flymake-go :straight t)
(use-package company-go :straight t)
(use-package go-oracle
  :disabled t
  :straight t
  :init (setq-default go-oracle-command (expand-file-name "~/lib/go/bin/oracle")))

(add-to-list 'exec-path "/usr/local/go/bin")
(setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin"))
(setenv "GOPATH" "/Users/ghughes/lib/go:/Users/ghughes/wd/git-work/lib/go")
