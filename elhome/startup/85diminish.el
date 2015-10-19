(require 'diminish)

(with-eval-after-load 'paredit
  (diminish 'paredit-mode))
(with-eval-after-load 'eproject
  (diminish 'eproject-mode))
(with-eval-after-load 'abbrev
  (diminish 'abbrev-mode))
(with-eval-after-load 'form-feed
  (diminish 'form-feed-mode))
(with-eval-after-load 'ispell
  (diminish 'ispell-minor-mode))
(with-eval-after-load 'company
  (diminish 'company-mode))
(with-eval-after-load 'tern
  (diminish 'tern-mode))
(with-eval-after-load 'helm-mode
  (diminish 'helm-mode))
(with-eval-after-load 'emr-c
  (diminish 'emr-c-mode))
(with-eval-after-load 'flycheck
  (diminish 'flycheck-mode))
(with-eval-after-load 'py-smart-operator
  (diminish 'py-smart-operator-mode))
(with-eval-after-load 'elpy
  (diminish 'elpy-mode))
(diminish 'me-minor-mode)
(with-eval-after-load 'highlight-parentheses
  (diminish 'highlight-parentheses-mode))
(with-eval-after-load 'whitespace
  (diminish 'whitespace-mode))
(with-eval-after-load 'magit-wip
  (diminish 'magit-wip-before-change-mode)
  (diminish 'magit-wip-after-apply-mode)
  (diminish 'magit-wip-after-save-local-mode))
(with-eval-after-load 'js2-refactor
  (diminish 'js2-refactor-mode))
(with-eval-after-load 'golden-ratio
  (diminish 'golden-ratio-mode))

(spaceline-toggle-buffer-encoding-abbrev-off)
(spaceline-toggle-hud-off)
