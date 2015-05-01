(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ConTeXt-engine "xetex")
 '(Info-additional-directory-list (quote ("/opt/local/share/info" "~/.emacs.d/elhome/info")))
 '(Info-default-directory-list
   (quote
    ("/home/ghughes/.emacs.d/el-get/rinari/doc" "/home/ghughes/.emacs.d/el-get/org-mode/doc" "/home/ghughes/.emacs.d/el-get/magit" "/home/ghughes/.emacs.d/el-get/emms/doc" "/home/ghughes/.emacs.d/el-get/emacs-w3m/doc" "/home/ghughes/.emacs.d/el-get/auctex/doc" "/home/ghughes/.emacs.d/elhome/info" "/usr/share/info/emacs-snapshot" "/usr/share/info/" "/usr/share/info/")))
 '(LaTeX-math-menu-unicode t)
 '(TeX-PDF-mode t)
 '(abbrev-mode t t)
 '(ack-and-a-half-executable "ack-grep")
 '(ag-highlight-search t)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 215 t)
 '(aquamacs-tool-bar-user-customization
   (quote
    ((16777249 new-file open-file recent-files aquamacs-print nil copy isearch-forward nil customize help))) t)
 '(auto-insert-directory "~/wd/code/insert/")
 '(auto-insert-mode t)
 '(auto-save-file-name-transforms
   (quote
    (("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" "/tmp/\\2" t)
     ("^/home/ghughes/wiki/\\([^/]*/\\)*\\([^/]*\\)\\'" "/tmp/wiki/\\2" t))))
 '(backup-directory-alist
   (quote
    (("\\`/home/ghughes/wiki/\\([^/]*/\\)*\\([^/]*\\)\\'" . "/tmp/wikibackup/\\2"))))
 '(bib-file "~/wd/git/citations/citations.bib")
 '(browse-url-generic-program "x-www-browser")
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (c++-mode . "stroustrup")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(compilation-mode-hook nil)
 '(copyright-names-regexp "\\(Graham Hughes\\|Citrix Systems Inc.\\|Citrix Online\\)")
 '(copyright-year-ranges t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (plan9)))
 '(custom-safe-themes
   (quote
    ("39f98624caf410e66c4e03f36a1c373ea8ed9177cd9d12dfd6c0a53825599f60" "fb7b5b24d459ccf40f44659506a111ff0df9a07117a00aaee4999952a92f056a" "cfc2fbe694e2bbd083509168f8905d232bdc99fb35ec3e98ac83baec4bbfa1ba" "780d1fcce152d3a417c5fdcf6eda99ad07653a82bbd69bcdcf2a12821beaae4a" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "fa942713c74b5ad27893e72ed8dccf791c9d39e5e7336e52d76e7125bfa51d4c" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "0b2e94037dbb1ff45cc3cd89a07901eeed93849524b574fa8daa79901b2bfdcf" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "5debeb813b180bd1c3756306cd8c83ac60fda55f85fb27249a0f2d55817e3cab" "117284df029007a8012cae1f01c3156d54a0de4b9f2f381feab47809b8a1caef" default)))
 '(custom-theme-directory "~/.emacs.d/elhome/site-lisp/")
 '(debug-on-error nil)
 '(default-frame-alist
    (quote
     ((menu-bar-lines . 1)
      (foreground-color . "Black")
      (background-color . "White")
      (cursor-type . box)
      (cursor-color . "Red")
      (vertical-scroll-bars . right)
      (internal-border-width . 0)
      (left-fringe . 1)
      (right-fringe)
      (fringe))))
 '(delete-by-moving-to-trash t)
 '(dired-dwim-target t)
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.\\|^\\.git$")
 '(display-time-mode t)
 '(ebib-latex-preamble (quote ("\\usepackage{url}" "\\bibliographystyle{plain}")))
 '(ebib-preload-bib-files
   (quote
    ("~/wd/citations/IEEEfull.bib" "~/wd/citations/citations.bib")))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-sane-defaults)))
 '(emms-player-mpd-music-directory "~/Music")
 '(enh-ruby-program "/home/ghughes/.rbenv/versions/1.9.3-p194/bin/ruby")
 '(erc-auto-query (quote frame))
 '(erc-autojoin-channels-alist (quote (("sysadmin1.ops.expertcity.com" "#sysadmins"))))
 '(erc-header-line-format nil)
 '(erc-insert-timestamp-function (quote erc-insert-timestamp-left))
 '(erc-log-mode t)
 '(erc-log-write-after-insert t)
 '(erc-log-write-after-send t)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom services stamp)))
 '(erc-nick "ghughes")
 '(erc-pcomplete-mode t)
 '(erc-save-buffer-on-part nil)
 '(erc-save-queries-on-quit nil)
 '(erc-server "sysadmin1.ops.expertcity.com")
 '(erc-stamp-mode t)
 '(erc-timestamp-format "%H:%M.%S ")
 '(erc-timestamp-only-if-changed-flag nil)
 '(erc-track-minor-mode t)
 '(erc-track-mode t)
 '(erc-track-when-inactive t)
 '(glasses-separator "-")
 '(glasses-uncapitalize-p t)
 '(gnus-message-archive-group "Sent")
 '(gnus-message-archive-method (quote (nnmaildir "Citrix" (directory "~/Mail"))))
 '(gnus-select-method
   (quote
    (nnmaildir "Citrix"
               (directory "~/Mail")
               (directory-files nnheader-directory-files-safe)
               (get-new-mail nil))))
 '(gnus-update-message-archive-method t)
 '(helm-M-x-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-search-library-in-sexp t)
 '(helm-move-to-line-cycle-in-source t)
 '(helm-recentf-fuzzy-match t)
 '(helm-scroll-amount 8)
 '(helm-split-window-in-side-p t)
 '(ido-enable-flex-matching t)
 '(ido-enable-tramp-completion nil)
 '(ido-everywhere nil)
 '(ido-ignore-directories (quote ("\\`\\.git/" "\\`CVS/" "\\`\\.\\./" "\\`\\./")))
 '(ido-ignore-files
   (quote
    ("\\`\\.git/" "\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./")))
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point nil)
 '(ido-use-url-at-point t)
 '(indent-region-mode t)
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "/usr/local/bin/sbcl" t)
 '(inhibit-startup-screen t)
 '(jde-ant-enable-find t)
 '(jde-build-function (quote (jde-ant-build)))
 '(jde-jdk (quote ("1.6.0")))
 '(jde-jdk-registry
   (quote
    (("1.6.0" . "/System/Library/Frameworks/JavaVM.framework"))))
 '(jde-mvn-nexus-url "http://acelot8/nexus")
 '(js2-use-font-lock-faces t)
 '(markdown-command "markdown_py -x extra -o html5")
 '(mediawiki-site-alist
   (quote
    (("Wikipedia" "http://en.wikipedia.org/w/" "username" "password" "Main Page")
     ("Ops Wiki" "https://opswiki1.ops.expertcity.com/wiki/" "ghughes" "" "Main Page"))))
 '(mediawiki-site-default "Ops Wiki")
 '(menu-bar-mode t)
 '(message-send-mail-function (quote smtpmail-send-it))
 '(nnmail-expiry-target "Archived")
 '(ns-alternate-modifier nil)
 '(ns-command-modifier (quote meta))
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode (quote regular) t)
 '(org-agenda-files
   (quote
    ("~/wd/org/agenda.org" "~/wd/org/main.org" "~/wd/org/gtd.org")))
 '(org-agenda-include-diary t)
 '(org-capture-templates
   (quote
    (("t" "Todo" entry
      (file+headline "~/wd/org/gtd.org" "Tasks")
      (file "~/.emacs.d/templates/todo.org"))
     ("j" "Journal" entry
      (file+datetree "~/wd/org/journal.org")
      (file "~/.emacs.d/templates/journal.org"))
     ("w" "Web page" entry
      (file+headline "~/wd/org/refile.org" "Web capture")
      (file "~/.emacs.d/templates/webpage.org"))
     ("n" "Quick note to refile later" entry
      (file+headline "~/wd/org/refile.org" "Notes To Refile")
      (file "~/.emacs.d/templates/note.org")))))
 '(org-clock-idle-time 10)
 '(org-clock-persist (quote history))
 '(org-default-notes-file "~/wd/org/main.org")
 '(org-directory "~/Dropbox/org")
 '(org-export-backends (quote (ascii html icalendar latex md)))
 '(org-mobile-directory "~/Dropbox/Apps/MobileOrg/")
 '(org-mobile-files (quote (org-agenda-files "recipes.org")))
 '(org-mobile-inbox-for-pull "~/Dropbox/Apps/MobileOrg/index.org")
 '(org-protocol-project-alist
   (quote
    (("http://sigwinch.org/Graham/" :base-url "http://sigwinch.org/Graham/" :working-directory "/Users/ghughes/wd/web-home/" :online-suffix ".html" :working-suffix ".org"))))
 '(org-refile-targets (quote ((org-agenda-files :level . 1))))
 '(org-remember-templates
   (quote
    (("Todo" 116 "* TODO %^{Brief Description} %^g\\nAdded: %U\\n %i\"
" nil "Tasks" nil)
     ("Journal" 106 "\\n* %^{topic} %T \\n%i%?\\n\"
" nil nil nil)
     ("Book" 98 "\\n* %^{Book Title} %t :READING: \\n
" nil nil nil)
     ("Paper" 112 "\\n* TODO %^{Paper Title} %t :READING: \\n:PROPERTIES:\\n:Title: %?\\n:Author:\\n:Year:\\n:Book Title:\\n:END:\\nComments:\\n
" nil "Citations" nil))))
 '(org-todo-keyword-faces
   (quote
    (("TODO" . org-warning)
     ("DOING" . "yellow")
     ("BLOCKED" . "red")
     ("REVIEW" . "orange")
     ("DONE" . "green")
     ("ARCHIVED" . "blue"))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED"))))
 '(outline-regexp "\\*+ " t)
 '(package-selected-packages
   (quote
    (late-night-theme yaml-mode wsd-mode workgroups with-editor wisi winner-mode-enable widget-mvc wgrep-pt wgrep-helm w3m virtualenvwrapper virtualenv uuidgen unify-opening unbound typopunct top-mode toggle-quotes tidy template tdd syslog-mode symon sx swift-mode ssh-config-mode ssh srefactor sr-speedbar sqlup-mode sparkline smex smartparens slime-fuzzy slime-clj slamhound shelldoc shell-current-directory session-manager scratch-ext runner rspec-mode rpm-spec-mode restclient rbenv racket-mode quack pyvirtualenv python-pylint python-pep8 python-mode python-magic python-info python-environment pymacs pydoc-info py-gnitset py-autopep8 purty-mode puppetfile-mode puppet-mode pt protobuf-mode projectile-speedbar project-persist pretty-symbols pretty-mode-plus pretty-mode preproc-font-lock pos-tip popwin poporg pip-requirements persp-projectile persp-mode pep8 paxedit paredit-menu paredit-everywhere paradox pandoc-mode package+ ox-pandoc osx-pseudo-daemon osx-dictionary osx-clipboard osx-browse orgit org-repo-todo org-projectile org-magit org-gnome org-fstree org-context org-cliplink org-caldav org-bullets org-blog org-ac objc-font-lock nrepl nose nginx-mode mwim multiple-cursors multicolumn minimap mediawiki markdown-mode+ malabar-mode make-it-so magit-tramp magit-push-remote magit-log-edit magit-gitflow magit-gh-pulls magit-find-file magit-annex lua-mode json-mode js3-mode java-snippets itail ipython instapaper inf-clojure iedit idomenu icicles ical-pull hl-indent highlight-thing helm-pydoc helm-projectile-all helm-projectile helm-package helm-orgcard helm-open-github helm-ls-git helm-itunes helm-helm-commands helm-gtags helm-google helm-go-package helm-git-grep helm-git-files helm-git helm-company helm-c-yasnippet helm-bibtex helm-anything helm-ag helm-ack helm-R graphviz-dot-mode google-this google-c-style golint go-stacktracer go-snippets go-projectile go-direx go-autocomplete gmail-message-mode gitignore-mode git-timemachine git-auto-commit-mode git-annex ggtags fuzzy form-feed flymake-yaml flymake-shell flymake-ruby flymake-racket flymake-python-pyflakes flymake-puppet flymake-lua flymake-json flymake-jslint flymake-go flymake-csslint flymake-css flycheck-pyflakes flycheck-google-cpplint fixmee fic-mode feature-mode expand-region evernote-mode eproject emr elpy elhome ein e2wm-term e2wm-bookmark e2wm-R discover dired-imenu dired-filter dired+ csv-mode cssh crontab-mode confluence company-math company-irony company-inf-ruby company-c-headers color-theme-sanityinc-solarized color-theme coffee-mode codesearch clojure-snippets clojure-project-mode clojure-mode-extra-font-locking clojure-cheatsheet cedit bundler bubbleberry-theme bookmark+ bison-mode bibtex-utils autopair auto-yasnippet auto-package-update auto-complete-nxml auto-complete-etags auto-complete-c-headers auto-complete-auctex auctex-lua auctex-latexmk apt-utils apache-mode anything-show-completion anything-project anything-obsolete anything-match-plugin anything-ipython anything-git-grep anything-git-goto anything-git-files anything-git anything-exuberant-ctags anything-extension anything-el-swank-fuzzy anything-config anything-complete ample-regexps all-ext align-cljlet ack-and-a-half ace-window ace-jump-buffer ac-slime ac-math ac-js2 ac-geiser ac-etags ac-clang)))
 '(paradox-automatically-star t)
 '(paradox-execute-asynchronously t)
 '(paradox-github-token "3fc92a3e71a5381c6337de1221bd894c8a80cc33")
 '(projectile-other-file-alist
   (quote
    (("cc" "cpp" "h" "hpp" "ipp")
     ("ipp" "h" "hpp" "cpp" "cc")
     ("hpp" "h" "ipp" "cpp" "cc")
     ("cxx" "hxx" "ixx")
     ("ixx" "cxx" "hxx")
     ("hxx" "ixx" "cxx")
     ("c" "h")
     ("m" "h")
     ("mm" "h")
     ("h" "c" "cpp" "ipp" "hpp" "m" "mm")
     ("cc" "hh")
     ("hh" "cc")
     ("vert" "frag")
     ("frag" "vert")
     (nil "lock" "gpg")
     ("lock" "")
     ("gpg" ""))))
 '(puppet-indent-level 8)
 '(quack-default-program "mzscheme -i -l errortrace")
 '(quack-pretty-lambda-p t)
 '(reftex-plug-into-AUCTeX t)
 '(reftex-use-external-file-finders t)
 '(ropemacs-global-prefix "C-x y")
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors
           (add-hook
            (quote before-save-hook)
            (quote delete-trailing-whitespace))
           (require
            (quote whitespace))
           (set-face-attribute
            (quote whitespace-line)
            nil :background "red1" :foreground "yellow" :weight
            (quote bold))
           (set-face-attribute
            (quote whitespace-tab)
            nil :background "red1" :foreground "yellow" :weight
            (quote bold))
           "Need to ensure that whitespace mode is turned off and on again. This guaranteees that the new values of the whitespace-related variables will take effect."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face trailing lines-tail)
     (require-final-newline . t)
     (noweb-default-code-mode . java-mode)
     (Syntax . Common-Lisp)
     (Syntax . ANSI-Common-Lisp)
     (TeX-master . "paper.tex")
     (TeX-master . t)
     (TeX-master . "paper"))))
 '(sane-term-shell-command "/usr/local/bin/zsh")
 '(select-enable-clipboard t)
 '(semanticdb-default-save-directory "~/.semantic")
 '(send-mail-function (quote smtpmail-send-it))
 '(server-done-hook nil)
 '(server-switch-hook nil)
 '(server-window (quote pop-to-buffer))
 '(smtpmail-default-smtp-server "localhost:1025")
 '(smtpmail-local-domain "citrix.com")
 '(smtpmail-smtp-server "localhost")
 '(smtpmail-smtp-service 1025)
 '(smtpmail-smtp-user "EXPERTCITY\\ghughes")
 '(swank-clojure-extra-classpaths
   (list*
    (expand-file-name "~/.clojure")
    (when
        (file-directory-p "~/.clojure")
      (directory-files "~/.clojure" t ".jar$"))))
 '(swank-clojure-jar-path "/Users/graham/wd/EXTERNAL/clojure/trunk/clojure.jar")
 '(swank-clojure-library-paths nil)
 '(symon-monitors
   (quote
    (symon-darwin-cpu-monitor symon-darwin-network-rx-monitor symon-darwin-network-tx-monitor)))
 '(symon-sparkline-type (quote symon-sparkline-type-plain))
 '(todochiku-command "/Users/graham/bin/growlnotify")
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote reverse) nil (uniquify))
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-min-dir-content 3)
 '(uniquify-separator "/")
 '(unread-bib-file "~/wd/citations/to-be-read.bib")
 '(user-mail-address "graham.hughes@citrix.com")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(visual-line-mode nil t)
 '(which-function-mode t)
 '(woman-manpath
   (quote
    ("/usr/share/man/" "/usr/local/share/man/" "/usr/X11/man/" "/usr/local/teTeX/man" "/opt/local/man" "/Users/graham/man" "/Users/graham/share/man")))
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets")) nil (yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(autoface-default ((t (:inherit default))) t)
 '(emacs-lisp-mode-default ((t (:inherit autoface-default :height 120 :family "Inconsolata"))) t))

;; Check custom-file compatibility
(when (and (boundp 'aquamacs-version-id)
           (< (floor (/ aquamacs-version-id 10))
           (floor (/ aquamacs-customization-version-id 10))))
  (defadvice frame-notice-user-settings (before show-version-warning activate)
    (defvar aquamacs-backup-custom-file nil "Backup of `custom-file', if any.")
    (setq aquamacs-backup-custom-file "~/Library/Preferences/Aquamacs Emacs/customizations.2.0.el")
    (let ((msg "Aquamacs options were saved by a more recent program version.
Errors may occur.  Save Options to overwrite the customization file. The original, older customization file was backed up to ~/Library/Preferences/Aquamacs Emacs/customizations.2.0.el."))
      (if window-system
          (x-popup-dialog t (list msg '("OK" . nil) 'no-cancel) "Warning")
        (message msg)))))
;; End compatibility check
