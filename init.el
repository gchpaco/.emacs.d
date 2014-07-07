;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(defvar package--builtin-versions
  ;; Mostly populated by loaddefs.el via autoload-builtin-package-versions.
  (purecopy `((emacs . ,(version-to-list emacs-version))))
  "Alist giving the version of each versioned builtin package.
I.e. each element of the list is of the form (NAME . VERSION) where
NAME is the package name as a symbol, and VERSION is its version
as a list.")

(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("elpy" .
               "http://jorgenschaefer.github.io/packages/"))
(package-initialize)
(unless (package-installed-p 'package+)
  (package-install 'package+))

(package-manifest
 'yasnippet
 'ac-etags
 'ac-geiser
 'ac-js2
 'ac-math
 'ac-slime
 'ack-and-a-half
 'ada-mode
 'align-cljlet
 'all
 'all-ext
 'ample-regexps
 'anything
 'anything-complete
 'anything-config
 'anything-el-swank-fuzzy
 'anything-extension
 'anything-exuberant-ctags
 'anything-git
 'anything-git-files
 'anything-git-goto
 'anything-git-grep
 'anything-ipython
 'anything-match-plugin
 'anything-obsolete
 'anything-show-completion
 'apache-mode
 'apt-utils
 'apt-utils-ido
 'auctex
 'auctex-latexmk
 'auctex-lua
 'auto-complete
 'auto-complete-auctex
 'auto-complete-c-headers
 'auto-complete-etags
 'auto-complete-nxml
 'auto-yasnippet
 'autopair
 'bibtex-utils
 'bison-mode
 'bubbleberry-theme
 'bundler
 'cedit
 'clojure-cheatsheet
 'clojure-mode
 'clojure-mode-extra-font-locking
 'clojure-project-mode
 'clojure-snippets
 'color-theme
 'color-theme-sanityinc-solarized
 'company
 'company-c-headers
 'company-irony
 'company-inf-ruby
 'confluence
 'crontab-mode
 'cssh
 'csv-mode
 'dash
 'deferred
 'dired-filter
 'dired-hacks-utils
 'dired+
 'dired-imenu
 'direx
 'discover
 'e2wm
 'e2wm-R
 'e2wm-bookmark
 'elhome
 'elpy
 'ein
 'ess
 'evernote-mode
 'feature-mode
 'fic-mode
 'flycheck
 'flycheck-google-cpplint
 'flycheck-pyflakes
 'flymake
 'flymake-css
 'flymake-csslint
 'flymake-easy
 'flymake-go
 'flymake-jslint
 'flymake-json
 'flymake-lua
 'flymake-puppet
 'flymake-python-pyflakes
 'flymake-ruby
 'flymake-shell
 'flymake-yaml
 'fringe-helper
 'geiser
 'gh
 'git-annex
 'git-auto-commit-mode
 'git-commit-mode
 'git-rebase-mode
 'gitignore-mode
 'gmail-message-mode
 'go-autocomplete
 'go-direx
 'go-eldoc
 'go-mode
 'go-projectile
 'go-snippets
 'google-c-style
 'google-this
 'golint
 'helm
 'helm-R
 'helm-ack
 'helm-anything
 'helm-git
 'helm-git-grep
 'helm-go-package
 'helm-gtags
 'helm-helm-commands
 'helm-ls-git
 'helm-orgcard
 'hide-lines
 'icicles
 'inf-ruby
 'inlineR
 'instapaper
 'ipython
 'irony
 'itail
 'java-snippets
 'js3-mode
 'json-mode
 'json-reformat
 'levenshtein
 'logito
 'lua-mode
 'magit
 'magit-annex
 'magit-find-file
 'magit-gh-pulls
 'magit-gitflow
 'magit-log-edit
 'magit-push-remote
 'magit-tramp
 'malabar-mode
 'make-it-so
 'markdown-mode
 'markdown-mode+
 'mediawiki
 'minimap
 'nav
 'nginx-mode
 'nose
 'nose-tests
 'nrepl
 'org
 'org-ac
 'org-blog
 'org-bullets
 'org-caldav
 'org-context
 'org-fstree
 'org-gnome
 'org-magit
 ;'org-mobile-sync
 'org-repo-todo
 'osx-browse
 'osx-pseudo-daemon
 'package+
 'paradox
 'paredit
 'paredit-everywhere
 'paredit-menu
 'pandoc-mode
 'pcache
 'pep8
 'pkg-info
 'poporg
 'popup
 'popwin
 'pretty-mode
 'pretty-symbols
 'project-mode
 'project-persist
 'pt
 'puppet-mode
 'puppetfile-mode
 'purty-mode
 'py-autopep8
 'py-gnitset
 'pydoc-info
 'pymacs
 'python
 'python-environment
 'python-info
 'python-magic
 'python-mode
 'python-pep8
 'python-pylint
 'pyvirtualenv
 'quack
 'racket-mode
 'rbenv
 'rpm-spec-mode
 'rspec-mode
 's
 'scratch-ext
 'session-manager
 'slamhound
 'slime
 'slime-clj
 'slime-fuzzy
 'shell-current-directory
 'smex
 'sparkline
 'ssh
 'ssh-config-mode
 'sqlup-mode
 'swift-mode
 'syslog-mode
 'tdd
 'tidy
 'top-mode
 'typopunct
 'unbound
 'virtualenv
 'virtualenvwrapper
 'w3m
 'window-layout)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'inversion)

;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j, and you have a working developper edition of el-get.

(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))

;; local sources
(setq el-get-sources
      '())

(setq my-packages
      (append
       '(cssh ropemacs clevercss dig dired-toggle-sudo initsplit
              org-buffers sudo-save)
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)

(elhome-init)

(defun djcb-snip (b e summ)
  "remove selected lines, and replace it with [snip:summary (n lines)]"
  (interactive "r\nsSummary:")
  (let ((n (count-lines b e)))
    (delete-region b e)
    (insert (format "[snip%s (%d line%s)]"
              (if (= 0 (length summ)) "" (concat ": " summ))
              n
              (if (= 1 n) "" "s")))))

(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'with-state 'scheme-indent-function 2)
(put 'scroll-left 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
