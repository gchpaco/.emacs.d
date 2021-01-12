(eval-when-compile
  (require 'use-package))

(use-package code-library
  :init (setq-default code-library-directory "~/wd/code/library/")
  :straight t)

(use-package org
  :mode ("\\.org\\'" . org-mode)
  :config
  (progn (org-babel-do-load-languages
          'org-babel-load-languages
          (append org-babel-load-languages '((dot . t)
                                             (emacs-lisp . t)
                                             (python . t))))
         (add-to-list 'org-src-lang-modes '("dot" . graphviz-dot))
         (defun bh/verify-refile-target ()
           "Exclude todo keywords with a done state from refile targets"
           (not (member (nth 2 (org-heading-components)) org-done-keywords)))

         (setq-default org-modules
                       '(org-eshell org-eww org-git-link
                                    org-mac-link org-mac-message org-bbdb
                                    org-bibtex org-docview org-gnus org-habit
                                    org-id org-info org-irc org-mhe
                                    org-protocol org-rmail org-w3m
                                    org-man org-panel
                                    ox-confluence)
                       org-outline-path-complete-in-steps nil
                       org-edit-src-content-indentation 0
                       org-src-tab-acts-natively t
                       org-src-preserve-indentation t
                       org-refile-allow-creating-parent-nodes 'confirm
                       org-refile-target-verify-function 'bh/verify-refile-target
                       org-refile-targets '((nil :maxlevel . 9)
                                            (org-agenda-files :maxlevel . 9))
                       org-refile-use-outline-path t
                       org-tag-alist '((:startgroup "Location")
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
                                       ("FLAGGED" . 63))
                       org-todo-keyword-faces '(("TODO" . org-warning)
                                                ("DOING" . "yellow")
                                                ("BLOCKED" . "red")
                                                ("REVIEW" . "orange")
                                                ("DONE" . "green")
                                                ("ARCHIVED" . "blue"))
                       org-todo-keywords
                       '((sequence "NEXT(n)" "PLANNING(P)" "INPROGRESS(i)" "WAITING(w)" "|" "ICEBOX(x)" "DONE(d)")
                         (sequence "PHONE(p)" "MEETING(m)" "|" "CANCELLED(c)")
                         (sequence "IDLE(a)")))))

(use-package org-agenda
  :bind (("\C-cA" . org-agenda)
         ("\C-cx" . org-agenda))
  :config
  (progn
    (org-clock-persistence-insinuate)
    (setq-default org-agenda-tags-todo-honor-ignore-options t
                  org-agenda-files (file-expand-wildcards
                                    "~/Dropbox/org/*.org")
                  org-agenda-include-diary t
                  org-agenda-tags-todo-honor-ignore-options t
                  org-clock-idle-time 10
                  org-clock-into-drawer "LOGBOOK"
                  org-clock-persist 'history
                  org-default-notes-file "~/Dropbox/org/refile.org"
                  org-directory "~/Dropbox/org"
                  org-export-backends '(ascii html icalendar latex md)
                  org-export-with-timestamps nil
                  org-fast-tag-selection-single-key 'expert
                  org-insert-heading-hook nil)))

(use-package org-alert
  :functions org-alert-enable
  :straight t
  :disabled t
  :init (add-hook 'after-init-hook #'org-alert-enable))

(use-package org-bookmark-heading :straight t)
(use-package org-cliplink :straight t)
(use-package org-context
  :straight t
  :config (add-hook 'after-init-hook #'org-context-activate))
(use-package org-dropbox :straight t)
(use-package org-download :straight t)
(use-package org-fstree :straight t)
(use-package org-journal :straight t)
(use-package org-projectile :straight t)
(use-package orgit :straight t)

