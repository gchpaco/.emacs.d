(defun x-urgency-hint (frame arg &optional source)
  (let* ((wm-hints (append (x-window-property
                            "WM_HINTS" frame "WM_HINTS"
                            (if source
                                source
                              (string-to-number
                               (frame-parameter frame 'outer-window-id)))
                            nil t) nil))
         (flags (car wm-hints)))
    (setcar wm-hints
            (if arg
                (logior flags #x00000100)
              (logand flags #xFFFFFEFF)))
    (x-change-window-property "WM_HINTS" wm-hints frame "WM_HINTS" 32 t)))

(defun my-set-speedbar-role ()
  (x-change-window-property "WM_WINDOW_ROLE" "speedbar" nil "STRING" 8 t))
(add-hook 'speedbar-after-create-hook 'my-set-speedbar-role)
