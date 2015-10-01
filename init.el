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
;; (add-to-list 'package-archives
;;              '("marmalade" .
;;                "http://marmalade-repo.org/packages/"))
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
             '("elpy" .
               "http://jorgenschaefer.github.io/packages/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(add-to-list 'package-pinned-packages '(cider . "marmalade") t)
(add-to-list 'package-pinned-packages '(org . "org") t)
(add-to-list 'package-pinned-packages '(org-plus-contrib . "org") t)



(dolist (package (list
                  'yasnippet
                  'ac-clang
                  'ac-cider
                  'ac-etags
                  'ac-geiser
                  'ac-math
                  'ac-slime
                  'ack-and-a-half
                  'ace-jump-buffer
                  'ace-jump-mode
                  'ace-window
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
                  'anything-project
                  'anything-show-completion
                  'apache-mode
                  'apt-utils
                  'auctex
                  'auctex-latexmk
                  'auctex-lua
                  'auto-complete
                  'auto-complete-auctex
                  'auto-complete-c-headers
                  'auto-complete-etags
                  'auto-complete-nxml
                  'auto-package-update
                  'auto-yasnippet
                  'beginend
                  'bibtex-utils
                  'bison-mode
                  'bookmark+
                  'bubbleberry-theme
                  'bug-hunter
                  'bundler
                  'bury-successful-compilation
                  'cedit
                  'cider
                  'cider-decompile
                  'cider-profile
                  'clj-refactor
                  'clojure-cheatsheet
                  'clojure-env
                  'clojure-mode
                  'clojure-mode-extra-font-locking
                  'clojure-snippets
                  'codesearch
                  'coffee-mode
                  'color-theme
                  'color-theme-sanityinc-solarized
                  'common-lisp-snippets
                  'company
                  'company-c-headers
                  'company-go
                  'company-irony
                  'company-inf-ruby
                  'company-jedi
                  'company-math
                  'confluence
                  'corral
                  'crontab-mode
                  'cssh
                  'csv-mode
                  'dash
                  'deferred
                  'desktop+
                  'diminish
                  'dired-filter
                  'dired-hacks-utils
                  'dired+
                  'dired-imenu
                  'direx
                  'discover
                  'docker
                  'docker-tramp
                  'e2wm
                  'e2wm-bookmark
                  'e2wm-term
                  'elhome
                  'elpy
                  'elwm
                  'ein
                  'emr
                  'eproject
                  'ess
                  'evernote-mode
                  'expand-region
                  'eyebrowse
                  'fancy-battery
                  'feature-mode
                  'fic-mode
                  'fixmee
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
                  'form-feed
                  'fringe-helper
                  'geiser
                  'gh
                  'ggtags
                  'git-annex
                  'git-auto-commit-mode
                  'git-timemachine
                  'git-wip-timemachine
                  'gitignore-mode
                  'gmail-message-mode
                  'go-autocomplete
                  'go-direx
                  'go-eldoc
                  'go-mode
                  'go-projectile
                  'go-snippets
                  'go-stacktracer
                  'google-c-style
                  'google-this
                  'golden-ratio
                  'golint
                  'graphviz-dot-mode
                  'green-phosphor-theme
                  'helm
                  'helm-R
                  'helm-ack
                  'helm-ag
                  'helm-anything
                  'helm-bibtex
                  'helm-c-yasnippet
                  'helm-company
                  'helm-git
                  'helm-git-files
                  'helm-git-grep
                  'helm-go-package
                  'helm-google
                  'helm-gtags
                  'helm-helm-commands
                  'helm-itunes
                  'helm-ls-git
                  'helm-projectile
                  'helm-projectile-all
                  'helm-open-github
                  'helm-orgcard
                  'helm-package
                  'helm-pydoc
                  'helm-unicode
                  'hide-lines
                  'highlight-thing
                  'highlight-parentheses
                  'hl-indent
                  'homebrew-mode
                  'ical-pull
                  'icicles
                  'inf-clojure
                  'inf-ruby
                  'inlineR
                  'instapaper
                  'interleave
                  'ipython
                  'irony
                  'itail
                  'java-snippets
                  'js2-mode
                  'js2-refactor
                  'json-mode
                  'json-reformat
                  'jst
                  'levenshtein
                  'list-unicode-display
                  'logito
                  'lua-mode
                  'magit
                  'magit-annex
                  'magit-find-file
                  'magit-gh-pulls
                  'magit-gitflow
                  'magit-push-remote
                  'magit-tramp
                  'math-symbol-lists
                  'make-it-so
                  'markdown-mode
                  'markdown-mode+
                  'mediawiki
                  'minimap
                  'mwim
                  'multicolumn
                  'multiple-cursors
                  'nav-flash
                  'nginx-mode
                  'nose
                  'objc-font-lock
                  'omni-tags
                  'offlineimap
                  'org
                  'org-ac
                  'org-blog
                  'org-bullets
                  'org-caldav
                  'org-cliplink
                  'org-context
                  'org-fstree
                  ;;'org-gnome
                  'org-magit
                  ;;'org-mobile-sync
                  'org-plus-contrib
                  'org-projectile
                  'org-repo-todo
                  'org-trello
                  'orgit
                  'osx-browse
                  'osx-clipboard
                  'osx-lib
                  'osx-pseudo-daemon
                  'osx-trash
                  'ox-gfm
                  'ox-pandoc
                  'package+
                  'package-safe-delete
                  'paradox
                  'paredit
                  'paredit-everywhere
                  'paredit-menu
                  'pandoc-mode
                  'paxedit
                  'pcache
                  'pep8
                  'persp-mode
                  'persp-projectile
                  'pip-requirements
                  'pkg-info
                  'plan9-theme
                  'poporg
                  'popup
                  'popwin
                  'preproc-font-lock
                  'pretty-mode
                  'pretty-mode-plus
                  'pretty-symbols
                  'project-persist
                  'projectile-speedbar
                  'projectile-codesearch
                  'protobuf-mode
                  'pt
                  'puml-mode
                  'puppet-mode
                  'puppetfile-mode
                  'purty-mode
                  'py-autopep8
                  'py-gnitset
                  'pydoc
                  'pydoc-info
                  'pyenv-mode
                  'pyfmt
                  'pymacs
                  'python
                  'python-docstring
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
                  'restclient
                  'reveal-in-osx-finder
                  'rpm-spec-mode
                  'rspec-mode
                  'runner
                  's
                  'scratch-ext
                  'session-manager
                  'shelldoc
                  'slamhound
                  'slime
                  'slime-clj
                  'slime-fuzzy
                  'shell-current-directory
                  'smex
                  'spaceline
                  'sparkline
                  'sr-speedbar
                  'srefactor
                  'ssh
                  'ssh-config-mode
                  'sqlup-mode
                  'swift-mode
                  'swiper
                  'sx
                  'syslog-mode
                  'template
                  'tern
                  'tern-auto-complete
                  'tdd
                  'tidy
                  'toggle-quotes
                  'top-mode
                  'typopunct
                  'unbound
                  'unify-opening
                  'uuidgen
                  'virtualenv
                  'virtualenvwrapper
                  'wgrep
                  'wgrep-pt
                  'wgrep-helm
                  'window-layout
                  'winner-mode-enable
                  'with-editor
                  'wsd-mode
                  'yaml-mode))
  (unless (package-installed-p package)
    (package-install package)))

;(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'inversion)

;; So the idea is that you copy/paste this code into your *scratch* buffer,
;; hit C-j, and you have a working developper edition of el-get.

;; (unless (require 'el-get nil t)
;;   (url-retrieve
;;    "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
;;    (lambda (s)
;;      (goto-char (point-max))
;;      (eval-print-last-sexp))))

;; ;; local sources
;; (setq el-get-sources
;;       '())

;; (setq my-packages
;;       (append
;;        '(cssh clevercss dig dired-toggle-sudo initsplit
;;               org-buffers sudo-save)
;;        (mapcar 'el-get-source-name el-get-sources)))

;; (el-get 'sync my-packages)

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

(setq magit-last-seen-setup-instructions "1.4.0")
