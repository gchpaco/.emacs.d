(require 'org-install)
(require 'org)
(require 'org-protocol)
(require 'org-checklist)
(require 'ox-gfm)

(org-clock-persistence-insinuate)

(appt-activate t)

(add-hook 'org-mode-hook 'org-bullets-mode)
