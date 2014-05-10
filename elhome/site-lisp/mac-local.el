;;; mac-local.el --- Local Macintosh configurations

;; Copyright (C) 2008, 2014  Graham Hughes

;; Author: Graham Hughes <graham@sigwinch.org>
;; Keywords: local

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

;;

;;; Code:

(require 'fortune)

(defun dired-open-mac ()
  (interactive)
  (let ((file-name (dired-get-file-for-visit)))
    (if (file-exists-p file-name)
	(call-process "/usr/bin/open" nil 0 nil file-name))))

(define-key dired-mode-map "c" 'dired-open-mac)

(defun my-wrap-string (str width)
  (with-temp-buffer
    (insert str)
    (let ((fill-column width))
      (fill-region (point-min) (point-max)))
    (buffer-string)))

;; Override standard startup message
(defun startup-echo-area-message ()
  (my-wrap-string
   (fortune)
   (floor (/ (frame-pixel-width) 8))))

(osx-browse-mode 1)

(provide 'mac-local)
;;; mac-local.el ends here
