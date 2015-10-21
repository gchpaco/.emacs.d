(require 'go-mode)

(add-to-list 'go-mode-hook (lambda ()
                             (whitespace-mode 0)))

(setenv "GOPATH" "/Users/ghughes/lib/go:/Users/ghughes/wd/git-work/lib/go")
(add-hook 'before-save-hook #'gofmt-before-save)
(add-to-list 'exec-path "/usr/local/go/bin")
(setenv "PATH" (concat (getenv "PATH") ":" "/usr/local/go/bin"))
