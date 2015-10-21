(require 'go-mode)

(add-to-list 'go-mode-hook (lambda ()
                             (setq-local tab-width 4)
                             (whitespace-mode 0)))
(add-hook 'before-save-hook #'gofmt-before-save)

(add-to-list 'exec-path "/usr/local/go/bin")
(setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin"))
(setenv "GOPATH" "/Users/ghughes/lib/go:/Users/ghughes/wd/git-work/lib/go")