(use-package org-capture
  :bind (("\C-cr" . org-capture)
         ("\C-cl" . org-store-link))
  :config
  (progn
    (setq-default org-capture-templates
                  '(("t" "task" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT %?
%U
%a
" :clock-in t :clock-resume t)
                    ("i" "interupt" entry
                     (file "~/Dropbox/org/refile.org")
                     "* %?
%U
%a
" :clock-in t :clock-keep t :clock-resume t)
                    ("p" "New Project" entry
                     (file "~/Dropbox/org/refile.org")
                     "* PLANNING %?
%a
" :clock-in t :clock-resume f)
                    ("P" "Phone call" entry
                     (file "~/Dropbox/org/refile.org")
                     "* PHONE Phone call with %? :PHONE:
%U" :clock-in t :clock-resume t)
                    ("m" "Meeting" entry
                     (file "~/Dropbox/org/refile.org")
                     "* MEETING with %? :MEETING:
%U" :clock-in t :clock-resume t)
                    ("s" "Scheduled Action" entry
                     (file+datetree "~/Dropbox/org/diary.org")
                     "* %?
%U
" :clock-in t :clock-resume t)
                    ("R" "Reading Link" entry
                     (file "~/Dropbox/org/refile.org")
                     "* DONE Read %c :IDLE:
%U
" :clock-in t :clock-resume f)
                    ("b" "Bookmark link" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT Read %c :BOOKMARK:IDLE:
%U
" :immediate-finish t)
                    ("r" "Read later" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT Read %c :IDLE:
%U
" :immediate-finish t)
                    ("e" "respond" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT Respond to %:from on %:subject
SCHEDULED: %t
%U
%a
" :immediate-finish t :clock-in t :clock-resume t)
                    ("W" "Emacs Buffer (eww or w3m)" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT Read %a
%U" :clock-in t :clock-resume f)
                    ("w" "org-protocol" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT Review %c
%U
" :immediate-finish t)
                    ("I" "New RIA" entry
                     (file "~/Dropbox/org/refile.org")
                     "* IDLE %? :IDLE:
%U
%a
SCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")
:PROPERTIES:
:REPEAT_TO_STATE: IDLE
:END:
")
                    ("n" "note" entry
                     (file "~/Dropbox/org/refile.org")
                     "* %? :NOTE:
%U
%a
" :clock-in t :clock-resume t)
                    ("h" "Habit" entry
                     (file "~/Dropbox/org/refile.org")
                     "* NEXT %?
%U
%a
SCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")
:PROPERTIES:
:STYLE: habit
:REPEAT_TO_STATE: NEXT
:END:
"))
                  org-remember-templates
                  '(("Todo" 116 "* TODO %^{Brief Description} %^g\\nAdded: %U\\n %i\"
" nil "Tasks" nil)
     ("Journal" 106 "\\n* %^{topic} %T \\n%i%?\\n\"
" nil nil nil)
     ("Book" 98 "\\n* %^{Book Title} %t :READING: \\n
" nil nil nil)
     ("Paper" 112 "\\n* TODO %^{Paper Title} %t :READING: \\n:PROPERTIES:\\n:Title: %?\\n:Author:\\n:Year:\\n:Book Title:\\n:END:\\nComments:\\n
" nil "Citations" nil)))))

(use-package org-protocol
  :config
  (setq-default org-protocol-project-alist
                '(("http://sigwinch.org/Graham/"
                   :base-url "http://sigwinch.org/Graham/"
                   :working-directory "/Users/ghughes/wd/web-home/"
                   :online-suffix ".html" :working-suffix ".org"))))

(use-package helm-org-rifle :straight t)

(use-package org-bullets
  :commands (org-bullets-mode)
  :straight t
  :config (add-hook 'org-mode-hook 'org-bullets-mode))

(use-package ob-go :straight t)
(use-package ob-http :straight t)
(use-package restclient :straight t)
(use-package ob-restclient :straight t)
(use-package ob-markdown :straight t)
(use-package org-projectile :straight t
  :bind (("C-c c" . org-capture)
         ("C-c n p" . org-projectile-project-todo-completing-read))
  :config
  (setq-default org-projectile-projects-file
                (expand-file-name "~/Dropbox/org/projects.org"))
  (pushnew (org-projectile-project-todo-entry) org-capture-templates)
  (dolist (file (org-projectile-todo-files))
    (pushnew file org-agenda-files)))
(use-package helm-org :straight t)
(use-package org-projectile-helm :straight t)
(use-package org-roam :straight t
  :hook (after-init . org-roam-mode)
  :custom (org-roam-directory "~/Dropbox/org")
  :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-graph))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))
              (("C-c n I" . org-roam-insert-immediate))))

(require 'org-roam-protocol)

(use-package deft
  :straight t
  :bind ("<f8>" . deft)
  :commands (deft)
  :config (setq deft-directory "~/Dropbox/org"
                deft-extensions '("md" "org")))
