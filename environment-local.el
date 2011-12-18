;;; environment-local.el --- Configure environment variables for local stuff

;; Copyright (C) 2008  Graham Hughes

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

(defun add-tex-input-dirs (basename)
  (let ((base-dir (expand-file-name basename)))
    (setenv "BSTINPUTS" (concat ".:" base-dir "/bibstyles:"
				(getenv "BSTINPUTS")))
    (setenv "BIBINPUTS" (concat ".:" base-dir ":"
				(getenv "BIBINPUTS")))
    (setenv "TEXINPUTS" (concat ".:" base-dir "/styles:"
				(getenv "TEXINPUTS")))))
(add-tex-input-dirs "~/wd/citations")
(add-tex-input-dirs "~/wd/proposals")

(unless (getenv "EDITOR")
  (setenv "EDITOR" "emacsclient"))

(setenv "PATH"
	(substring (apply #'concat (mapcar* (lambda (x)
					      (concat (expand-file-name x) ":"))
					    exec-path)) 0 -1))

(provide 'environment-local)
;;; environment-local.el ends here
