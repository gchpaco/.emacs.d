;;; fortune.el --- Emacs fortune file

;; Copyright (C) 2008  Graham Hughes

;; Author: Graham Hughes <graham@sigwinch.org>
;; Keywords: games

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; An Emacs hack of the old standby fortune file reader, thanks to
;; Bill Clemenston.

;;; Code:

(require 'cl)
(defvar fortune-file "~/.fortune.txt"
  "The file that fortunes come from.")

(defvar fortune-strings nil
  "The fortunes in the fortune file.")

(defun open-fortune-file (file)
  (find-file file)
  (if (null fortune-strings)
      (let ((strings nil)
	    (prev 1))
	(goto-char (point-min))
	(while (re-search-forward "^%$" (point-max) t)
	  (push (buffer-substring-no-properties prev (- (point) 2))
		strings)
	  (setq prev (1+ (point))))
	(push (buffer-substring-no-properties prev (point-max)) strings)
	(setq fortune-strings (apply 'vector strings)))))

(defun fortune ()
  "Get a fortune to display."
  (interactive)
  (when (null fortune-strings)
    (open-fortune-file fortune-file)
    (kill-buffer (current-buffer)))
  (let* ((n (random (length fortune-strings)))
	 (string (aref fortune-strings n)))
    (if (interactive-p)
	(message (format "%s" string))
      string)))

(provide 'fortune)
;;; fortune.el ends here
