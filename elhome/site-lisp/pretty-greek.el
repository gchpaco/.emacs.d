;;; pretty-greek.el --- Prettify greek and other symbols in Lisp and Haskell buffers

;; Copyright (C) 2008  Graham Hughes

;; Author: Graham Hughes <graham@sigwinch.org>
;; Keywords: languages, lisp, convenience

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

;; Hack a font-lock so that in Lispy modes, Greek letters (say, lambda) are
;; displayed as such.

;;; Code:

(require 'cl)

(defun pretty-greek ()
  (let ((greek '("alpha" "beta" "gamma" "delta" "epsilon" "zeta" "eta" "theta" "iota" "kappa" "lambda" "mu" "nu" "xi" "omicron" "pi" "rho" "sigma_final" "sigma" "tau" "upsilon" "phi" "chi" "psi" "omega")))
    (loop for word in greek
          for code = 97 then (+ 1 code)
          do  (let ((greek-char (make-char 'greek-iso8859-7 code))) 
                (font-lock-add-keywords 
		 nil
		 `((,(concatenate 'string "\\(^\\|[^a-zA-Z0-9]\\)\\(" word 
				  "\\)[a-zA-Z]")
		    (0 (progn (decompose-region (match-beginning 2)
						(match-end 2)) nil)))))
                (font-lock-add-keywords 
		 nil 
		 `((,(concatenate 'string "\\(^\\|[^a-zA-Z0-9]\\)\\("
				  word "\\)[^a-zA-Z]")
		    (0 (progn (compose-region (match-beginning 2) (match-end 2)
					      ,greek-char) nil)))))))))

(add-hook 'lisp-mode-hook 'pretty-greek)
(add-hook 'emacs-lisp-mode-hook 'pretty-greek)

(defun unicode-symbol (name)
  "Translate a symbolic name for a Unicode character -- e.g., LEFT-ARROW
or GREATER-THAN into an actual Unicode character code. "
  (decode-char 'ucs (case name
		      ;; arrows
		      ('left-arrow 8592)
		      ('up-arrow 8593)
		      ('right-arrow 8594)
		      ('down-arrow 8595)
		      
		      ;; boxes
		      ('double-vertical-bar #X2551)
		      
		      ;; relational operators
		      ('equal #X003d)
		      ('not-equal #X2260)
		      ('identical #X2261)
		      ('not-identical #X2262)
		      ('less-than #X003c)
		      ('greater-than #X003e)
		      ('less-than-or-equal-to #X2264)
		      ('greater-than-or-equal-to #X2265)
		      
		      ;; logical operators
		      ('logical-and #X2227)
		      ('logical-or #X2228)
		      ('logical-neg #X00AC)
		      
		      ;; misc
		      ('nil #X2205)
		      ('horizontal-ellipsis #X2026)
		      ('double-exclamation #X203C)
		      ('prime #X2032)
		      ('double-prime #X2033)
		      ('for-all #X2200)
		      ('there-exists #X2203)
		      ('element-of #X2208)
		      
		      ;; mathematical operators
		      ('square-root #X221A)
		      ('squared #X00B2)
		      ('cubed #X00B3)
		      
		      ;; letters
		      ('lambda #X03BB)
		      ('alpha #X03B1)
		      ('beta #X03B2)
		      ('gamma #X03B3)
		      ('delta #X03B4)
		      ('epsilon #X03B5)
		      ('zeta #X03B6)
		      ('eta #X03B7)
		      ('theta #X03B8)
		      ('iota #X03B9)
		      ('kappa #X03BA)
		      ('lambda #X03BB)
		      ('mu #X03BC)
		      ('nu #X03BD)
		      ('xi #X03BE)
		      ('omicron #X03BF)
		      ('pi #X03C0)
		      ('rho #X03C1)
		      ('sigma_final #X03C2)
		      ('sigma #X03C3)
		      ('tau #X03C4)
		      ('upsilon #X03C5)
		      ('phi #X03C6)
		      ('chi #X03C7)
		      ('psi #X03C8)
		      ('omega #X03C9))))
                        
(defun substitute-pattern-with-unicode (pattern symbol)
  "Add a font lock hook to replace the matched part of PATTERN with the 
  Unicode symbol SYMBOL looked up with UNICODE-SYMBOL."
  (interactive)
  (font-lock-add-keywords
   nil `((,pattern (0 (progn (compose-region (match-beginning 1) (match-end 1)
					     ,(unicode-symbol symbol))
			     nil))))))
  
(defun substitute-patterns-with-unicode (patterns)
  "Call SUBSTITUTE-PATTERN-WITH-UNICODE repeatedly."
  (mapcar #'(lambda (x)
	      (substitute-pattern-with-unicode (car x)
					       (cdr x)))
	  patterns))

(defun haskell-unicode ()
  (interactive)
  (substitute-patterns-with-unicode
   (list (cons "\\(<-\\)" 'left-arrow)
	 (cons "\\(->\\)" 'right-arrow)
	 (cons "\\(==\\)" 'identical)
	 (cons "\\(/=\\)" 'not-identical)
	 (cons "\\(()\\)" 'nil)
	 (cons "\\<\\(sqrt\\)\\>" 'square-root)
	 (cons "\\(&&\\)" 'logical-and)
	 (cons "\\(||\\)" 'logical-or)
	 (cons "\\<\\(not\\)\\>" 'logical-neg)
	 (cons "\\(>\\)\\[^=\\]" 'greater-than)
	 (cons "\\(<\\)\\[^=\\]" 'less-than)
	 (cons "\\(>=\\)" 'greater-than-or-equal-to)
	 (cons "\\(<=\\)" 'less-than-or-equal-to)
	 (cons "\\<\\(alpha\\)\\>" 'alpha)
	 (cons "\\<\\(beta\\)\\>" 'beta)
	 (cons "\\<\\(gamma\\)\\>" 'gamma)
	 (cons "\\<\\(delta\\)\\>" 'delta)
	 (cons "\\(''\\)" 'double-prime)
	 (cons "\\('\\)" 'prime)
	 (cons "\\(!!\\)" 'double-exclamation)
	 (cons "\\(\\.\\.\\)" 'horizontal-ellipsis))))

(add-hook 'haskell-mode 'haskell-unicode)

(provide 'pretty-greek)
;;; pretty-greek.el ends here
