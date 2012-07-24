;;; wikipediafs.el --- add support for WikipediaFS

;; Copyright (C) 2009 Ben Voui

;; Author: Ben Voui <intrigeri@boum.org>
;; Maintainer: intrigeri@boum.org
;; Keywords: extensions
;; Status: Works in Emacs 23
;; Created: 2009-02-27

;; URL: git clone git://gaffer.ptitcanardnoir.org/wikipediafs-el.git

;; This program is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by the
;; Free Software Foundation; either version 2, or (at your option) any
;; later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
;; Public License for more details.
;;
;; You should have received a copy of the GNU General Public License along
;; with this program; if not, you can either send email to this program's
;; maintainer or write to: The Free Software Foundation, Inc.; 59 Temple
;; Place, Suite 330; Boston, MA 02111-1307, USA.

;;; Commentary:

;; wikipediafs.el enhances wikipedia-mode when using WikipediaFS
;; (http://wikipediafs.sourceforge.net).

;; Tested with WikipediaFS 0.3-5 from Debian Lenny, on Emacs 23 (CVS
;; snapshot).

;; Features:
;;   - changes summary, i.e. commit message: unless the buffer already has
;;     a WikipediaFS-style changes summary ([[Summary: ...]]), one is asked
;;     to enter one at buffer save time; the input text is appended to the
;;     edited file, then removed from the buffer, as WikipediaFS anyway
;;     removes it itself after using it.

;;; Dependencies:

;; wikipediafs.el requires wikipedia-mode

;;; Installation:

;; Make sure to place `wikipediafs.el` somewhere in the load-path, and add
;; the following line to your `.emacs` file:
;;     (require 'wikipediafs)

;;; Usage:

;; As of today, all provided features work in the background, and require no
;; user intervention unless prompted.

;;; Code:

(require 'wikipedia-mode)
(add-to-list 'auto-mode-alist '("\\.mw$" . wikipedia-mode))

(defgroup wikipediafs nil
  "WikipediaFS ."
  :group 'wp
  :link '(emacs-library-link "wikipedia-mode"))

(defcustom wikipediafs-summary-regexp "\\(\\[\\[Summary: .*]]\\)"
  "Regexp matching a WikipediaFS changes summary."
  :group 'wikipediafs
  :type 'regexp)

(defun is-wikipediafs-buffer ()
  "Return true if, and only if, the current buffer is a WikipediaFS one."
  (let ((current-buffer-file-extension (file-name-extension (buffer-file-name)))
	(wikipediafs-files-extension "mw")
	(wikipedia-mode-name "wikipedia-mode"))
    ; FIXME: really check whether the visited file is child of
    ; a WikipediaFS mountpoint.
    (and
     (string= major-mode wikipedia-mode-name)
     (string= current-buffer-file-extension
	      wikipediafs-files-extension))))

(defun buffer-has-wikipediafs-summary ()
  "Returns true if, and only if, the current buffer contains
  a changes summary in WikipediaFS format, using
  `wikipediafs-summary-regexp'."
  (interactive)
  (save-excursion
    (save-restriction
      (goto-char (point-min))
      (re-search-forward wikipediafs-summary-regexp (point-max) t))))

(defun maybe-insert-wikipediafs-summary ()
  "Unless the current buffer already has a changes summary in
WikipediaFS format (i.e. [[Summary: a sentence summary]]),
ask the user for a summary message and insert it.
Ignore non-WikipediaFS files.
This function is designed to be run by `before-save-hook'."
  (interactive)
  (and (is-wikipediafs-buffer)
       (not (buffer-has-wikipediafs-summary))
       (let ((msg (read-string "Changes summary: ")))
	 (save-excursion
	   (save-restriction
	     (goto-char (point-max))
	     (insert "[[Summary: " msg "]]")
	     (set-buffer-modified-p nil))))))

(defun remove-wikipediafs-summary ()
  "Remove the WikipediaFS changes summary from current buffer,
ignoring non-WikipediaFS files.
See `wikipediafs-summary-regexp'.
This function is designed to be run by `after-save-hook'."
  (interactive)
  (and (is-wikipediafs-buffer)
       (buffer-has-wikipediafs-summary)
       (delete-region (match-beginning 0) (match-end 0)))
  (set-buffer-modified-p nil))

(add-hook 'before-save-hook 'maybe-insert-wikipediafs-summary)
(add-hook 'after-save-hook 'remove-wikipediafs-summary)

(provide 'wikipediafs)

;;; wikipediafs.el ends here
