;;; python-docstring --- Gergely Polonkai's docstring creation function.
;;; Commentary:
;;; Code:

(defvar newline-and-indent t
  "Modify the behavior of the open-*-line functions to cause them to autoindent.")

(defun open-next-line (n)
  "Move to the next line and then opens a line.
See also `newline-and-indent'.  With arg N, insert N newlines."
  (interactive "p")
  (end-of-line)
  (open-line n)
  (forward-line 1)
  (when newline-and-indent
    (indent-according-to-mode)))

(defun open-previous-line (n)
  "Open a new line before the current one.
See also `newline-and-indent'.  With arg N, insert N newlines."
  (interactive "p")
  (beginning-of-line)
  (open-line n)
  (when newline-and-indent
    (indent-according-to-mode)))

(defun gpolonkai/prog-in-string-p ()
  "Return t if point is inside a string."
  (nth 3 (syntax-ppss)))

(defun gpolonkai/prog-in-comment-p ()
  "Return t if point is inside a comment."
  (nth 4 (syntax-ppss)))

(defun gpolonkai/python-add-docstring ()
  "Add a Python docstring to the current thing.

  If point is inside a function, add docstring to that.  If point
  is in a class, add docstring to that.  If neither, add
  docstring to the beginning of the file."
  (interactive)
  (save-restriction
    (widen)
    (beginning-of-defun)
    (if (not (looking-at-p "\\s-*\\(def\\|class\\) "))
        (progn
          (goto-char (point-min))
          (back-to-indentation)
          (forward-char)
          (while (gpolonkai/prog-in-comment-p)
            (forward-line)
            (back-to-indentation)
            (forward-char)))
      (search-forward ":")
      (while (or (gpolonkai/prog-in-string-p)
                 (gpolonkai/prog-in-comment-p))
        (search-forward ":")))
    (if (eq 1 (count-lines 1 (point)))
        (open-previous-line 1)
      (open-next-line 1))
    (insert "\"\"\"")
    (open-next-line 1)
    (insert "\"\"\"")
    (open-previous-line 1)))

(provide 'python-docstring)
;;; python-docstring.el ends here
