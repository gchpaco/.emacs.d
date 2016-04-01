(require 'org-install)
(require 'org)
(require 'org-protocol)
(require 'org-checklist)
(require 'org-trello)
(require 'ox-gfm)
(require 'helm-org-rifle)

(org-clock-persistence-insinuate)

(appt-activate t)

(add-hook 'org-mode-hook 'org-bullets-mode)

(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq-default org-agenda-tags-todo-honor-ignore-options t)
