(eval-when-compile
  (require 'use-package))

(use-package whitespace
  :diminish whitespace-mode
  :init
  (setq whitespace-line-column 89
        whitespace-style '(face tabs trailing lines-tail))
  :config
  ;; face for long lines' tails
  (set-face-attribute 'whitespace-line nil
                      :background "red1"
                      :foreground "yellow"
                      :weight 'bold)
  ;; face for Tabs
  (set-face-attribute 'whitespace-tab nil
                      :background "red1"
                      :foreground "yellow"
                      :weight 'bold)
  (add-hook 'write-file-hooks 'delete-trailing-whitespace)
  (add-hook 'prog-mode-hook 'whitespace-mode))

(defun untabify-buffer ()
  "Untabify current buffer"
  (interactive)
  (untabify (point-min) (point-max)))

(defun progmodes-hooks ()
  "Hooks for programming modes"
  (yas-minor-mode-on)
  (add-hook 'before-save-hook 'progmodes-write-hooks))

(defun progmodes-write-hooks ()
  "Hooks which run on file write for programming modes"
  (prog1 nil
    (set-buffer-file-coding-system 'utf-8-unix)
    ;(untabify-buffer)
    (copyright-update)
    (delete-trailing-whitespace)))

(add-hook 'prog-mode-hook 'progmodes-hooks)
