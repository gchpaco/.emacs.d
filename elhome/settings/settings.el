(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ConTeXt-engine "xetex")
 '(Info-additional-directory-list '("/opt/local/share/info" "~/.emacs.d/elhome/info"))
 '(Info-default-directory-list
   '("/home/ghughes/.emacs.d/el-get/rinari/doc" "/home/ghughes/.emacs.d/el-get/org-mode/doc" "/home/ghughes/.emacs.d/el-get/magit" "/home/ghughes/.emacs.d/el-get/emms/doc" "/home/ghughes/.emacs.d/el-get/emacs-w3m/doc" "/home/ghughes/.emacs.d/el-get/auctex/doc" "/home/ghughes/.emacs.d/elhome/info" "/usr/share/info/emacs-snapshot" "/usr/share/info/" "/usr/share/info/"))
 '(LaTeX-math-menu-unicode t)
 '(TeX-PDF-mode t)
 '(abbrev-mode t t)
 '(ack-and-a-half-executable "ack-grep")
 '(ag-highlight-search t)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 215 t)
 '(aquamacs-tool-bar-user-customization
   '((16777249 new-file open-file recent-files aquamacs-print nil copy isearch-forward nil customize help)) t)
 '(auth-sources
   '("~/.authinfo.gpg" "~/.authinfo" "~/.netrc" macos-keychain-internet))
 '(auto-insert-directory "~/wd/code/insert/")
 '(auto-insert-mode t)
 '(auto-save-file-name-transforms
   '(("\\`/[^/]*:\\([^/]*/\\)*\\([^/]*\\)\\'" "/tmp/\\2" t)
     ("^/home/ghughes/wiki/\\([^/]*/\\)*\\([^/]*\\)\\'" "/tmp/wiki/\\2" t)))
 '(backup-directory-alist
   '(("\\`/home/ghughes/wiki/\\([^/]*/\\)*\\([^/]*\\)\\'" . "/tmp/wikibackup/\\2")))
 '(bib-file "~/wd/git/citations/citations.bib")
 '(browse-url-generic-program "x-www-browser")
 '(c-default-style
   '((c-mode . "k&r")
     (c++-mode . "stroustrup")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")))
 '(code-library-directory "~/wd/code/library/")
 '(compilation-message-face 'default)
 '(compilation-mode-hook nil)
 '(copyright-names-regexp "\\(Graham Hughes\\|Citrix Systems Inc.\\|Citrix Online\\)")
 '(copyright-year-ranges t)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes '(parchment))
 '(custom-safe-themes
   '("4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "c8774324bb0b08dd35f077f6a1c760ea4ea0bb60d1332a2c7feaaeb830db0090" "5a45c8bf60607dfa077b3e23edfb8df0f37c4759356682adf7ab762ba6b10600" "2cf7f9d1d8e4d735ba53facdc3c6f3271086b6906c4165b12e4fd8e3865469a6" "43ab774fdaf34c431af3b5445eb6790f1a0b8f55d49f6fc43275aa4245730c7e" "dd1cf47034b1c20f5f43cd91ae76f00abef05f91b7be57d94653c493bcf41dda" "d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" "4ddbbccc0c15d18ef73228f2f71a33fac8c892f22889d2a460e29fe58177edfd" "ebfa8d0654af120fff174bc7ec08bf1fef63df97bdeff63161dbff6f61cef747" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "1079a2e9eff0b09ac5aad88a661a76179fac52966a1e00943cdec616f0ba71de" "338e99b0482a49d5c4f1e75f3bb69c8193c9c229bfd52bbc53e11b03a789812e" "bb7b7e7a09a02b1f9682f5d3b530a2e20ea058285c16452e2dc19af42aace5e0" "01b2b30ded8ecb3a07996cc7cdbb0a4e526d0722e56ac2847512613a3e1284c9" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "c58382b9c4fff1aa94b8e3f0f81b0212bb554e83f76957bab735f960a4c441b1" "ce6046de29b8334433c9109b256a846391c47656fcdb4c8d64b1c643c655ddb7" "72c1070a1c8101f1bfc0adc5e7f4190a380b81666897eb1a17ea2973d58fc659" "c7b050e0d698f16a188a5834572ac4a6297f909bc7db4fda49e4dfcfc1ad1076" "43963925d90085d563fa21e62623a44ce2b4d8327e6e3814fdf28179865fd730" "96936d76f48be40d64721e6a069fedc2ed1adbab71f8447016277599ddd75313" "6eaebdc2426b0edfff9fd9a7610f2fe7ddc70e01ceb869aaaf88b5ebe326a0cd" "c158c2a9f1c5fcf27598d313eec9f9dceadf131ccd10abc6448004b14984767c" "39f98624caf410e66c4e03f36a1c373ea8ed9177cd9d12dfd6c0a53825599f60" "fb7b5b24d459ccf40f44659506a111ff0df9a07117a00aaee4999952a92f056a" "cfc2fbe694e2bbd083509168f8905d232bdc99fb35ec3e98ac83baec4bbfa1ba" "780d1fcce152d3a417c5fdcf6eda99ad07653a82bbd69bcdcf2a12821beaae4a" "fe6330ecf168de137bb5eddbf9faae1ec123787b5489c14fa5fa627de1d9f82b" "fa942713c74b5ad27893e72ed8dccf791c9d39e5e7336e52d76e7125bfa51d4c" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "0b2e94037dbb1ff45cc3cd89a07901eeed93849524b574fa8daa79901b2bfdcf" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "5debeb813b180bd1c3756306cd8c83ac60fda55f85fb27249a0f2d55817e3cab" "117284df029007a8012cae1f01c3156d54a0de4b9f2f381feab47809b8a1caef" default))
 '(custom-theme-directory "~/.emacs.d/elhome/site-lisp/")
 '(debug-on-error nil)
 '(default-frame-alist
    '((menu-bar-lines . 1)
      (cursor-type . box)
      (vertical-scroll-bars . right)
      (internal-border-width . 0)
      (left-fringe . 1)
      (right-fringe)
      (fringe)))
 '(delete-by-moving-to-trash t)
 '(diary-file "~/Library/CloudStorage/Dropbox/org/diary.org")
 '(dired-bind-jump t t)
 '(dired-dwim-target t)
 '(dired-omit-files "^\\.?#\\|^\\.$\\|^\\.\\.$\\|^\\.\\|^\\.git$")
 '(dired-use-ls-dired t)
 '(display-time-mode t)
 '(ebib-latex-preamble '("\\usepackage{url}" "\\bibliographystyle{plain}"))
 '(ebib-preload-bib-files
   '("~/wd/citations/IEEEfull.bib" "~/wd/citations/citations.bib"))
 '(electric-pair-mode t)
 '(elpy-modules
   '(elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-sane-defaults))
 '(elpy-rpc-backend "jedi")
 '(elpy-rpc-python-command "python3")
 '(emms-player-mpd-music-directory "~/Music")
 '(enh-ruby-program "/home/ghughes/.rbenv/versions/1.9.3-p194/bin/ruby")
 '(erc-auto-query 'frame)
 '(erc-autojoin-channels-alist '(("sysadmin1.ops.expertcity.com" "#sysadmins")))
 '(erc-header-line-format nil)
 '(erc-insert-timestamp-function 'erc-insert-timestamp-left)
 '(erc-log-mode t)
 '(erc-log-write-after-insert t)
 '(erc-log-write-after-send t)
 '(erc-modules
   '(autojoin button completion fill irccontrols list log match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom services stamp))
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
 '(eshell-modules-list
   '(eshell-alias eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-script eshell-smart eshell-term eshell-tramp eshell-unix))
 '(fci-rule-color "#f8fce8")
 '(flycheck-python-flake8-executable "~/.emacs.d/elpy/rpc-venv/bin/flake8")
 '(flycheck-python-pyflakes-executable "~/.emacs.d/elpy/rpc-venv/bin/pyflakes")
 '(flyspell-mode-line-string nil)
 '(glasses-separator "-")
 '(glasses-uncapitalize-p t)
 '(gnus-message-archive-group "Sent")
 '(gnus-message-archive-method '(nnmaildir "Citrix" (directory "~/Mail")))
 '(gnus-select-method
   '(nnmaildir "Citrix"
               (directory "~/Mail")
               (directory-files nnheader-directory-files-safe)
               (get-new-mail nil)))
 '(gnus-update-message-archive-method t)
 '(go-oracle-command "/Users/ghughes/lib/go/bin/oracle")
 '(go-oracle-scope
   "github.com/meteor/amsterdam github.com/meteor/amsterdam/aws github.com/meteor/amsterdam/aws/draining github.com/meteor/amsterdam/awsutil github.com/meteor/amsterdam/clocktools github.com/meteor/amsterdam/cloudformation github.com/meteor/amsterdam/cloudformation/ami github.com/meteor/amsterdam/cloudformation/ami/bastion github.com/meteor/amsterdam/cloudformation/ami/instance github.com/meteor/amsterdam/cloudformation/ami/mongo github.com/meteor/amsterdam/cmds github.com/meteor/amsterdam/cmds/dockeriptablesfix github.com/meteor/amsterdam/cmds/dockernetworkcheck github.com/meteor/amsterdam/cmds/galaxyconfig github.com/meteor/amsterdam/cmds/galaxydeploy github.com/meteor/amsterdam/cmds/galaxyssh github.com/meteor/amsterdam/cmds/galaxyupload github.com/meteor/amsterdam/cmds/tailtasks github.com/meteor/amsterdam/config github.com/meteor/amsterdam/containers github.com/meteor/amsterdam/containers/aggregator github.com/meteor/amsterdam/containers/apprunner github.com/meteor/amsterdam/containers/collector github.com/meteor/amsterdam/containers/datadog github.com/meteor/amsterdam/containers/galaxydeploy github.com/meteor/amsterdam/containers/proxy github.com/meteor/amsterdam/containers/scheduler github.com/meteor/amsterdam/containers/service-base github.com/meteor/amsterdam/db github.com/meteor/amsterdam/db/metricsdb github.com/meteor/amsterdam/docs github.com/meteor/amsterdam/healthcheck github.com/meteor/amsterdam/names github.com/meteor/amsterdam/scheduler github.com/meteor/amsterdam/scheduler/planning github.com/meteor/amsterdam/selfcheck github.com/meteor/amsterdam/services github.com/meteor/amsterdam/services/aggregator github.com/meteor/amsterdam/services/collector github.com/meteor/amsterdam/services/proxy github.com/meteor/amsterdam/services/scheduler github.com/meteor/amsterdam/stats github.com/meteor/amsterdam/travis github.com/meteor/amsterdam/types github.com/meteor/amsterdam/usermetrics")
 '(gradle-mode t)
 '(helm-M-x-fuzzy-match t)
 '(helm-buffers-fuzzy-matching t)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-search-library-in-sexp t)
 '(helm-move-to-line-cycle-in-source t)
 '(helm-recentf-fuzzy-match t)
 '(helm-scroll-amount 8)
 '(helm-split-window-in-side-p t)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-parentheses-background-colors '("#e8fce8" "#c1e7f8" "#f8e8e8"))
 '(highlight-parentheses-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-paren-background-colors '("#e8fce8" "#c1e7f8" "#f8e8e8"))
 '(hl-paren-colors '("#40883f" "#0287c8" "#b85c57"))
 '(ido-enable-flex-matching t)
 '(ido-enable-tramp-completion nil)
 '(ido-everywhere nil)
 '(ido-ignore-directories '("\\`\\.git/" "\\`CVS/" "\\`\\.\\./" "\\`\\./"))
 '(ido-ignore-files
   '("\\`\\.git/" "\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./"))
 '(ido-mode 'both nil (ido))
 '(ido-use-filename-at-point nil)
 '(ido-use-url-at-point t)
 '(indent-region-mode t)
 '(indent-tabs-mode nil)
 '(inferior-lisp-program "/usr/local/bin/sbcl" t)
 '(inhibit-startup-echo-area-message "ghughes")
 '(inhibit-startup-screen t)
 '(jde-ant-enable-find t)
 '(jde-build-function '(jde-ant-build))
 '(jde-jdk '("1.6.0"))
 '(jde-jdk-registry
   '(("1.6.0" . "/System/Library/Frameworks/JavaVM.framework")))
 '(jde-mvn-nexus-url "http://acelot8/nexus")
 '(js-indent-level 2)
 '(js2-basic-offset 2 t)
 '(js2-strict-trailing-comma-warning nil t)
 '(js2-use-font-lock-faces t t)
 '(lsp-java-import-order ["java" "javax" "com" "org" "" "ca.skipthedishes" "#"])
 '(magit-diff-use-overlays nil)
 '(magit-wip-after-apply-mode t)
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(make-backup-files nil)
 '(mediawiki-site-alist
   '(("Wikipedia" "http://en.wikipedia.org/w/" "username" "password" "Main Page")
     ("Ops Wiki" "https://opswiki1.ops.expertcity.com/wiki/" "ghughes" "" "Main Page")))
 '(mediawiki-site-default "Ops Wiki")
 '(meghanada-import-static-enable
   "java.util.Objects,org.junit.Assert,org.hamcrest.Matchers,org.mockito.Mockito")
 '(menu-bar-mode t)
 '(message-send-mail-function 'smtpmail-send-it)
 '(nnmail-expiry-target "Archived")
 '(ns-alternate-modifier nil)
 '(ns-command-modifier 'meta)
 '(ns-tool-bar-display-mode 'both t)
 '(ns-tool-bar-size-mode 'regular t)
 '(org-agenda-files nil)
 '(org-agenda-include-diary t)
 '(org-agenda-tags-todo-honor-ignore-options t)
 '(org-capture-templates
   '(("p" "Project Todo" entry
      #'#[0 "\303\304\305\306\307\310\311!!\312\301\313
