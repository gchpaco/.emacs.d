(define-key me-minor-mode-map [f2] 'jw-visit-source)
(define-key me-minor-mode-map [f3] 'flymake-display-err-menu-for-current-line)
(define-key me-minor-mode-map [f4] 'flymake-goto-next-error)
(define-key me-minor-mode-map "\C-ca" 'eshell)
(define-key me-minor-mode-map "\C-cA" 'org-agenda)
(define-key me-minor-mode-map "\C-cb" 'org-iswitchb)
(define-key me-minor-mode-map "\C-cB" 'speedbar-get-focus)
(define-key me-minor-mode-map "\C-cc" 'org-capture)
(define-key me-minor-mode-map "\C-ce" 'edit-as-root)
(define-key me-minor-mode-map "\C-cf" 'ffap)
(define-key me-minor-mode-map "\C-cF" 'ido-find-file-in-tag-files)
(define-key me-minor-mode-map "\C-cg" 'magit-status)
(define-key me-minor-mode-map "\C-ch" 'anything)
(define-key me-minor-mode-map "\C-ck" 'delete-pair)
(define-key me-minor-mode-map "\C-cl" 'org-store-link)
(define-key me-minor-mode-map "\C-cx" 'org-agenda)
(define-key me-minor-mode-map "\C-cm" 'woman)
(define-key me-minor-mode-map "\C-cn" 'tempo-forward-mark)
(define-key me-minor-mode-map "\C-co" 'ff-find-other-file)
(define-key me-minor-mode-map "\C-cp" 'tempo-backward-mark)
(define-key me-minor-mode-map "\C-cr" 'org-capture)
(define-key me-minor-mode-map "\C-cs" 'spell-word-noninteractively)
(define-key me-minor-mode-map "\C-cu" 'browse-url-at-point)
(define-key me-minor-mode-map "\C-\M-z" 'zap-up-to-char)
(define-key me-minor-mode-map "\C-\M-y" 'kill-ring-search)
(define-key me-minor-mode-map "\C-ctt" 'unicode-character-shortcut-insert)
(define-key me-minor-mode-map "\C-ctu" 'unicode-character-insert)
(define-key me-minor-mode-map "\C-cti" 'iso8879-character-insert)
(define-key me-minor-mode-map "\C-ct'" 'unicode-smart-single-quote)
(define-key me-minor-mode-map "\C-ct\"" 'unicode-smart-double-quote)
(define-key me-minor-mode-map (kbd "M-x") 'smex)
(define-key me-minor-mode-map (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(define-key me-minor-mode-map (kbd "C-c M-x") 'execute-extended-command)