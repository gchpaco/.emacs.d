(let ((bootstrap-file (concat user-emacs-directory "straight/bootstrap.el"))
      (bootstrap-version 2))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(require 'use-package)
(straight-use-package 'elhome)
(require 'elhome)
(straight-use-package
 '(hook-helpers :type git
                :repo "https://git.savannah.nongnu.org/git/hook-helpers-el.git"))
(use-package hook-helpers)

;; (require 'package)
;; (package-initialize)

;; (unless (package-installed-p 'use-package)
;;   (package-install 'use-package))

(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

(setq inhibit-startup-screen t)

(defvar package--builtin-versions
  ;; Mostly populated by loaddefs.el via autoload-builtin-package-versions.
  (purecopy `((emacs . ,(version-to-list emacs-version))))
  "Alist giving the version of each versioned builtin package.
I.e. each element of the list is of the form (NAME . VERSION) where
NAME is the package name as a symbol, and VERSION is its version
as a list.")

;; (use-package package
;;   :config
;;   (progn
;;     (add-to-list 'package-archives
;;                  '("melpa-stable" . "http://stable.melpa.org/packages/"))
;;     (add-to-list 'package-archives
;;                  '("gnu" . "http://elpa.gnu.org/packages/"))
;;     (add-to-list 'package-archives
;;                  '("elpy" . "http://jorgenschaefer.github.io/packages/"))
;;     (add-to-list 'package-archives
;;                  '("melpa" . "http://melpa.org/packages/"))
;;     (add-to-list 'package-archives
;;                  '("org" . "http://orgmode.org/elpa/"))

;;     (add-to-list 'package-archive-priorities '("melpa-stable" . 2))

;;     (add-to-list 'package-pinned-packages '(cider . "melpa") t)
;;     (add-to-list 'package-pinned-packages '(yasnippet . "melpa") t)
;;     (add-to-list 'package-pinned-packages '(jabber . "melpa") t)
;;     (add-to-list 'package-pinned-packages '(org . "org") t)
;;     (add-to-list 'package-pinned-packages '(org-plus-contrib . "org") t)

;;     (package-initialize)))

(use-package elhome
  :ensure t)

(straight-transaction
  (elhome-init))

(let ((secrets-file (locate-user-emacs-file "secrets.el" ".emacs.secrets.el")))
 (when (file-exists-p secrets-file)
   (load secrets-file)))

;; (dolist (package (list
;;                   'yasnippet
;;                   'ac-cider
;;                   'ac-clang
;;                   'ac-etags
;;                   'ac-geiser
;;                   'ac-math
;;                   'ac-slime
;;                   'ace-window
;;                   'ada-mode
;;                   'all
;;                   'ample-regexps
;;                   'anaconda-mode
;;                   'anything
;;                   'anything-complete
;;                   'anything-config
;;                   'anything-el-swank-fuzzy
;;                   'anything-extension
;;                   'anything-exuberant-ctags
;;                   'anything-git
;;                   'anything-git-files
;;                   'anything-git-goto
;;                   'anything-git-grep
;;                   'anything-ipython
;;                   'anything-match-plugin
;;                   'anything-obsolete
;;                   'anything-project
;;                   'anything-show-completion
;;                   'apache-mode
;;                   'auctex
;;                   'auctex-latexmk
;;                   'auctex-lua
;;                   'auto-complete
;;                   'auto-complete-auctex
;;                   'auto-complete-c-headers
;;                   'auto-complete-etags
;;                   'auto-complete-nxml
;;                   'auto-package-update
;;                   'auto-yasnippet
;;                   'avy
;;                   'beginend
;;                   'bibtex-utils
;;                   'bison-mode
;;                   'bookmark+
;;                   'bubbleberry-theme
;;                   'bug-hunter
;;                   'bundler
;;                   'bury-successful-compilation
;;                   'cedit
;;                   'cider
;;                   'cider-decompile
;;                   'cider-profile
;;                   'clj-refactor
;;                   'clojure-cheatsheet
;;                   'clojure-env
;;                   'clojure-mode
;;                   'clojure-mode-extra-font-locking
;;                   'clojure-snippets
;;                   'code-library
;;                   'codesearch
;;                   'coffee-mode
;;                   'color-theme
;;                   'common-lisp-snippets
;;                   'company
;;                   'company-anaconda
;;                   'company-auctex
;;                   'company-c-headers
;;                   'company-go
;;                   'company-inf-ruby
;;                   'company-irony
;;                   'company-jedi
;;                   'company-math
;;                   'corral
;;                   'counsel-dash
;;                   'crontab-mode
;;                   'cssh
;;                   'csv-mode
;;                   'dash
;;                   'dash-at-point
;;                   'deferred
;;                   'desktop+
;;                   'diminish
;;                   'dired+
;;                   'dired-filter
;;                   'dired-hacks-utils
;;                   'dired-imenu
;;                   'direx
;;                   'discover
;;                   'docker
;;                   'docker-tramp
;;                   'e2wm
;;                   'e2wm-bookmark
;;                   'e2wm-term
;;                   'edit-server
;;                   'edit-server-htmlize
;;                   'editorconfig
;;                   'ein
;;                   'elhome
;;                   'elpy
;;                   'elwm
;;                   'emr
;;                   'epkg
;;                   'eproject
;;                   'evernote-mode
;;                   'expand-region
;;                   'eyebrowse
;;                   'fancy-battery
;;                   'feature-mode
;;                   'fic-mode
;;                   'fixmee
;;                   'flycheck
;;                   'flycheck-google-cpplint
;;                   'flycheck-pyflakes
;;                   'flymake
;;                   'flymake-css
;;                   'flymake-csslint
;;                   'flymake-easy
;;                   'flymake-go
;;                   'flymake-jslint
;;                   'flymake-json
;;                   'flymake-lua
;;                   'flymake-puppet
;;                   'flymake-python-pyflakes
;;                   'flymake-ruby
;;                   'flymake-shell
;;                   'flymake-yaml
;;                   'form-feed
;;                   'fringe-helper
;;                   'geiser
;;                   'ggtags
;;                   'gh
;;                   'git-annex
;;                   'git-auto-commit-mode
;;                   'git-timemachine
;;                   'git-wip-timemachine
;;                   'gitignore-mode
;;                   'gmail-message-mode
;;                   'go-autocomplete
;;                   'go-complete
;;                   'go-direx
;;                   'go-dlv
;;                   'go-eldoc
;;                   'go-errcheck
;;                   'go-guru
;;                   'go-mode
;;                   'go-projectile
;;                   'go-snippets
;;                   'go-stacktracer
;;                   'golden-ratio
;;                   'golint
;;                   'google-c-style
;;                   'google-this
;;                   'gotest
;;                   'graphviz-dot-mode
;;                   'green-phosphor-theme
;;                   'helm
;;                   'helm-ack
;;                   'helm-ag
;;                   'helm-anything
;;                   'helm-bibtex
;;                   'helm-c-yasnippet
;;                   'helm-company
;;                   'helm-git
;;                   'helm-git-files
;;                   'helm-git-grep
;;                   'helm-go-package
;;                   'helm-google
;;                   'helm-gtags
;;                   'helm-helm-commands
;;                   'helm-itunes
;;                   'helm-ls-git
;;                   'helm-open-github
;;                   'helm-org-rifle
;;                   'helm-orgcard
;;                   'helm-package
;;                   'helm-projectile
;;                   'helm-pydoc
;;                   'helm-unicode
;;                   'hide-lines
;;                   'highlight-parentheses
;;                   'highlight-thing
;;                   'hl-indent
;;                   'homebrew-mode
;;                   'ical-pull
;;                   'icicles
;;                   'inf-clojure
;;                   'inf-ruby
;;                   'inlineR
;;                   'instapaper
;;                   'interleave
;;                   'ipython
;;                   'irony
;;                   'itail
;;                   'java-snippets
;;                   'js2-mode
;;                   'js2-refactor
;;                   'json-mode
;;                   'json-reformat
;;                   'jst
;;                   'levenshtein
;;                   'list-unicode-display
;;                   'logito
;;                   'lua-mode
;;                   'magit
;;                   'magit-annex
;;                   'magit-filenotify
;;                   'magit-find-file
;;                   'magit-gh-pulls
;;                   'magit-gitflow
;;                   'make-it-so
;;                   'markdown-mac-link
;;                   'markdown-mode
;;                   'markdown-mode+
;;                   'math-symbol-lists
;;                   'mediawiki
;;                   'minimap
;;                   'multicolumn
;;                   'multiple-cursors
;;                   'mwim
;;                   'nav-flash
;;                   'nginx-mode
;;                   'nose
;;                   'ob-go
;;                   'ob-http
;;                   'ob-mongo
;;                   'ob-redis
;;                   'ob-restclient
;;                   'objc-font-lock
;;                   'offlineimap
;;                   'omni-tags
;;                   'org
;;                   'org-ac
;;                   'org-alert
;;                   'org-beautify-theme
;;                   'org-blog
;;                   'org-bookmark-heading
;;                   'org-bullets
;;                   'org-caldav
;;                   'org-cliplink
;;                   'org-context
;;                   'org-dropbox
;;                   'org-fstree
;;                   'org-gcal
;;                   'org-gnome
;;                   'org-journal
;;                   'org-mac-iCal
;;                   'org-mac-link
;;                   'org-mobile-sync
;;                   'org-plus-contrib
;;                   'org-projectile
;;                   'org-ref
;;                   'org-repo-todo
;;                   'org-trello
;;                   'orgit
;;                   'osx-browse
;;                   'osx-clipboard
;;                   'osx-lib
;;                   'osx-pseudo-daemon
;;                   'osx-trash
;;                   'ox-gfm
;;                   'ox-pandoc
;;                   'package+
;;                   'package-safe-delete
;;                   'pandoc-mode
;;                   'paredit
;;                   'paredit-everywhere
;;                   'paredit-menu
;;                   'paxedit
;;                   'pcache
;;                   'pep8
;;                   'persp-mode
;;                   'persp-projectile
;;                   'pip-requirements
;;                   'pkg-info
;;                   'plan9-theme
;;                   'poporg
;;                   'popup
;;                   'popwin
;;                   'preproc-font-lock
;;                   'pretty-mode
;;                   'pretty-mode-plus
;;                   'pretty-symbols
;;                   'project-persist
;;                   'projectile-codesearch
;;                   'projectile-speedbar
;;                   'protobuf-mode
;;                   'pt
;;                   'puml-mode
;;                   'puppet-mode
;;                   'purty-mode
;;                   'py-autopep8
;;                   'py-gnitset
;;                   'py-smart-operator
;;                   'pydoc
;;                   'pydoc-info
;;                   'pyenv-mode
;;                   'pyfmt
;;                   'pymacs
;;                   'python
;;                   'python-docstring
;;                   'python-environment
;;                   'python-info
;;                   'python-mode
;;                   'python-pep8
;;                   'python-pylint
;;                   'pyvirtualenv
;;                   'quack
;;                   'racket-mode
;;                   'rainbow-delimiters
;;                   'rbenv
;;                   'restclient
;;                   'reveal-in-osx-finder
;;                   'rpm-spec-mode
;;                   'rspec-mode
;;                   'runner
;;                   's
;;                   'scratch-ext
;;                   'session-manager
;;                   'shell-current-directory
;;                   'shelldoc
;;                   'slamhound
;;                   'slime
;;                   'smex
;;                   'spaceline
;;                   'sparkline
;;                   'sqlup-mode
;;                   'solarized-theme
;;                   'sr-speedbar
;;                   'srefactor
;;                   'ssh
;;                   'ssh-config-mode
;;                   'swift-mode
;;                   'swiper
;;                   'sx
;;                   'syslog-mode
;;                   'tdd
;;                   'template
;;                   'tern
;;                   'tern-auto-complete
;;                   'tidy
;;                   'toggle-quotes
;;                   'top-mode
;;                   'typopunct
;;                   'unbound
;;                   'unify-opening
;;                   'uuidgen
;;                   'virtualenv
;;                   'virtualenvwrapper
;;                   'wgrep
;;                   'wgrep-helm
;;                   'wgrep-pt
;;                   'window-layout
;;                   'window-purpose
;;                   'winner-mode-enable
;;                   'with-editor
;;                   'wsd-mode
;;                   'yaml-mode))
;;   (add-to-list 'package-selected-packages package)
;;   (unless (package-installed-p package)
;;     (package-install package)))

(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'with-state 'scheme-indent-function 2)
(put 'scroll-left 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;; Efficiency hack on find file.
(remove-hook 'find-file-hooks 'vc-find-file-hook)

(setq-default magit-last-seen-setup-instructions "1.4.0")

;;; init.el ends here
