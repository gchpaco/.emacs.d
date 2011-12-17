;;; go-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (go-mode) "go-mode" "go-mode.el" (19341 49998))
;;; Generated autoloads from go-mode.el

(autoload 'go-mode "go-mode" "\
Major mode for editing Go source text.

This provides basic syntax highlighting for keywords, built-ins,
functions, and some types.  It also provides indentation that is
\(almost) identical to gofmt.

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go$" #'go-mode))

;;;***

;;;### (autoloads nil nil ("go-mode-pkg.el") (19341 49998 968322))

;;;***

(provide 'go-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; go-mode-autoloads.el ends here
