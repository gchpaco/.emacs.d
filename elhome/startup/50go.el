(require 'go-mode)

(add-to-list 'go-mode-hook (lambda ()
                             (whitespace-mode 0)))

(setenv "GOPATH" "/Users/ghughes/lib/go:/Users/ghughes/wd/git-work/lib/go")