\314\300&	!\207"
            [nil "* TODO %?
" org-projectile-strategy occ-capture-goto-marker make-instance occ-context :category org-projectile-category-from-file org-capture-get :original-file :template :strategy :options]
            11]
      "* TODO %?
")
     ("t" "task" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT %?
%U
%a
")
     ("i" "interrupt" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* %?
%U
%a
")
     ("q" "quote" entry
      (file "~/Library/CloudStorage/Dropbox/org/quotes.org")
      "* %?
#+begin_quote
%x
#+end_quote
- %a
")
     ("p" "New Project" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* PLANNING %?
%a
")
     ("P" "Phone call" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* PHONE Phone call with %? :PHONE:
%U")
     ("m" "Meeting" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* MEETING with %? :MEETING:
%U")
     ("s" "Scheduled Action" entry
      (file+datetree "~/Library/CloudStorage/Dropbox/org/diary.org")
      "* %?
%U
")
     ("R" "Reading Link" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* DONE Read %c :IDLE:
%U
")
     ("b" "Bookmark link" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT Read %c :BOOKMARK:IDLE:
%U
" :immediate-finish t)
     ("r" "Read later" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT Read %c :IDLE:
%U
" :immediate-finish t)
     ("e" "respond" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT Respond to %:from on %:subject
SCHEDULED: %t
%U
%a
" :immediate-finish t)
     ("W" "Emacs Buffer (eww or w3m)" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT Read %a
%U")
     ("w" "org-protocol" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT Review %c
%U
" :immediate-finish t)
     ("I" "New RIA" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* IDLE %? :IDLE:
%U
%a
SCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")
:PROPERTIES:
:REPEAT_TO_STATE: IDLE
:END:
")
     ("n" "note" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* %? :NOTE:
%U
%a
")
     ("h" "Habit" entry
      (file "~/Library/CloudStorage/Dropbox/org/refile.org")
      "* NEXT %?
%U
%a
SCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")
:PROPERTIES:
:STYLE: habit
:REPEAT_TO_STATE: NEXT
:END:
")))
 '(org-clock-idle-time 10)
 '(org-clock-into-drawer "LOGBOOK")
 '(org-clock-persist 'history)
 '(org-default-notes-file "~/Library/CloudStorage/Dropbox/org/refile.org")
 '(org-directory "~/Library/CloudStorage/Dropbox/org")
 '(org-export-backends '(ascii html icalendar latex md))
 '(org-export-with-timestamps nil t)
 '(org-fast-tag-selection-single-key 'expert)
 '(org-insert-heading-hook nil)
 '(org-mac-mail-account "Meteor")
 '(org-mobile-directory "~/Library/CloudStorage/Dropbox/Apps/MobileOrg/")
 '(org-mobile-files '(org-agenda-files "recipes.org"))
 '(org-mobile-inbox-for-pull "~/Library/CloudStorage/Dropbox/Apps/MobileOrg/index.org")
 '(org-modules
   '(org-eshell org-eww org-git-link org-mac-iCal org-mac-link org-mac-message org-bbdb org-bibtex org-docview org-gnus org-habit org-id org-info org-irc org-mhe org-protocol org-rmail org-w3m org-checklist org-git-link org-mac-iCal org-mac-link org-man org-panel))
 '(org-outline-path-complete-in-steps nil)
 '(org-protocol-project-alist
   '(("http://sigwinch.org/Graham/" :base-url "http://sigwinch.org/Graham/" :working-directory "/Users/ghughes/wd/web-home/" :online-suffix ".html" :working-suffix ".org")))
 '(org-refile-allow-creating-parent-nodes 'confirm)
 '(org-refile-target-verify-function 'bh/verify-refile-target)
 '(org-refile-targets '((nil :maxlevel . 9) (org-agenda-files :maxlevel . 9)))
 '(org-refile-use-outline-path t)
 '(org-remember-templates
   '(("Todo" 116 "* TODO %^{Brief Description} %^g\\nAdded: %U\\n %i\"
" nil "Tasks" nil)
     ("Journal" 106 "\\n* %^{topic} %T \\n%i%?\\n\"
" nil nil nil)
     ("Book" 98 "\\n* %^{Book Title} %t :READING: \\n
" nil nil nil)
     ("Paper" 112 "\\n* TODO %^{Paper Title} %t :READING: \\n:PROPERTIES:\\n:Title: %?\\n:Author:\\n:Year:\\n:Book Title:\\n:END:\\nComments:\\n
" nil "Citations" nil)) t)
 '(org-roam-capture-templates
   '(("d" "default" plain #'org-roam-capture--get-point "%?" :file-name "%<%Y%m%d%H%M%S>-${slug}" :head "#+title: ${title}
" :unnarrowed t)
     ("c" "CoH RP character" plain #'org-roam-capture--get-point "%?" :file-name "coh/character/%<%Y%m%d%H%M%S>-${slug}" :head "#+title: ${title}

* Description

* Background

* Interactions" :unnarrowed t)) t)
 '(org-roam-tag-sources '(prop all-directories))
 '(org-tag-alist
   '((:startgroup "Location")
     ("@ERRANDS" . 101)
     ("@OFFICE" . 111)
     ("@HOME" . 72)
     (:endgroup)
     (:startgroup "Goal type")
     ("Stretch" . 115)
     ("Firm" . 102)
     (:endgroup)
     ("WAITING" . 119)
     ("HOLD" . 104)
     ("PERSONAL" . 80)
     ("WORK" . 87)
     ("HEALTH" . 70)
     ("SHOPPING" . 83)
     ("NOTE" . 110)
     ("CANCELLED" . 99)
     ("FLAGGED" . 63)))
 '(org-todo-keyword-faces
   '(("TODO" . org-warning)
     ("DOING" . "yellow")
     ("BLOCKED" . "red")
     ("REVIEW" . "orange")
     ("DONE" . "green")
     ("ARCHIVED" . "blue")))
 '(org-todo-keywords
   '((sequence "NEXT(n)" "PLANNING(P)" "INPROGRESS(i)" "WAITING(w)" "|" "ICEBOX(x)" "DONE(d)")
     (sequence "PHONE(p)" "MEETING(m)" "|" "CANCELLED(c)")
     (sequence "IDLE(a)")))
 '(org-trello-current-prefix-keybinding "C-c o")
 '(osx-clipboard-mode nil)
 '(outline-regexp "\\*+ " t)
 '(package-selected-packages
   '(kaleidoscope kaleidoscope-evil-state-flash zeal-at-point org-projectile-helm copy-as-format jira-markup-mode ox-jira yatemplate yasnippet scratch-ext scratch megahanda gited meghanada ob-http ob-go ox-gfm org-plus-contrib tern magithub helm-projectile helm-company helm-ag password-store terraform-mode ini-mode ztree make-it-so dired-toggle-sudo hook-helpers indent-tools pylint python-docstring protobuf-mode pyimport kubernetes org-edit-latex literal-string magit-lfs anything-tramp flycheck-flawfinder anaconda-mode python-switch-quotes blackboard-theme importmagic wand string-inflection protocol-buffer forth-mode ag ibuffer-projectile ibuffer-git rc-mode py-autopep8 fix-muscle-memory blackboard-bold-mode hyperbole grab-mac-link rbenv rbenv-mode solarized-theme python-test company-ansible ansible-doc ansible emacs-clim emacs-eclim groovy-mode yapfify modern-cpp-font-lock geiser macrostep use-package smex cssh yaml-mode wsd-mode window-purpose wgrep-pt wgrep-helm uuidgen unify-opening unbound typopunct top-mode toggle-quotes tidy syslog-mode ssh-config-mode ssh srefactor sqlup-mode spaceline shelldoc runner reveal-in-osx-finder rainbow-delimiters python-pylint python-pep8 python-info python pymacs pyfmt pyenv-mode-auto pydoc-info pydoc puppet-mode pungi projectile-speedbar projectile-codesearch pretty-mode preproc-font-lock popwin plan9-theme pip-requirements persp-projectile paredit-menu paredit-everywhere pandoc-mode package-safe-delete package+ ox-pandoc osx-trash osx-lib osx-clipboard osx-browse orgit org-ref org-projectile org-mobile-sync org-mac-link org-mac-iCal org-journal org-gcal org-fstree org-dropbox org-context org-cliplink org-caldav org-bullets org-bookmark-heading org-alert objc-font-lock ob-restclient nose multicolumn markdown-mode+ markdown-mac-link magit-gitflow magit-find-file magit-filenotify magit-annex list-unicode-display jst json-mode js2-refactor java-snippets interleave ical-pull hl-indent highlight-parentheses helm-unicode helm-pydoc helm-package helm-orgcard helm-org-rifle helm-open-github helm-ls-git helm-helm-commands helm-gtags helm-go-package helm-git-files helm-git helm-c-yasnippet helm-ack graphviz-dot-mode gotest golint golden-ratio go-stacktracer go-snippets go-projectile go-errcheck go-dlv go-direx go-complete gmail2bbdb gitignore-mode git-annex ggtags form-feed flymake-yaml flymake-shell flymake-ruby flymake-racket flymake-python-pyflakes flymake-puppet flymake-lua flymake-json flymake-go flymake-csslint flymake-css flycheck-pyflakes flycheck-google-cpplint fic-mode feature-mode eyebrowse expand-region evernote-mode eproject epkg emr elwm elpy elhome ein editorconfig edit-server-htmlize e2wm-term e2wm-bookmark docker-tramp docker dired-imenu dired-filter dired+ dash-at-point csv-mode counsel-dash corral company-math company-jedi company-irony company-inf-ruby company-go company-c-headers company-auctex company-anaconda common-lisp-snippets code-library clojure-snippets clojure-project-mode clojure-mode-extra-font-locking clojure-env clojure-cheatsheet clj-refactor cider-profile cider-decompile cedit bury-successful-compilation bibtex-utils beginend bbdb auto-yasnippet auctex-lua auctex-latexmk all ace-window))
 '(paradox-automatically-star t)
 '(paradox-execute-asynchronously t)
 '(paradox-github-token t)
 '(parens-require-spaces nil)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(projectile-mode-line '(:eval (format " Prj[%s]" (projectile-project-name))) t)
 '(projectile-other-file-alist
   '(("cc" "cpp" "h" "hpp" "ipp")
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
     ("gpg" "")))
 '(puppet-indent-level 8 t)
 '(pyenv-mode t)
 '(pylint-command "~/bin/lint")
 '(python-shell-exec-path '("/usr/local/opt/pyenv/shims/"))
 '(pyvenv-virtualenvwrapper-python "/Users/ghughes/.pyenv/shims/python")
 '(quack-default-program "mzscheme -i -l errortrace")
 '(quack-pretty-lambda-p t)
 '(reftex-plug-into-AUCTeX t)
 '(reftex-use-external-file-finders t)
 '(ropemacs-global-prefix "C-x y")
 '(safe-local-variable-values
   '((eval ignore-errors
           (add-hook 'before-save-hook 'delete-trailing-whitespace)
           (require 'whitespace)
           (set-face-attribute 'whitespace-line nil :background "red1" :foreground "yellow" :weight 'bold)
           (set-face-attribute 'whitespace-tab nil :background "red1" :foreground "yellow" :weight 'bold)
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
     (TeX-master . "paper")))
 '(sane-term-shell-command "/usr/local/bin/zsh")
 '(semanticdb-default-save-directory "~/.semantic")
 '(send-mail-function 'smtpmail-send-it)
 '(server-done-hook nil)
 '(server-switch-hook nil)
 '(server-window 'pop-to-buffer)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
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
   '(symon-darwin-cpu-monitor symon-darwin-network-rx-monitor symon-darwin-network-tx-monitor))
 '(symon-sparkline-type 'symon-sparkline-type-plain)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(todochiku-command "/Users/graham/bin/growlnotify")
 '(treemacs-show-hidden-files nil)
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-min-dir-content 3)
 '(uniquify-separator "/")
 '(unread-bib-file "~/wd/citations/to-be-read.bib")
 '(user-mail-address "graham@sigwinch.org")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
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
     (360 . "#cb4b16")))
 '(vc-annotate-very-old-color nil)
 '(visual-line-mode nil t)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))
 '(woman-manpath
   '("/usr/share/man/" "/usr/local/share/man/" "/usr/X11/man/" "/usr/local/teTeX/man" "/opt/local/man" "/Users/graham/man" "/Users/graham/share/man")))

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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t :foreground "#000000" :background "#ffffea")))
 '(lsp-ui-sideline-code-action ((t (:foreground "orange")))))
