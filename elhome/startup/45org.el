(eval-when-compile
  (require 'use-package))

(require 'cl-lib)

(defvar gch/org-dir (file-name-as-directory "/Volumes/GoogleDrive/My Drive/org"))

(use-package code-library
  :init (setq-default code-library-directory "~/wd/code/library/")
  :straight t)

(use-package org
  :mode ("\\.org\\'" . org-mode)
  :config
  (progn (org-babel-do-load-languages
          'org-babel-load-languages
          (append org-babel-load-languages '((dot . t)
                                             (ditaa . t)
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
                                    (concat gch/org-dir "*.org"))
                  org-agenda-include-diary t
                  org-agenda-tags-todo-honor-ignore-options t
                  org-clock-idle-time 10
                  org-clock-into-drawer "LOGBOOK"
                  org-clock-persist 'history
                  org-default-notes-file (concat gch/org-dir "refile.org")
                  org-directory gch/org-dir
                  org-export-backends '(ascii html icalendar latex md)
                  org-export-with-timestamps nil
                  org-fast-tag-selection-single-key 'expert
                  org-insert-heading-hook nil)))

(use-package org-alert
  :functions org-alert-enable
  :straight t
  :init (add-hook 'after-init-hook #'org-alert-enable))

(use-package org-bookmark-heading :straight t)
(use-package org-cliplink :straight t)
(use-package org-context
  :straight t
  :init (org-context-mode +1))
(use-package org-download :straight t)
(use-package org-fstree :straight t)
(use-package org-journal :straight t)
(use-package orgit :straight t)

(use-package org-capture
  :bind (("\C-cr" . org-capture)
         ("\C-cl" . org-store-link))
  :config
  (progn
    (setq-default org-capture-templates
                  `(("t" "task" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* NEXT %?
%U
%a
" :clock-in t :clock-resume t)
                    ("i" "interupt" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* %?
%U
%a
" :clock-in t :clock-keep t :clock-resume t)
                    ("p" "New Project" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* PLANNING %?
%a
" :clock-in t :clock-resume f)
                    ("P" "Phone call" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* PHONE Phone call with %? :PHONE:
%U" :clock-in t :clock-resume t)
                    ("m" "Meeting" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* MEETING with %? :MEETING:
%U" :clock-in t :clock-resume t)
                    ("s" "Scheduled Action" entry
                     (file+datetree ,(concat gch/org-dir "diary.org"))
                     "* %?
%U
" :clock-in t :clock-resume t)
                    ("R" "Reading Link" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* DONE Read %c :IDLE:
%U
" :clock-in t :clock-resume f)
                    ("b" "Bookmark link" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* NEXT Read %c :BOOKMARK:IDLE:
%U
" :immediate-finish t)
                    ("r" "Read later" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* NEXT Read %c :IDLE:
%U
" :immediate-finish t)
                    ("e" "respond" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* NEXT Respond to %:from on %:subject
SCHEDULED: %t
%U
%a
" :immediate-finish t :clock-in t :clock-resume t)
                    ("W" "Emacs Buffer (eww or w3m)" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* NEXT Read %a
%U" :clock-in t :clock-resume f)
                    ("w" "org-protocol" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* NEXT Review %c
%U
" :immediate-finish t)
                    ("I" "New RIA" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* IDLE %? :IDLE:
%U
%a
SCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")
:PROPERTIES:
:REPEAT_TO_STATE: IDLE
:END:
")
                    ("n" "note" entry
                     (file ,(concat gch/org-dir "refile.org"))
                     "* %? :NOTE:
%U
%a
" :clock-in t :clock-resume t)
                    ("h" "Habit" entry
                     (file ,(concat gch/org-dir "refile.org"))
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
                (expand-file-name (concat gch/org-dir "projects.org")))
  (add-to-list 'org-capture-templates (org-projectile-project-todo-entry))
  (dolist (file (org-projectile-todo-files))
    (add-to-list 'org-agenda-files file)))
(use-package helm-org :straight t)
(use-package org-projectile-helm :straight t)
(use-package org-roam :straight t
  :init (setq org-roam-v2-ack t)
  :custom
  (org-roam-directory gch/org-dir)
  (org-roam-completion-everywhere t)
  (org-roam-capture-templates
   '(("d" "default" plain
      "%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}" "#+title: ${title}")
      :unnarrowed t)
     ("c" "CoH RP character" plain
      "%?" :if-new (file+head "coh/character/%<%Y%m%d%H%M%S>-${slug}"
                              "#+title: ${title}\n\n* Description\n\n* Background\n\n* Interactions")
      :unnarrowed t)))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point))
  :config (org-roam-setup))

(use-package deft
  :straight t
  :bind ("<f8>" . deft)
  :commands (deft)
  :config (setq deft-directory gch/org-dir
                deft-extensions '("md" "org")))

(use-package olivetti :straight t
  :config
  (setq-default fill-column 100)
  ;; The original value is "\f\\|[ ]*$", so we add the bullets (-),
  ;; (+), and (*).  There is no need for "^" as the regexp is matched
  ;; at the beginning of line.
  (setq paragraph-start "\f\\|[ \t]*$\\|[ \t]*[-+*] "))

(defun gch/org-mode-hook ()
  (olivetti-mode)
  (flyspell-mode)
  (setq-local flyspell-generic-check-word-predicate
              (lambda ()
                (if (-contains-p
                     (let ((face (get-char-property (point) 'face)))
                       (if (listp face) face (list face)))
                     'org-link)
                    nil
                  ;; not in an org link, do the usual thing:
                  (org-mode-flyspell-verify)))))

(add-hook 'org-mode-hook 'gch/org-mode-hook)
