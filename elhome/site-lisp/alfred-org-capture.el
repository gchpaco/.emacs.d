;;; package --- Summary
;;; This is a fuction to help get a frame created for alfred-org-capture

;;; Commentary:
;;;
;;;  This is only an mvp, taken from: http://comments.gmane.org/gmane.emacs.orgmode/76348

;;; Code:
(defun make-orgcapture-frame ()
  "Create a new frame and run 'org-capture'."
  (interactive)
  (make-frame '((name . "remember") (width . 80) (height . 16)
                (top . 400) (left . 300)
                ))
  (select-frame-by-name "remember")
  (org-capture))

(provide 'alfred-org-capture)

;;; alfred-org-capture.el ends here
