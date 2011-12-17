;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ack) "ack/ack" "ack/ack.el" (20193 50511))
;;; Generated autoloads from ack/ack.el

(autoload 'ack "ack/ack" "\


\(fn COMMAND-ARGS)" t nil)

;;;***

;;;### (autoloads (anything-other-buffer anything-at-point anything)
;;;;;;  "anything/anything" "anything/anything.el" (20193 50624))
;;; Generated autoloads from anything/anything.el

(autoload 'anything "anything/anything" "\
Main function to execute anything sources.

Keywords supported:
:sources :input :prompt :resume :preselect :buffer :keymap :default :history
Extra keywords are supported and can be added, see below.

When call interactively with no arguments deprecated `anything-sources'
will be used if non--nil.

PLIST is a list like (:key1 val1 :key2 val2 ...) or
\(&optional sources input prompt resume preselect buffer keymap default history).

Basic keywords are the following:

:sources

Temporary value of `anything-sources'.  It also accepts a
symbol, interpreted as a variable of an anything source.  It
also accepts an alist representing an anything source, which is
detected by (assq 'name ANY-SOURCES)

:input

Temporary value of `anything-pattern', ie. initial input of minibuffer.

:prompt

Prompt other than \"pattern: \".

:resume

If t, Resurrect previously instance of `anything'.  Skip the initialization.
If 'noresume, this instance of `anything' cannot be resumed.

:preselect

Initially selected candidate.  Specified by exact candidate or a regexp.
Note that it is not working with delayed sources.

:buffer

`anything-buffer' instead of *anything*.

:keymap

`anything-map' for current `anything' session.

:default

A default argument that will be inserted in minibuffer with \\<minibuffer-local-map>\\[next-history-element].
When nil of not present `thing-at-point' will be used instead.

:history

By default all minibuffer input is pushed to `minibuffer-history',
if an argument HISTORY is provided, input will be pushed to HISTORY.
History element should be a symbol.

Of course, conventional arguments are supported, the two are same.

\(anything :sources sources :input input :prompt prompt :resume resume
           :preselect preselect :buffer buffer :keymap keymap :default default
           :history history)
\(anything sources input prompt resume preselect buffer keymap default history)

Other keywords are interpreted as local variables of this anything session.
The `anything-' prefix can be omitted.  For example,

\(anything :sources 'anything-c-source-buffers
           :buffer \"*buffers*\" :candidate-number-limit 10)

means starting anything session with `anything-c-source-buffers'
source in *buffers* buffer and set variable `anything-candidate-number-limit'
to 10 as session local variable.

\(fn &rest PLIST)" t nil)

(autoload 'anything-at-point "anything/anything" "\
Call anything with symbol at point as initial input.
ANY-SOURCES ANY-INPUT ANY-PROMPT ANY-RESUME ANY-PRESELECT and ANY-BUFFER
are same args as in `anything'.

\(fn &optional ANY-SOURCES ANY-INPUT ANY-PROMPT ANY-RESUME ANY-PRESELECT ANY-BUFFER)" t nil)

(autoload 'anything-other-buffer "anything/anything" "\
Simplified interface of `anything' with other `anything-buffer'.
Call `anything' with only ANY-SOURCES and ANY-BUFFER as args.

\(fn ANY-SOURCES ANY-BUFFER)" nil nil)

;;;***

;;;### (autoloads (anything-c-apropos anything-ucs anything-ratpoison-commands
;;;;;;  anything-c-run-external-command anything-eshell-history anything-esh-pcomplete
;;;;;;  anything-apt anything-world-time anything-select-xfont anything-top
;;;;;;  anything-create anything-execute-anything-command anything-call-source
;;;;;;  anything-surfraw anything-calcul-expression anything-eval-expression-with-eldoc
;;;;;;  anything-eval-expression anything-yaoddmuse-emacswiki-post-library
;;;;;;  anything-yaoddmuse-emacswiki-edit-or-view anything-all-mark-rings
;;;;;;  anything-global-mark-ring anything-mark-ring anything-simple-call-tree
;;;;;;  anything-bookmark-ext anything-manage-advice anything-M-x
;;;;;;  anything-filelist+ anything-filelist anything-do-zgrep anything-do-grep
;;;;;;  anything-dired-hardlink-file anything-dired-symlink-file
;;;;;;  anything-dired-copy-file anything-dired-rename-file anything-insert-file
;;;;;;  anything-write-file anything-find-files anything-c-copy-files-async
;;;;;;  anything-regexp anything-info-gnus anything-org-headlines
;;;;;;  anything-browse-code anything-occur anything-list-emacs-process
;;;;;;  anything-timers anything-bm-list anything-eev-anchors anything-emms
;;;;;;  anything-org-keywords anything-man-woman anything-register
;;;;;;  anything-c-insert-latex-math anything-c-pp-bookmarks anything-bookmarks
;;;;;;  anything-colors anything-firefox-bookmarks anything-w3m-bookmarks
;;;;;;  anything-locate anything-bbdb anything-buffers-list anything-for-buffers
;;;;;;  anything-yahoo-suggest anything-google-suggest anything-imenu
;;;;;;  anything-gentoo anything-minibuffer-history anything-show-kill-ring
;;;;;;  anything-info-emacs anything-info-at-point anything-recentf
;;;;;;  anything-for-files anything-mini anything-c-toggle-match-plugin
;;;;;;  anything-c-reset-adaptative-history anything-c-set-variable
;;;;;;  anything-c-call-interactively anything-w32-shell-execute-open-file
;;;;;;  anything-lisp-completion-or-file-name-at-point anything-lisp-completion-at-point-or-indent
;;;;;;  anything-c-complete-file-name-at-point anything-lisp-completion-at-point
;;;;;;  anything-completion-mode anything-yaoddmuse-cache-pages anything-yank-text-at-point
;;;;;;  anything-c-grep-run-save-buffer anything-c-grep-run-other-window-action
;;;;;;  anything-c-grep-run-default-action anything-c-grep-run-persistent-action
;;;;;;  anything-c-goto-next-file anything-c-goto-precedent-file
;;;;;;  anything-dired-mode anything-ff-run-kill-buffer-persistent
;;;;;;  anything-ff-persistent-delete anything-ff-properties-persistent
;;;;;;  anything-ff-run-print-file anything-ff-run-etags anything-ff-run-gnus-attach-files
;;;;;;  anything-ff-run-locate anything-ff-run-open-file-externally
;;;;;;  anything-ff-run-switch-other-frame anything-ff-run-switch-other-window
;;;;;;  anything-ff-run-switch-to-eshell anything-ff-run-complete-fn-at-point
;;;;;;  anything-ff-run-delete-file anything-ff-run-symlink-file
;;;;;;  anything-ff-run-ediff-merge-file anything-ff-run-ediff-file
;;;;;;  anything-ff-run-eshell-command-on-file anything-ff-run-load-file
;;;;;;  anything-ff-run-byte-compile-file anything-ff-run-rename-file
;;;;;;  anything-ff-run-copy-file anything-ff-run-zgrep anything-ff-run-pdfgrep
;;;;;;  anything-ff-run-grep anything-ff-run-switch-to-history anything-ff-run-toggle-auto-update
;;;;;;  anything-buffer-run-ediff anything-buffer-switch-to-elscreen
;;;;;;  anything-buffer-switch-other-frame anything-buffer-switch-other-window
;;;;;;  anything-buffer-run-query-replace anything-buffer-run-query-replace-regexp
;;;;;;  anything-buffer-run-zgrep anything-buffer-run-grep anything-buffer-run-kill-buffers
;;;;;;  anything-buffer-save-persistent anything-buffer-revert-persistent
;;;;;;  anything-buffer-diff-persistent anything-toggle-all-marks
;;;;;;  anything-unmark-all anything-mark-all anything-insert-buffer-name
;;;;;;  anything-test-sources anything-etags-help anything-pdfgrep-help
;;;;;;  anything-grep-help anything-generic-file-help anything-read-file-name-help
;;;;;;  anything-ff-help anything-c-buffer-help anything-configuration)
;;;;;;  "anything/anything-config" "anything/anything-config.el"
;;;;;;  (20193 50624))
;;; Generated autoloads from anything/anything-config.el

(autoload 'anything-configuration "anything/anything-config" "\
Customize `anything'.

\(fn)" t nil)

(defvar anything-command-map)

(autoload 'anything-c-buffer-help "anything/anything-config" "\
Help command for anything buffers.

\(fn)" t nil)

(autoload 'anything-ff-help "anything/anything-config" "\
Help command for `anything-find-files'.

\(fn)" t nil)

(autoload 'anything-read-file-name-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-generic-file-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-grep-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-pdfgrep-help "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-etags-help "anything/anything-config" "\
The help function for etags.

\(fn)" t nil)

(autoload 'anything-test-sources "anything/anything-config" "\
List all anything sources for test.
The output is sexps which are evaluated by \\[eval-last-sexp].

\(fn)" t nil)

(autoload 'anything-insert-buffer-name "anything/anything-config" "\
Insert buffer name.

\(fn)" t nil)

(autoload 'anything-mark-all "anything/anything-config" "\
Mark all visible unmarked candidates in current source.

\(fn)" t nil)

(autoload 'anything-unmark-all "anything/anything-config" "\
Unmark all candidates in all sources of current anything session.

\(fn)" t nil)

(autoload 'anything-toggle-all-marks "anything/anything-config" "\
Toggle all marks.
Mark all visible candidates of current source or unmark all candidates
visible or invisible in all sources of current anything session

\(fn)" t nil)

(autoload 'anything-buffer-diff-persistent "anything/anything-config" "\
Toggle diff buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-revert-persistent "anything/anything-config" "\
Revert buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-save-persistent "anything/anything-config" "\
Save buffer without quitting anything.

\(fn)" t nil)

(autoload 'anything-buffer-run-kill-buffers "anything/anything-config" "\
Run kill buffer action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-grep "anything/anything-config" "\
Run Grep action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-zgrep "anything/anything-config" "\
Run Grep action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-query-replace-regexp "anything/anything-config" "\
Run Query replace regexp action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-query-replace "anything/anything-config" "\
Run Query replace action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-other-window "anything/anything-config" "\
Run switch to other window action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-other-frame "anything/anything-config" "\
Run switch to other frame action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-switch-to-elscreen "anything/anything-config" "\
Run switch to elscreen  action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-buffer-run-ediff "anything/anything-config" "\
Run ediff action from `anything-c-source-buffers-list'.

\(fn)" t nil)

(autoload 'anything-ff-run-toggle-auto-update "anything/anything-config" "\


\(fn)" t nil)

(autoload 'anything-ff-run-switch-to-history "anything/anything-config" "\
Run Switch to history action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-grep "anything/anything-config" "\
Run Grep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-pdfgrep "anything/anything-config" "\
Run Pdfgrep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-zgrep "anything/anything-config" "\
Run Grep action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-copy-file "anything/anything-config" "\
Run Copy file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-rename-file "anything/anything-config" "\
Run Rename file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-byte-compile-file "anything/anything-config" "\
Run Byte compile file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-load-file "anything/anything-config" "\
Run Load file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-eshell-command-on-file "anything/anything-config" "\
Run eshell command on file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-ediff-file "anything/anything-config" "\
Run Ediff file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-ediff-merge-file "anything/anything-config" "\
Run Ediff merge file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-symlink-file "anything/anything-config" "\
Run Symlink file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-delete-file "anything/anything-config" "\
Run Delete file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-complete-fn-at-point "anything/anything-config" "\
Run complete file name action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-to-eshell "anything/anything-config" "\
Run switch to eshell action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-other-window "anything/anything-config" "\
Run switch to other window action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-switch-other-frame "anything/anything-config" "\
Run switch to other frame action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-open-file-externally "anything/anything-config" "\
Run open file externally command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-locate "anything/anything-config" "\
Run locate action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-gnus-attach-files "anything/anything-config" "\
Run gnus attach files command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-etags "anything/anything-config" "\
Run Etags command action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-run-print-file "anything/anything-config" "\
Run Print file action from `anything-c-source-find-files'.

\(fn)" t nil)

(autoload 'anything-ff-properties-persistent "anything/anything-config" "\
Show properties without quitting anything.

\(fn)" t nil)

(autoload 'anything-ff-persistent-delete "anything/anything-config" "\
Delete current candidate without quitting.

\(fn)" t nil)

(autoload 'anything-ff-run-kill-buffer-persistent "anything/anything-config" "\
Execute `anything-ff-kill-buffer-fname' whitout quitting.

\(fn)" t nil)

(defvar anything-dired-mode "Enable anything completion in Dired functions.\nBindings affected are C, R, S, H.\nThis is deprecated for Emacs24+ users, use `ac-mode' instead." "\
Non-nil if Anything-Dired mode is enabled.
See the command `anything-dired-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `anything-dired-mode'.")

(custom-autoload 'anything-dired-mode "anything/anything-config" nil)

(autoload 'anything-dired-mode "anything/anything-config" "\
Toggle Anything-Dired mode on or off.
Interactively, with no prefix argument, toggle the mode.
With universal prefix ARG turn mode on.
With zero or negative ARG turn mode off.
\\{anything-dired-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'anything-c-goto-precedent-file "anything/anything-config" "\
Go to precedent file in anything grep/etags buffers.

\(fn)" t nil)

(autoload 'anything-c-goto-next-file "anything/anything-config" "\
Go to precedent file in anything grep/etags buffers.

\(fn)" t nil)

(autoload 'anything-c-grep-run-persistent-action "anything/anything-config" "\
Run grep persistent action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-default-action "anything/anything-config" "\
Run grep default action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-other-window-action "anything/anything-config" "\
Run grep goto other window action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-c-grep-run-save-buffer "anything/anything-config" "\
Run grep save results action from `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-yank-text-at-point "anything/anything-config" "\
Yank text at point in minibuffer.

\(fn)" t nil)

(autoload 'anything-yaoddmuse-cache-pages "anything/anything-config" "\
Fetch the list of files on emacswiki and create cache file.
If load is non--nil load the file and feed `yaoddmuse-pages-hash'.

\(fn &optional LOAD)" t nil)

(defvar anything-completion-mode nil "\
Non-nil if Anything-Completion mode is enabled.
See the command `anything-completion-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `anything-completion-mode'.")

(custom-autoload 'anything-completion-mode "anything/anything-config" nil)

(autoload 'anything-completion-mode "anything/anything-config" "\
Toggle generic anything completion.

All functions in Emacs that use `completing-read'
or `read-file-name' and friends will use anything interface
when this mode is turned on.
However you can modify this behavior for functions of your choice
with `anything-completing-read-handlers-alist'.

Called with a positive arg, turn on unconditionally, with a
negative arg turn off.
You can turn it on with `ac-mode'.

Some crap emacs functions may not be supported,
e.g `ffap-alternate-file' and maybe others
You can add such functions to `anything-completing-read-handlers-alist'
with a nil value.

Note: This mode will work only partially on Emacs23.

\(fn &optional ARG)" t nil)

(autoload 'anything-lisp-completion-at-point "anything/anything-config" "\
Anything lisp symbol completion at point.

\(fn)" t nil)

(autoload 'anything-c-complete-file-name-at-point "anything/anything-config" "\
Complete file name at point.

\(fn)" t nil)

(autoload 'anything-lisp-completion-at-point-or-indent "anything/anything-config" "\
First call indent and second call complete lisp symbol.
The second call should happen before `anything-lisp-completion-or-indent-delay',
after this delay, next call will indent again.
After completion, next call is always indent.
See that like click and double mouse click.
One hit indent, two quick hits maybe indent and complete.

\(fn ARG)" t nil)

(autoload 'anything-lisp-completion-or-file-name-at-point "anything/anything-config" "\
Complete lisp symbol or filename at point.
Filename completion happen if filename is started in
or between double quotes.

\(fn)" t nil)

(autoload 'anything-w32-shell-execute-open-file "anything/anything-config" "\


\(fn FILE)" t nil)

(autoload 'anything-c-call-interactively "anything/anything-config" "\
Execute CMD-OR-NAME as Emacs command.
It is added to `extended-command-history'.
`anything-current-prefix-arg' is used as the command's prefix argument.

\(fn CMD-OR-NAME)" nil nil)

(autoload 'anything-c-set-variable "anything/anything-config" "\
Set value to VAR interactively.

\(fn VAR)" t nil)

(autoload 'anything-c-reset-adaptative-history "anything/anything-config" "\
Delete all `anything-c-adaptive-history' and his file.
Useful when you have a old or corrupted `anything-c-adaptive-history-file'.

\(fn)" t nil)

(autoload 'anything-c-toggle-match-plugin "anything/anything-config" "\
Toggle anything-match-plugin.

\(fn)" t nil)

(autoload 'anything-mini "anything/anything-config" "\
Preconfigured `anything' lightweight version (buffer -> recentf).

\(fn)" t nil)

(autoload 'anything-for-files "anything/anything-config" "\
Preconfigured `anything' for opening files.
ffap -> recentf -> buffer -> bookmark -> file-cache -> files-in-current-dir -> locate.

\(fn)" t nil)

(autoload 'anything-recentf "anything/anything-config" "\
Preconfigured `anything' for `recentf'.

\(fn)" t nil)

(autoload 'anything-info-at-point "anything/anything-config" "\
Preconfigured `anything' for searching info at point.
With a prefix-arg insert symbol at point.

\(fn ARG)" t nil)

(autoload 'anything-info-emacs "anything/anything-config" "\
Preconfigured anything for Emacs manual index.

\(fn)" t nil)

(autoload 'anything-show-kill-ring "anything/anything-config" "\
Preconfigured `anything' for `kill-ring'.
It is drop-in replacement of `yank-pop'.
You may bind this command to M-y.
First call open the kill-ring browser, next calls move to next line.

\(fn)" t nil)

(autoload 'anything-minibuffer-history "anything/anything-config" "\
Preconfigured `anything' for `minibuffer-history'.

\(fn)" t nil)

(autoload 'anything-gentoo "anything/anything-config" "\
Preconfigured `anything' for gentoo linux.

\(fn)" t nil)

(autoload 'anything-imenu "anything/anything-config" "\
Preconfigured `anything' for `imenu'.

\(fn)" t nil)

(autoload 'anything-google-suggest "anything/anything-config" "\
Preconfigured `anything' for google search with google suggest.

\(fn)" t nil)

(autoload 'anything-yahoo-suggest "anything/anything-config" "\
Preconfigured `anything' for Yahoo searching with Yahoo suggest.

\(fn)" t nil)

(autoload 'anything-for-buffers "anything/anything-config" "\
Preconfigured `anything' for buffer.

\(fn)" t nil)

(autoload 'anything-buffers-list "anything/anything-config" "\
Enhanced preconfigured `anything' for buffer.

\(fn)" t nil)

(autoload 'anything-bbdb "anything/anything-config" "\
Preconfigured `anything' for BBDB.

Needs BBDB.

http://bbdb.sourceforge.net/

\(fn)" t nil)

(autoload 'anything-locate "anything/anything-config" "\
Preconfigured `anything' for Locate.
Note: you can add locate options after entering pattern.
See 'man locate' for valid options.

You can specify a specific database with prefix argument ARG (C-u).
Many databases can be used: navigate and mark them.
See also `anything-locate-with-db'.

To create a user specific db, use
\"updatedb -l 0 -o db_path -U directory\".
Where db_path is a filename matched by
`anything-locate-db-file-regexp'.

\(fn ARG)" t nil)

(autoload 'anything-w3m-bookmarks "anything/anything-config" "\
Preconfigured `anything' for w3m bookmark.

Needs w3m and emacs-w3m.

http://w3m.sourceforge.net/
http://emacs-w3m.namazu.org/

\(fn)" t nil)

(autoload 'anything-firefox-bookmarks "anything/anything-config" "\
Preconfigured `anything' for firefox bookmark.
You will have to enable html bookmarks in firefox:
open about:config in firefox and double click on this line to enable value to true:

user_pref(\"browser.bookmarks.autoExportHTML\", false);

You should have now:

user_pref(\"browser.bookmarks.autoExportHTML\", true);

After closing firefox, you will be able to browse you bookmarks.

\(fn)" t nil)

(autoload 'anything-colors "anything/anything-config" "\
Preconfigured `anything' for color.

\(fn)" t nil)

(autoload 'anything-bookmarks "anything/anything-config" "\
Preconfigured `anything' for bookmarks.

\(fn)" t nil)

(autoload 'anything-c-pp-bookmarks "anything/anything-config" "\
Preconfigured `anything' for bookmarks (pretty-printed).

\(fn)" t nil)

(autoload 'anything-c-insert-latex-math "anything/anything-config" "\
Preconfigured anything for latex math symbols completion.

\(fn)" t nil)

(autoload 'anything-register "anything/anything-config" "\
Preconfigured `anything' for Emacs registers.

\(fn)" t nil)

(autoload 'anything-man-woman "anything/anything-config" "\
Preconfigured `anything' for Man and Woman pages.

\(fn)" t nil)

(autoload 'anything-org-keywords "anything/anything-config" "\
Preconfigured `anything' for org keywords.

\(fn)" t nil)

(autoload 'anything-emms "anything/anything-config" "\
Preconfigured `anything' for emms sources.

\(fn)" t nil)

(autoload 'anything-eev-anchors "anything/anything-config" "\
Preconfigured `anything' for eev anchors.

\(fn)" t nil)

(autoload 'anything-bm-list "anything/anything-config" "\
Preconfigured `anything' for visible bookmarks.

Needs bm.el

http://cvs.savannah.gnu.org/viewvc/*checkout*/bm/bm/bm.el

\(fn)" t nil)

(autoload 'anything-timers "anything/anything-config" "\
Preconfigured `anything' for timers.

\(fn)" t nil)

(autoload 'anything-list-emacs-process "anything/anything-config" "\
Preconfigured `anything' for emacs process.

\(fn)" t nil)

(autoload 'anything-occur "anything/anything-config" "\
Preconfigured Anything for Occur source.
If region is active, search only in region,
otherwise search in whole buffer.

\(fn)" t nil)

(autoload 'anything-browse-code "anything/anything-config" "\
Preconfigured anything to browse code.

\(fn)" t nil)

(autoload 'anything-org-headlines "anything/anything-config" "\
Preconfigured anything to show org headlines.

\(fn)" t nil)

(autoload 'anything-info-gnus "anything/anything-config" "\
Preconfigured anything to browse Gnus Manual.

\(fn)" t nil)

(autoload 'anything-regexp "anything/anything-config" "\
Preconfigured anything to build regexps.
`query-replace-regexp' can be run from there against found regexp.

\(fn)" t nil)

(autoload 'anything-c-copy-files-async "anything/anything-config" "\
Preconfigured anything to copy file list FLIST to DEST asynchronously.

\(fn)" t nil)

(autoload 'anything-find-files "anything/anything-config" "\
Preconfigured `anything' for anything implementation of `find-file'.
Called with a prefix arg show history if some.
Don't call it from programs, use `anything-find-files-1' instead.
This is the starting point for nearly all actions you can do on files.

\(fn ARG)" t nil)

(autoload 'anything-write-file "anything/anything-config" "\
Preconfigured `anything' providing completion for `write-file'.

\(fn)" t nil)

(autoload 'anything-insert-file "anything/anything-config" "\
Preconfigured `anything' providing completion for `insert-file'.

\(fn)" t nil)

(autoload 'anything-dired-rename-file "anything/anything-config" "\
Preconfigured `anything' to rename files from dired.

\(fn)" t nil)

(autoload 'anything-dired-copy-file "anything/anything-config" "\
Preconfigured `anything' to copy files from dired.

\(fn)" t nil)

(autoload 'anything-dired-symlink-file "anything/anything-config" "\
Preconfigured `anything' to symlink files from dired.

\(fn)" t nil)

(autoload 'anything-dired-hardlink-file "anything/anything-config" "\
Preconfigured `anything' to hardlink files from dired.

\(fn)" t nil)

(autoload 'anything-do-grep "anything/anything-config" "\
Preconfigured anything for grep.
Contrarily to Emacs `grep' no default directory is given, but
the full path of candidates in ONLY.
That allow to grep different files not only in `default-directory' but anywhere
by marking them (C-<SPACE>). If one or more directory is selected
grep will search in all files of these directories.
You can use also wildcard in the base name of candidate.
If a prefix arg is given use the -r option of grep.
The prefix arg can be passed before or after start.
See also `anything-do-grep-1'.

\(fn)" t nil)

(autoload 'anything-do-zgrep "anything/anything-config" "\
Preconfigured anything for zgrep.

\(fn CANDIDATE)" nil nil)

(autoload 'anything-filelist "anything/anything-config" "\
Preconfigured `anything' to open files instantly.

See `anything-c-filelist-file-name' docstring for usage.

\(fn)" t nil)

(autoload 'anything-filelist+ "anything/anything-config" "\
Preconfigured `anything' to open files/buffers/bookmarks instantly.

This is a replacement for `anything-for-files'.
See `anything-c-filelist-file-name' docstring for usage.

\(fn)" t nil)

(autoload 'anything-M-x "anything/anything-config" "\
Preconfigured `anything' for Emacs commands.
It is `anything' replacement of regular `M-x' `execute-extended-command'.

\(fn)" t nil)

(autoload 'anything-manage-advice "anything/anything-config" "\
Preconfigured `anything' to disable/enable function advices.

\(fn)" t nil)

(autoload 'anything-bookmark-ext "anything/anything-config" "\
Preconfigured `anything' for bookmark-extensions sources.
Needs bookmark-ext.el:
<http://mercurial.intuxication.org/hg/emacs-bookmark-extension>.
Contain also `anything-c-source-google-suggest'.

\(fn)" t nil)

(autoload 'anything-simple-call-tree "anything/anything-config" "\
Preconfigured `anything' for simple-call-tree. List function relationships.

Needs simple-call-tree.el.
http://www.emacswiki.org/cgi-bin/wiki/download/simple-call-tree.el

\(fn)" t nil)

(autoload 'anything-mark-ring "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-mark-ring'.

\(fn)" t nil)

(autoload 'anything-global-mark-ring "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-global-mark-ring'.

\(fn)" t nil)

(autoload 'anything-all-mark-rings "anything/anything-config" "\
Preconfigured `anything' for `anything-c-source-global-mark-ring' and `anything-c-source-mark-ring'.

\(fn)" t nil)

(autoload 'anything-yaoddmuse-emacswiki-edit-or-view "anything/anything-config" "\
Preconfigured `anything' to edit or view EmacsWiki page.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'anything-yaoddmuse-emacswiki-post-library "anything/anything-config" "\
Preconfigured `anything' to post library to EmacsWiki.

Needs yaoddmuse.el.

http://www.emacswiki.org/emacs/download/yaoddmuse.el

\(fn)" t nil)

(autoload 'anything-eval-expression "anything/anything-config" "\
Preconfigured anything for `anything-c-source-evaluation-result'.

\(fn ARG)" t nil)

(autoload 'anything-eval-expression-with-eldoc "anything/anything-config" "\
Preconfigured anything for `anything-c-source-evaluation-result' with `eldoc' support. 

\(fn)" t nil)

(autoload 'anything-calcul-expression "anything/anything-config" "\
Preconfigured anything for `anything-c-source-calculation-result'.

\(fn)" t nil)

(autoload 'anything-surfraw "anything/anything-config" "\
Preconfigured `anything' to search PATTERN with search ENGINE.

\(fn PATTERN ENGINE)" t nil)

(autoload 'anything-call-source "anything/anything-config" "\
Preconfigured `anything' to call anything source.

\(fn)" t nil)

(autoload 'anything-execute-anything-command "anything/anything-config" "\
Preconfigured `anything' to execute preconfigured `anything'.

\(fn)" t nil)

(autoload 'anything-create "anything/anything-config" "\
Preconfigured `anything' to do many create actions from STRING.
See also `anything-create--actions'.

\(fn &optional STRING INITIAL-INPUT)" t nil)

(autoload 'anything-top "anything/anything-config" "\
Preconfigured `anything' for top command.

\(fn)" t nil)

(autoload 'anything-select-xfont "anything/anything-config" "\
Preconfigured `anything' to select Xfont.

\(fn)" t nil)

(autoload 'anything-world-time "anything/anything-config" "\
Preconfigured `anything' to show world time.

\(fn)" t nil)

(autoload 'anything-apt "anything/anything-config" "\
Preconfigured `anything' : frontend of APT package manager.
With a prefix arg reload cache.

\(fn ARG)" t nil)

(autoload 'anything-esh-pcomplete "anything/anything-config" "\
Preconfigured anything to provide anything completion in eshell.

\(fn)" t nil)

(autoload 'anything-eshell-history "anything/anything-config" "\
Preconfigured anything for eshell history.

\(fn)" t nil)

(autoload 'anything-c-run-external-command "anything/anything-config" "\
Preconfigured `anything' to run External PROGRAM asyncronously from Emacs.
If program is already running exit with error.
You can set your own list of commands with
`anything-c-external-commands-list'.

\(fn PROGRAM)" t nil)

(autoload 'anything-ratpoison-commands "anything/anything-config" "\
Preconfigured `anything' to execute ratpoison commands.

\(fn)" t nil)

(autoload 'anything-ucs "anything/anything-config" "\
Preconfigured anything for `ucs-names' math symbols.

\(fn)" t nil)

(autoload 'anything-c-apropos "anything/anything-config" "\
Preconfigured anything to describe commands, functions, variables and faces.

\(fn)" t nil)

;;;***

;;;### (autoloads (apache-mode) "apache-mode/apache-mode" "apache-mode/apache-mode.el"
;;;;;;  (20191 703))
;;; Generated autoloads from apache-mode/apache-mode.el

(autoload 'apache-mode "apache-mode/apache-mode" "\
Major mode for editing Apache configuration files.

\(fn)" t nil)
(add-to-list 'auto-mode-alist '("\\.htaccess\\'"   . apache-mode))
(add-to-list 'auto-mode-alist '("httpd\\.conf\\'"  . apache-mode))
(add-to-list 'auto-mode-alist '("srm\\.conf\\'"    . apache-mode))
(add-to-list 'auto-mode-alist '("access\\.conf\\'" . apache-mode))
(add-to-list 'auto-mode-alist '("sites-\\(available\\|enabled\\)/" . apache-mode))

;;;***

;;;### (autoloads (turn-on-bib-cite bib-cite-minor-mode) "auctex/bib-cite"
;;;;;;  "auctex/bib-cite.el" (18341 54637))
;;; Generated autoloads from auctex/bib-cite.el

(autoload 'bib-cite-minor-mode "auctex/bib-cite" "\
Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs bib-find, and [mouse-3] runs bib-display.

\(fn ARG)" t nil)

(autoload 'turn-on-bib-cite "auctex/bib-cite" "\
Unconditionally turn on Bib Cite mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads (context-mode) "auctex/context" "auctex/context.el"
;;;;;;  (19707 64211))
;;; Generated autoloads from auctex/context.el

(defalias 'ConTeXt-mode 'context-mode)

(autoload 'context-mode "auctex/context" "\
Major mode in AUCTeX for editing ConTeXt files.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads (context-en-mode) "auctex/context-en" "auctex/context-en.el"
;;;;;;  (19618 16518))
;;; Generated autoloads from auctex/context-en.el

(autoload 'context-en-mode "auctex/context-en" "\
Major mode for editing files for ConTeXt using its english interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads (context-nl-mode) "auctex/context-nl" "auctex/context-nl.el"
;;;;;;  (19618 16529))
;;; Generated autoloads from auctex/context-nl.el

(autoload 'context-nl-mode "auctex/context-nl" "\
Major mode for editing files for ConTeXt using its dutch interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook.

\(fn)" t nil)

;;;***

;;;### (autoloads (font-latex-setup) "auctex/font-latex" "auctex/font-latex.el"
;;;;;;  (19901 29725))
;;; Generated autoloads from auctex/font-latex.el

(autoload 'font-latex-setup "auctex/font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook.

\(fn)" nil nil)

;;;***

;;;### (autoloads (docTeX-mode TeX-latex-mode BibTeX-auto-store)
;;;;;;  "auctex/latex" "auctex/latex.el" (20030 45082))
;;; Generated autoloads from auctex/latex.el

(autoload 'BibTeX-auto-store "auctex/latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file.

\(fn)" nil nil)

(add-to-list 'auto-mode-alist '("\\.drv\\'" . latex-mode))

(autoload 'TeX-latex-mode "auctex/latex" "\
Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Special commands:
\\{LaTeX-mode-map}

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.dtx\\'" . doctex-mode))

(autoload 'docTeX-mode "auctex/latex" "\
Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'.

\(fn)" t nil)

(defalias 'TeX-doctex-mode 'docTeX-mode)

;;;***

;;;### (autoloads (multi-prompt-key-value multi-prompt) "auctex/multi-prompt"
;;;;;;  "auctex/multi-prompt.el" (18915 28236))
;;; Generated autoloads from auctex/multi-prompt.el

(autoload 'multi-prompt "auctex/multi-prompt" "\
Completing prompt for a list of strings.  
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that.

\(fn SEPARATOR UNIQUE PROMPT TABLE &optional MP-PREDICATE REQUIRE-MATCH INITIAL HISTORY)" nil nil)

(autoload 'multi-prompt-key-value "auctex/multi-prompt" "\
Read multiple strings, with completion and key=value support.
PROMPT is a string to prompt with, usually ending with a colon
and a space.  TABLE is an alist.  The car of each element should
be a string representing a key and the optional cdr should be a
list with strings to be used as values for the key.

See the documentation for `completing-read' for details on the
other arguments: PREDICATE, REQUIRE-MATCH, INITIAL-INPUT, HIST,
DEF, and INHERIT-INPUT-METHOD.

The return value is the string as entered in the minibuffer.

\(fn PROMPT TABLE &optional PREDICATE REQUIRE-MATCH INITIAL-INPUT HIST DEF INHERIT-INPUT-METHOD)" nil nil)

;;;***

;;;### (autoloads (ams-tex-mode TeX-plain-tex-mode) "auctex/plain-tex"
;;;;;;  "auctex/plain-tex.el" (19707 64159))
;;; Generated autoloads from auctex/plain-tex.el

(autoload 'TeX-plain-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of plain-TeX-mode-hook.

\(fn)" t nil)

(autoload 'ams-tex-mode "auctex/plain-tex" "\
Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering AmS-tex-mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (preview-report-bug LaTeX-preview-setup preview-install-styles)
;;;;;;  "auctex/preview/preview" "auctex/preview/preview.el" (19772
;;;;;;  31043))
;;; Generated autoloads from auctex/preview/preview.el

(autoload 'preview-install-styles "auctex/preview/preview" "\
Installs the TeX style files into a permanent location.
This must be in the TeX search path.  If FORCE-OVERWRITE is greater
than 1, files will get overwritten without query, if it is less
than 1 or nil, the operation will fail.  The default of 1 for interactive
use will query.

Similarly FORCE-SAVE can be used for saving
`preview-TeX-style-dir' to record the fact that the uninstalled
files are no longer needed in the search path.

\(fn DIR &optional FORCE-OVERWRITE FORCE-SAVE)" t nil)

(autoload 'LaTeX-preview-setup "auctex/preview/preview" "\
Hook function for embedding the preview package into AUCTeX.
This is called by `LaTeX-mode-hook' and changes AUCTeX variables
to add the preview functionality.

\(fn)" nil nil)
 (add-hook 'LaTeX-mode-hook #'LaTeX-preview-setup)

(autoload 'preview-report-bug "auctex/preview/preview" "\
Report a bug in the preview-latex package.

\(fn)" t nil)

;;;***

;;;### (autoloads (TeX-submit-bug-report TeX-auto-generate-global
;;;;;;  TeX-auto-generate TeX-tex-mode) "auctex/tex" "auctex/tex.el"
;;;;;;  (20053 9649))
;;; Generated autoloads from auctex/tex.el

(autoload 'TeX-tex-mode "auctex/tex" "\
Major mode in AUCTeX for editing TeX or LaTeX files.
Tries to guess whether this file is for plain TeX or LaTeX.

The algorithm is as follows:

   1) if the file is empty or `TeX-force-default-mode' is not set to nil,
      `TeX-default-mode' is chosen
   2) If \\documentstyle or \\begin{, \\section{, \\part{ or \\chapter{ is
      found, `latex-mode' is selected.
   3) Otherwise, use `plain-tex-mode'

\(fn)" t nil)

(autoload 'TeX-auto-generate "auctex/tex" "\
Generate style file for TEX and store it in AUTO.
If TEX is a directory, generate style files for all files in the directory.

\(fn TEX AUTO)" t nil)

(autoload 'TeX-auto-generate-global "auctex/tex" "\
Create global auto directory for global TeX macro definitions.

\(fn)" t nil)

(autoload 'TeX-submit-bug-report "auctex/tex" "\
Submit a bug report on AUCTeX via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your AUCTeX version and AUCTeX configuration.

\(fn)" t nil)

;;;***

;;;### (autoloads (LaTeX-install-toolbar TeX-install-toolbar) "auctex/tex-bar"
;;;;;;  "auctex/tex-bar.el" (18580 49499))
;;; Generated autoloads from auctex/tex-bar.el

(autoload 'TeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for TeX mode.

\(fn)" t nil)

(autoload 'LaTeX-install-toolbar "auctex/tex-bar" "\
Install toolbar buttons for LaTeX mode.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "auctex/tex-fold" "auctex/tex-fold.el" (19887
;;;;;;  15736))
;;; Generated autoloads from auctex/tex-fold.el
 (autoload 'TeX-fold-mode "tex-fold" "Minor mode for hiding and revealing macros and environments." t)

(defalias 'tex-fold-mode 'TeX-fold-mode)

;;;***

;;;### (autoloads (tex-font-setup) "auctex/tex-font" "auctex/tex-font.el"
;;;;;;  (18341 54636))
;;; Generated autoloads from auctex/tex-font.el

(autoload 'tex-font-setup "auctex/tex-font" "\
Setup font lock support for TeX.

\(fn)" nil nil)

;;;***

;;;### (autoloads (TeX-texinfo-mode) "auctex/tex-info" "auctex/tex-info.el"
;;;;;;  (19994 65094))
;;; Generated autoloads from auctex/tex-info.el

(defalias 'Texinfo-mode 'texinfo-mode)

(autoload 'TeX-texinfo-mode "auctex/tex-info" "\
Major mode in AUCTeX for editing Texinfo files.

Special commands:
\\{Texinfo-mode-map}

Entering Texinfo mode calls the value of `text-mode-hook'  and then the
value of `Texinfo-mode-hook'.

\(fn)" t nil)

;;;***

;;;### (autoloads (japanese-latex-mode japanese-plain-tex-mode) "auctex/tex-jp"
;;;;;;  "auctex/tex-jp.el" (18768 5174))
;;; Generated autoloads from auctex/tex-jp.el

(autoload 'japanese-plain-tex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'.

\(fn)" t nil)

(autoload 'japanese-latex-mode "auctex/tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads (texmathp-match-switch texmathp) "auctex/texmathp"
;;;;;;  "auctex/texmathp.el" (18489 3128))
;;; Generated autoloads from auctex/texmathp.el

(autoload 'texmathp "auctex/texmathp" "\
Determine if point is inside (La)TeX math mode.
Returns t or nil.  Additional info is placed into `texmathp-why'.
The functions assumes that you have (almost) syntactically correct (La)TeX in
the buffer.
See the variable `texmathp-tex-commands' about which commands are checked.

\(fn)" t nil)

(autoload 'texmathp-match-switch "auctex/texmathp" "\
Search backward for any of the math switches.
Limit searched to BOUND.

\(fn BOUND)" nil nil)

;;;***

;;;### (autoloads nil "auctex/toolbar-x" "auctex/toolbar-x.el" (18580
;;;;;;  49487))
;;; Generated autoloads from auctex/toolbar-x.el
 (autoload 'toolbarx-install-toolbar "toolbar-x")

;;;***

;;;### (autoloads (cedet-android-sdk-update-classpath cedet-android-adb-shell
;;;;;;  cedet-android-adb-version-check cedet-android-adb-devices
;;;;;;  cedet-android-adb-help cedet-android-start-ddms cedet-android-layoutopt
;;;;;;  cedet-android-target-list cedet-android-create-project) "cedet/common/cedet-android"
;;;;;;  "cedet/common/cedet-android.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-android.el

(autoload 'cedet-android-create-project "cedet/common/cedet-android" "\
Create an android project with NAME.
Your activity class will be created in the java PACKAGE.
You need to specify a TARGET, which is a number specifying the desired type
of package you intend to build.
Create the project in optional DIR, or in the default directory if not specified.
NAME will be used as the name of the project.

\(fn NAME PACKAGE TARGET &optional DIR)" t nil)

(autoload 'cedet-android-target-list "cedet/common/cedet-android" "\
Get the list of available targets for an android environment.

\(fn)" t nil)

(autoload 'cedet-android-layoutopt "cedet/common/cedet-android" "\
Get the list of available targets for an android environment.
Argument PROJECTROOT is the directory root of some project to be optimized.

\(fn PROJECTROOT)" t nil)

(autoload 'cedet-android-start-ddms "cedet/common/cedet-android" "\
Start Android's ddms debugging proxy.

\(fn)" t nil)

(autoload 'cedet-android-adb-help "cedet/common/cedet-android" "\
Get help for Android Debug Bridge.

\(fn)" t nil)

(autoload 'cedet-android-adb-devices "cedet/common/cedet-android" "\
The the list of attached devices from Android Debug Bridge.

\(fn)" t nil)

(autoload 'cedet-android-adb-version-check "cedet/common/cedet-android" "\
Check the version of the installed Android ADB command.
If optional programatic argument NOERROR is non-nil, then
instead of throwing an error if Global isn't available, then
return nil.

\(fn &optional NOERROR)" t nil)

(autoload 'cedet-android-adb-shell "cedet/common/cedet-android" "\
Create an inferior shell for Android Debug Bridge.

\(fn)" t nil)

(autoload 'cedet-android-sdk-update-classpath "cedet/common/cedet-android" "\
Update the classpath for `cedet-java' to include the android compile-time libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (cedet-update-autoloads) "cedet/common/cedet-autogen"
;;;;;;  "cedet/common/cedet-autogen.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-autogen.el

(autoload 'cedet-update-autoloads "cedet/common/cedet-autogen" "\
Update autoloads in file LOADDEFS from sources.
Optional argument DIRECTORY, specifies the directory to scan for
autoloads.  It defaults to the current directory.
DIRECTORIES is a list of extra directory to scan.  Those directory
names are relative to DIRECTORY.  If DIRECTORIES is nil try to scan
sub directories of DIRECTORY where a `cedet-autogen-tagfile' file
exists.

\(fn LOADDEFS &optional DIRECTORY &rest DIRECTORIES)" t nil)

;;;***

;;;### (autoloads (cedet-compat-utest) "cedet/common/cedet-compat"
;;;;;;  "cedet/common/cedet-compat.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-compat.el

;(if (or (featurep 'xemacs) (inversion-test 'emacs "22.0")) (defalias 'cedet-split-string 'cedet-split-string-1) (defalias 'cedet-split-string 'split-string))

(when (not (fboundp 'with-no-warnings)) (put 'with-no-warnings 'lisp-indent-function 0) (defun with-no-warnings (&rest body) "Copied from `with-no-warnings' in Emacs 23.\nLike `progn', but prevents compiler warnings in the body.\nNote: Doesn't work if this version is being loaded." (car (last body))))

(autoload 'cedet-compat-utest "cedet/common/cedet-compat" "\
Test compatability functions.

\(fn)" t nil)

;;;***

;;;### (autoloads (cedet-cscope-version-check cedet-cscope-expand-filename
;;;;;;  cedet-cscope-search cedet-cscope-command) "cedet/common/cedet-cscope"
;;;;;;  "cedet/common/cedet-cscope.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-cscope.el

(defvar cedet-cscope-command "cscope" "\
Command name for the CScope executable.")

(custom-autoload 'cedet-cscope-command "cedet/common/cedet-cscope" t)

(autoload 'cedet-cscope-search "cedet/common/cedet-cscope" "\
Perform a search with CScope, return the created buffer.
SEARCHTEXT is text to find.
TEXTTYPE is the type of text, such as 'regexp, 'string, 'tagname,
'tagregexp, or 'tagcompletions.
TYPE is the type of search, meaning that SEARCHTEXT is compared to
filename, tagname (tags table), references (uses of a tag) , or
symbol (uses of something not in the tag table.)
SCOPE is the scope of the search, such as 'project or 'subdirs.

\(fn SEARCHTEXT TEXTTYPE TYPE SCOPE)" nil nil)

(autoload 'cedet-cscope-expand-filename "cedet/common/cedet-cscope" "\
Expand the FILENAME with CScope.
Return a fully qualified filename.

\(fn FILENAME)" t nil)

(autoload 'cedet-cscope-version-check "cedet/common/cedet-cscope" "\
Check the version of the installed CScope command.
If optional programatic argument NOERROR is non-nil, then
instead of throwing an error if cscope isn't available, then
return nil.

\(fn &optional NOERROR)" t nil)

;;;***

;;;### (autoloads nil "cedet/common/cedet-edebug" "cedet/common/cedet-edebug.el"
;;;;;;  (20191 21282))
;;; Generated autoloads from cedet/common/cedet-edebug.el

(add-hook 'edebug-setup-hook (lambda nil (require 'cedet-edebug) (defalias 'edebug-prin1-to-string 'cedet-edebug-prin1-to-string) (define-key edebug-mode-map "A" 'data-debug-edebug-expr)))

(add-hook 'debugger-mode-hook (lambda nil (require 'cedet-edebug) (define-key debugger-mode-map "A" 'data-debug-edebug-expr)))

;;;***

;;;### (autoloads (cedet-files-utest) "cedet/common/cedet-files"
;;;;;;  "cedet/common/cedet-files.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-files.el

(autoload 'cedet-files-utest "cedet/common/cedet-files" "\
Test out some file name conversions.

\(fn)" t nil)

;;;***

;;;### (autoloads (cedet-gnu-global-version-check cedet-gnu-global-root
;;;;;;  cedet-gnu-global-show-root cedet-gnu-global-expand-filename
;;;;;;  cedet-gnu-global-search cedet-global-gtags-command cedet-global-command)
;;;;;;  "cedet/common/cedet-global" "cedet/common/cedet-global.el"
;;;;;;  (20191 21282))
;;; Generated autoloads from cedet/common/cedet-global.el

(defvar cedet-global-command "global" "\
Command name for the GNU Global executable.")

(custom-autoload 'cedet-global-command "cedet/common/cedet-global" t)

(defvar cedet-global-gtags-command "gtags" "\
Command name for the GNU Global gtags executable.
GTAGS is used to create the tags table queried by the 'global' command.")

(custom-autoload 'cedet-global-gtags-command "cedet/common/cedet-global" t)

(autoload 'cedet-gnu-global-search "cedet/common/cedet-global" "\
Perform a search with GNU Global, return the created buffer.
SEARCHTEXT is text to find.
TEXTTYPE is the type of text, such as 'regexp, 'string, 'tagname,
'tagregexp, or 'tagcompletions.
TYPE is the type of search, meaning that SEARCHTEXT is compared to
filename, tagname (tags table), references (uses of a tag) , or
symbol (uses of something not in the tag table.)
SCOPE is the scope of the search, such as 'project or 'subdirs.

\(fn SEARCHTEXT TEXTTYPE TYPE SCOPE)" nil nil)

(autoload 'cedet-gnu-global-expand-filename "cedet/common/cedet-global" "\
Expand the FILENAME with GNU Global.
Return a fully qualified filename.

\(fn FILENAME)" t nil)

(autoload 'cedet-gnu-global-show-root "cedet/common/cedet-global" "\
Show the root of a GNU Global area under the current buffer.

\(fn)" t nil)

(autoload 'cedet-gnu-global-root "cedet/common/cedet-global" "\
Return the root of any GNU Global scanned project.
If a default starting DIR is not specified, the current buffer's
`default-directory' is used.

\(fn &optional DIR)" nil nil)

(autoload 'cedet-gnu-global-version-check "cedet/common/cedet-global" "\
Check the version of the installed GNU Global command.
If optional programatic argument NOERROR is non-nil, then
instead of throwing an error if Global isn't available, then
return nil.

\(fn &optional NOERROR)" t nil)

;;;***

;;;### (autoloads (cedet-graphviz-dot-version-check cedet-graphviz-neato-command
;;;;;;  cedet-graphviz-dot-command) "cedet/common/cedet-graphviz"
;;;;;;  "cedet/common/cedet-graphviz.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-graphviz.el

(defvar cedet-graphviz-dot-command "dot" "\
Command name for the Graphviz DOT executable.")

(custom-autoload 'cedet-graphviz-dot-command "cedet/common/cedet-graphviz" t)

(defvar cedet-graphviz-neato-command "neato" "\
Command name for the Graphviz NEATO executable.")

(custom-autoload 'cedet-graphviz-neato-command "cedet/common/cedet-graphviz" t)

(autoload 'cedet-graphviz-dot-version-check "cedet/common/cedet-graphviz" "\
Check the version of the installed Graphviz dot command.
If optional programatic argument NOERROR is non-nil, then
instead of throwing an error if Global isn't available, then
return nil.

\(fn &optional NOERROR)" t nil)

;;;***

;;;### (autoloads (cedet-idutils-version-check cedet-idutils-expand-filename
;;;;;;  cedet-idutils-make-command cedet-idutils-token-command cedet-idutils-file-command)
;;;;;;  "cedet/common/cedet-idutils" "cedet/common/cedet-idutils.el"
;;;;;;  (20191 21282))
;;; Generated autoloads from cedet/common/cedet-idutils.el

(defvar cedet-idutils-file-command "fnid" "\
Command name for the ID Utils executable for searching file names.")

(custom-autoload 'cedet-idutils-file-command "cedet/common/cedet-idutils" t)

(defvar cedet-idutils-token-command "lid" "\
Command name for the ID Utils executable for searching for tokens.")

(custom-autoload 'cedet-idutils-token-command "cedet/common/cedet-idutils" t)

(defvar cedet-idutils-make-command "mkid" "\
Command name for the ID Utils executable for creating token databases.")

(custom-autoload 'cedet-idutils-make-command "cedet/common/cedet-idutils" t)

(autoload 'cedet-idutils-expand-filename "cedet/common/cedet-idutils" "\
Expand the FILENAME with ID Utils.
Return a filename relative to the default directory.

\(fn FILENAME)" t nil)

(autoload 'cedet-idutils-version-check "cedet/common/cedet-idutils" "\
Check the version of the installed ID Utils command.
If optional programatic argument NOERROR is non-nil, then
instead of throwing an error if Global isn't available, then
return nil.

\(fn &optional NOERROR)" t nil)

;;;***

;;;### (autoloads (cedet-javap-dump-class cedet-java-version-check)
;;;;;;  "cedet/common/cedet-java" "cedet/common/cedet-java.el" (20191
;;;;;;  21282))
;;; Generated autoloads from cedet/common/cedet-java.el

(autoload 'cedet-java-version-check "cedet/common/cedet-java" "\
Check the version of the installed java command.
If optional programatic argument NOERROR is non-nil, then
instead of throwing an error if Global isn't available, then
return nil.

\(fn &optional NOERROR)" t nil)

(autoload 'cedet-javap-dump-class "cedet/common/cedet-java" "\
Dump out a Java signatures for CLASS.
Display in a javap output buffer.

\(fn CLASS)" t nil)

;;;***

;;;### (autoloads (global-cedet-m3-minor-mode cedet-m3-minor-mode)
;;;;;;  "cedet/common/cedet-m3" "cedet/common/cedet-m3.el" (20191
;;;;;;  21282))
;;; Generated autoloads from cedet/common/cedet-m3.el

(autoload 'cedet-m3-minor-mode "cedet/common/cedet-m3" "\
Toggle cedet-m3 minor mode, a mouse 3 context menu.
With prefix argument ARG, turn on if positive, otherwise off.
Return non-nil if the minor mode is enabled.

\\{cedet-m3-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'global-cedet-m3-minor-mode "cedet/common/cedet-m3" "\
Toggle global use of cedet-m3 minor mode.
If ARG is positive, enable, if it is negative, disable.
If ARG is nil, then toggle.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (cedet-utest-batch cedet-utest) "cedet/common/cedet-utests"
;;;;;;  "cedet/common/cedet-utests.el" (20191 21282))
;;; Generated autoloads from cedet/common/cedet-utests.el

(autoload 'cedet-utest "cedet/common/cedet-utests" "\
Run the CEDET unittests.
EXIT-ON-ERROR causes the test suite to exit on an error, instead
of just logging the error.

\(fn &optional EXIT-ON-ERROR)" t nil)

(autoload 'cedet-utest-batch "cedet/common/cedet-utests" "\
Run the CEDET unit test in BATCH mode.

\(fn)" nil nil)

;;;***

;;;### (autoloads (data-debug-eval-expression data-debug-edebug-expr
;;;;;;  data-debug-show-stuff data-debug-new-buffer data-debug-mode
;;;;;;  data-debug-insert-thing data-debug-insert-stuff-vector data-debug-insert-stuff-list
;;;;;;  data-debug-insert-widget-properties data-debug-insert-hash-table
;;;;;;  data-debug-insert-property-list) "cedet/common/data-debug"
;;;;;;  "cedet/common/data-debug.el" (20191 21282))
;;; Generated autoloads from cedet/common/data-debug.el

(autoload 'data-debug-insert-property-list "cedet/common/data-debug" "\
Insert the property list PROPLIST.
Each line starts with PREFIX.
The attributes belong to the tag PARENT.

\(fn PROPLIST PREFIX &optional PARENT)" nil nil)

(autoload 'data-debug-insert-hash-table "cedet/common/data-debug" "\
Insert the contents of HASH-TABLE inserting PREFIX before each element.

\(fn HASH-TABLE PREFIX)" nil nil)

(autoload 'data-debug-insert-widget-properties "cedet/common/data-debug" "\
Insert the contents of WIDGET inserting PREFIX before each element.

\(fn WIDGET PREFIX)" nil nil)

(autoload 'data-debug-insert-stuff-list "cedet/common/data-debug" "\
Insert all the parts of STUFFLIST.
PREFIX specifies what to insert at the start of each line.

\(fn STUFFLIST PREFIX)" nil nil)

(autoload 'data-debug-insert-stuff-vector "cedet/common/data-debug" "\
Insert all the parts of STUFFVECTOR.
PREFIX specifies what to insert at the start of each line.

\(fn STUFFVECTOR PREFIX)" nil nil)

(autoload 'data-debug-insert-thing "cedet/common/data-debug" "\
Insert THING with PREFIX.
PREBUTTONTEXT is some text to insert between prefix and the thing
that is not included in the indentation calculation of any children.
If PARENT is non-nil, it is somehow related as a parent to thing.

\(fn THING PREFIX PREBUTTONTEXT &optional PARENT)" nil nil)

(autoload 'data-debug-mode "cedet/common/data-debug" "\
Major-mode for the Analyzer debugger.

\\{data-debug-map}

\(fn)" t nil)

(autoload 'data-debug-new-buffer "cedet/common/data-debug" "\
Create a new ddebug buffer with NAME.

\(fn NAME)" nil nil)

(autoload 'data-debug-show-stuff "cedet/common/data-debug" "\
Data debug STUFF in a buffer named *NAME DDebug*.

\(fn STUFF NAME)" nil nil)

(autoload 'data-debug-edebug-expr "cedet/common/data-debug" "\
Dump out the contents of some expression EXPR in edebug with ddebug.

\(fn EXPR)" t nil)

(autoload 'data-debug-eval-expression "cedet/common/data-debug" "\
Evaluate EXPR and display the value.
If the result is something simple, show it in the echo area.
If the result is a list or vector, then use the data debugger to display it.

\(fn EXPR)" t nil)

;;;***

;;;### (autoloads (define-fame-channel) "cedet/common/fame" "cedet/common/fame.el"
;;;;;;  (20191 21282))
;;; Generated autoloads from cedet/common/fame.el

(autoload 'define-fame-channel "cedet/common/fame" "\
Define the new message channel CHANNEL.
CHANNEL must be a non-nil symbol.
The optional argument DEFAULT specifies the default value of message
levels for this channel.  By default it is the value of
`fame-default-level-values'.
DOCSTRING is an optional channel documentation.

This defines the option `CHANNEL-fame-levels' to customize the current
value of message levels.  And the functions `CHANNEL-send-debug',
`CHANNEL-send-info', `CHANNEL-send-warning', and `CHANNEL-send-error',
that respectively send debug, informational, warning, and error
messages to CHANNEL.

\(fn CHANNEL &optional DEFAULT DOCSTRING)" nil (quote macro))

;;;***

;;;### (autoloads (inversion-upgrade-package inversion-add-to-load-path
;;;;;;  inversion-find-version inversion-require-emacs inversion-require)
;;;;;;  "cedet/common/inversion" "cedet/common/inversion.el" (20191
;;;;;;  21282))
;;; Generated autoloads from cedet/common/inversion.el

(autoload 'inversion-require "cedet/common/inversion" "\
Declare that you need PACKAGE with at least VERSION.
PACKAGE might be found in FILE.  (See `require'.)
Throws an error if VERSION is incompatible with what is installed.
Optional argument DIRECTORY is a location where new versions of
this tool can be located.  If there is a versioning problem and
DIRECTORY is provided, inversion will offer to download the file.
Optional argument RESERVED is saved for later use.

\(fn PACKAGE VERSION &optional FILE DIRECTORY &rest RESERVED)" nil nil)

(autoload 'inversion-require-emacs "cedet/common/inversion" "\
Declare that you need either EMACS-VER, XEMACS-VER or SXEMACE-ver.
Only checks one based on which kind of Emacs is being run.

\(fn EMACS-VER XEMACS-VER SXEMACS-VER)" nil nil)

(autoload 'inversion-find-version "cedet/common/inversion" "\
Search for the version and incompatible version of PACKAGE.
Does not load PACKAGE nor requires that it has been previously loaded.
Search in the directories in `load-path' for a PACKAGE.el library.
Visit the file found and search for the declarations of variables or
constants `PACKAGE-version' and `PACKAGE-incompatible-version'.  The
value of these variables must be a version string.

Return a pair (VERSION-STRING . INCOMPATIBLE-VERSION-STRING) where
INCOMPATIBLE-VERSION-STRING can be nil.
Return nil when VERSION-STRING was not found.

\(fn PACKAGE)" nil nil)

(autoload 'inversion-add-to-load-path "cedet/common/inversion" "\
Add the PACKAGE path to `load-path' if necessary.
MINIMUM is the minimum version requirement of PACKAGE.
Optional argument INSTALLDIR is the base directory where PACKAGE is
installed.  It defaults to `default-directory'/PACKAGE.
SUBDIRS are sub-directories to add to `load-path', following the main
INSTALLDIR path.

\(fn PACKAGE MINIMUM &optional INSTALLDIR &rest SUBDIRS)" nil nil)

(autoload 'inversion-upgrade-package "cedet/common/inversion" "\
Try to upgrade PACKAGE in DIRECTORY is available.

\(fn PACKAGE &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads (mode-local-read-function) "cedet/common/mode-local"
;;;;;;  "cedet/common/mode-local.el" (20191 21282))
;;; Generated autoloads from cedet/common/mode-local.el

(autoload 'mode-local-read-function "cedet/common/mode-local" "\
Interactively read in the name of a mode-local function.
PROMPT, INITIAL, HIST, and DEFAULT are the same as for `completing-read'.

\(fn PROMPT &optional INITIAL HIST DEFAULT)" nil nil)

;;;***

;;;### (autoloads (pprint-function pprint pprint-to-string) "cedet/common/pprint"
;;;;;;  "cedet/common/pprint.el" (20191 21282))
;;; Generated autoloads from cedet/common/pprint.el

(autoload 'pprint-to-string "cedet/common/pprint" "\
Return a string containing the pretty-printed representation of OBJECT.
OBJECT can be any Lisp object.  Quoting characters are used as needed
to make output that `read' can handle, whenever this is possible.  The
pretty printer try as much as possible to limit the length of lines to
given WIDTH.  WIDTH value defaults to `fill-column'.

\(fn OBJECT &optional WIDTH)" nil nil)

(autoload 'pprint "cedet/common/pprint" "\
Output the pretty-printed representation of OBJECT, any Lisp object.
Quoting characters are printed as needed to make output that `read'
can handle, whenever this is possible.  Output stream is STREAM, or
value of `standard-output' (which see).  The pretty printer try as
much as possible to limit the length of lines to given WIDTH.  WIDTH
value defaults to `fill-column'.

\(fn OBJECT &optional STREAM WIDTH)" nil nil)

(autoload 'pprint-function "cedet/common/pprint" "\
See a pretty-printed representation of FUNCTION-NAME.

\(fn FUNCTION-NAME)" t nil)

;;;***

;;;### (autoloads (pulse-line-hook-function pulse-toggle-integration-advice
;;;;;;  pulse-momentary-highlight-region pulse-momentary-highlight-one-line
;;;;;;  pulse-momentary-highlight-overlay pulse-test pulse) "cedet/common/pulse"
;;;;;;  "cedet/common/pulse.el" (20191 21282))
;;; Generated autoloads from cedet/common/pulse.el

(autoload 'pulse "cedet/common/pulse" "\
Pulse the colors on our highlight face.
If optional FACE is provide, reset the face to FACE color,
instead of `pulse-highlight-start-face'.
Be sure to call `pulse-reset-face' after calling pulse.

\(fn &optional FACE)" nil nil)

(autoload 'pulse-test "cedet/common/pulse" "\
Test the lightening function for pulsing a line.
When optional NO-ERROR Don't throw an error if we can't run tests.

\(fn &optional NO-ERROR)" t nil)

(autoload 'pulse-momentary-highlight-overlay "cedet/common/pulse" "\
Pulse the overlay O, unhighlighting before next command.
Optional argument FACE specifies the fact to do the highlighting.

\(fn O &optional FACE)" nil nil)

(autoload 'pulse-momentary-highlight-one-line "cedet/common/pulse" "\
Highlight the line around POINT, unhighlighting before next command.
Optional argument FACE specifies the face to do the highlighting.

\(fn POINT &optional FACE)" nil nil)

(autoload 'pulse-momentary-highlight-region "cedet/common/pulse" "\
Highlight between START and END, unhighlighting before next command.
Optional argument FACE specifies the fact to do the highlighting.

\(fn START END &optional FACE)" nil nil)

(autoload 'pulse-toggle-integration-advice "cedet/common/pulse" "\
Toggle activation of advised functions that will now pulse.
Wint no ARG, toggle the pulse advice.
With a negative ARG, disable pulse advice.
With a positive ARG, enable pulse advice.
Currently advised functions include:
  `goto-line'
  `exchange-point-and-mark'
  `find-tag'
  `tags-search'
  `tags-loop-continue'
  `pop-tag-mark'
  `imenu-default-goto-function'
Pulsing via `pulse-line-hook-function' has also been added to
the following hook:
  `next-error-hook'

\(fn ARG)" t nil)

(autoload 'pulse-line-hook-function "cedet/common/pulse" "\
Function used in hooks to pulse the current line.
Only pulses the line if `pulse-command-advice-flag' is non-nil.

\(fn)" nil nil)

;;;***

;;;### (autoloads (rpm) "cedet/speedbar/rpm" "cedet/speedbar/rpm.el"
;;;;;;  (20191 21282))
;;; Generated autoloads from cedet/speedbar/rpm.el

(autoload 'rpm "cedet/speedbar/rpm" "\
Red Hat Package Management in Emacs.

\(fn)" t nil)

;;;***

;;;### (autoloads (gud-speedbar-buttons) "cedet/speedbar/sb-gud"
;;;;;;  "cedet/speedbar/sb-gud.el" (20191 21282))
;;; Generated autoloads from cedet/speedbar/sb-gud.el

(autoload 'gud-speedbar-buttons "cedet/speedbar/sb-gud" "\
Create a speedbar display based on the current state of GUD.
If the GUD BUFFER is not running a supported debugger, then turn
off the specialized speedbar mode.

\(fn BUFFER)" nil nil)

;;;***

;;;### (autoloads (Info-speedbar-buttons Info-speedbar-browser) "cedet/speedbar/sb-info"
;;;;;;  "cedet/speedbar/sb-info.el" (20191 21282))
;;; Generated autoloads from cedet/speedbar/sb-info.el

(autoload 'Info-speedbar-browser "cedet/speedbar/sb-info" "\
Initialize speedbar to display an info node browser.
This will add a speedbar major display mode.

\(fn)" t nil)

(autoload 'Info-speedbar-buttons "cedet/speedbar/sb-info" "\
Create a speedbar display to help navigation in an Info file.
BUFFER is the buffer speedbar is requesting buttons for.

\(fn BUFFER)" nil nil)

(eval-after-load "info" '(require 'sb-info))

;;;***

;;;### (autoloads (rmail-speedbar-buttons) "cedet/speedbar/sb-rmail"
;;;;;;  "cedet/speedbar/sb-rmail.el" (20191 21282))
;;; Generated autoloads from cedet/speedbar/sb-rmail.el

(autoload 'rmail-speedbar-buttons "cedet/speedbar/sb-rmail" "\
Create buttons for BUFFER containing rmail messages.
Click on the address under Reply to: to reply to this person.
Under Folders: Click a name to read it, or on the <M> to move the
current message into that RMAIL folder.

\(fn BUFFER)" nil nil)

;;;***

;;;### (autoloads (w3-speedbar-buttons) "cedet/speedbar/sb-w3" "cedet/speedbar/sb-w3.el"
;;;;;;  (20191 21282))
;;; Generated autoloads from cedet/speedbar/sb-w3.el

(autoload 'w3-speedbar-buttons "cedet/speedbar/sb-w3" "\
Create speedbar buttons for the current web BUFFER displayed in w3 mode.

\(fn BUFFER)" nil nil)

;;;***

;;;### (autoloads (speedbar-get-focus speedbar-frame-mode) "cedet/speedbar/speedbar"
;;;;;;  "cedet/speedbar/speedbar.el" (20191 21282))
;;; Generated autoloads from cedet/speedbar/speedbar.el

(defalias 'speedbar 'speedbar-frame-mode)

(autoload 'speedbar-frame-mode "cedet/speedbar/speedbar" "\
Enable or disable speedbar.  Positive ARG means turn on, negative turn off.
A nil ARG means toggle.  Once the speedbar frame is activated, a buffer in
`speedbar-mode' will be displayed.  Currently, only one speedbar is
supported at a time.
`speedbar-before-popup-hook' is called before popping up the speedbar frame.
`speedbar-before-delete-hook' is called before the frame is deleted.

\(fn &optional ARG)" t nil)

(autoload 'speedbar-get-focus "cedet/speedbar/speedbar" "\
Change frame focus to or from the speedbar frame.
If the selected frame is not speedbar, then speedbar frame is
selected.  If the speedbar frame is active, then select the attached frame.

\(fn)" t nil)

;;;***

;;;### (autoloads (clevercss-mode) "clevercss/clevercss" "clevercss/clevercss.el"
;;;;;;  (20191 1158))
;;; Generated autoloads from clevercss/clevercss.el
 (add-to-list 'auto-mode-alist '("\\.pcss\\'" . clevercss-mode))
 (add-to-list 'auto-mode-alist '("\\.ccss\\'" . clevercss-mode))

(autoload 'clevercss-mode "clevercss/clevercss" "\
Major mode for editing CleverCSS programs.
Blank lines separate paragraphs, comments start with `// '.

The indentation width is controlled by `clevercss-indent', which
defaults to 4.  If `clevercss-guess-indent' is non-nil, then try to
match the indentation of the file.

Modules can hook in via `clevercss-mode-hook'.

Use `clevercss-version' to display the current version of this
file.

\\{clevercss-mode-map} 

\(fn)" t nil)

;;;***

;;;### (autoloads (coffee-mode) "coffee-mode/coffee-mode" "coffee-mode/coffee-mode.el"
;;;;;;  (20191 1161))
;;; Generated autoloads from coffee-mode/coffee-mode.el

(autoload 'coffee-mode "coffee-mode/coffee-mode" "\
Major mode for editing CoffeeScript.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))

(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

;;;***

;;;### (autoloads (color-theme-solarized-light color-theme-solarized-dark
;;;;;;  color-theme-solarized) "color-theme-solarized/color-theme-solarized"
;;;;;;  "color-theme-solarized/color-theme-solarized.el" (20191 1387))
;;; Generated autoloads from color-theme-solarized/color-theme-solarized.el

(autoload 'color-theme-solarized "color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn MODE)" t nil)

(autoload 'color-theme-solarized-dark "color-theme-solarized/color-theme-solarized" "\


\(fn)" t nil)

(autoload 'color-theme-solarized-light "color-theme-solarized/color-theme-solarized" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (crontab-get crontab-mode) "crontab-mode/crontab-mode"
;;;;;;  "crontab-mode/crontab-mode.el" (20191 1502))
;;; Generated autoloads from crontab-mode/crontab-mode.el

(autoload 'crontab-mode "crontab-mode/crontab-mode" "\
Major mode for editing crontabs.
Defines commands for getting and applying crontabs for hosts.
Sets up command `font-lock-mode'.

\\{crontab-mode-map}

\(fn)" t nil)

(autoload 'crontab-get "crontab-mode/crontab-mode" "\
Get the crontab for the HOST into a buffer.

\(fn HOST)" t nil)

;;;***

;;;### (autoloads (dired-toggle-sudo) "dired-toggle-sudo/dired-toggle-sudo"
;;;;;;  "dired-toggle-sudo/dired-toggle-sudo.el" (20191 1509))
;;; Generated autoloads from dired-toggle-sudo/dired-toggle-sudo.el

(autoload 'dired-toggle-sudo "dired-toggle-sudo/dired-toggle-sudo" "\
Reopen current file or dired buffer with sudo.

If SUDO-USER is nil assume root.

If called with `universal-argument' (C-u), ask for username.

\(fn &optional SUDO-USER)" t nil)

;;;***

;;;### (autoloads (ebib) "ebib/src/ebib" "ebib/src/ebib.el" (20193
;;;;;;  50807))
;;; Generated autoloads from ebib/src/ebib.el

(autoload 'ebib "ebib/src/ebib" "\
Ebib, a BibTeX database manager.
Optional argument key specifies the entry of the current database
that is to be displayed.

\(fn &optional KEY)" t nil)

;;;***

;;;### (autoloads (Rd-mode) "ess/lisp/ess-rd" "ess/lisp/ess-rd.el"
;;;;;;  (20198 56376))
;;; Generated autoloads from ess/lisp/ess-rd.el

(autoload 'Rd-mode "ess/lisp/ess-rd" "\
Major mode for editing R documentation source files.

This mode makes it easier to write R documentation by helping with
indentation, doing some of the typing for you (with Abbrev mode) and by
showing keywords, strings, etc. in different faces (with Font Lock mode
on terminals that support it).

Type \\[list-abbrevs] to display the built-in abbrevs for Rd keywords.

Keybindings
===========

\\{Rd-mode-map}

Variables you can use to customize Rd mode
==========================================

`Rd-indent-level'
  Indentation of Rd code with respect to containing blocks.
  Default is 2.

Turning on Rd mode runs the hook `Rd-mode-hook'.

To automatically turn on the abbrev(iate) features, add the
following lines to your `.emacs' file:

  (add-hook 'Rd-mode-hook
	    (lambda ()
	      (abbrev-mode 1)))

\(fn)" t nil)

;;;***

;;;### (autoloads (mouse-me) "ess/lisp/mouseme" "ess/lisp/mouseme.el"
;;;;;;  (20198 56376))
;;; Generated autoloads from ess/lisp/mouseme.el

(autoload 'mouse-me "ess/lisp/mouseme" "\
Popup a menu of functions to run on selected string or region.

\(fn EVENT)" t nil)

;;;***

;;;### (autoloads (feature-mode) "feature-mode/feature-mode" "feature-mode/feature-mode.el"
;;;;;;  (20193 51645))
;;; Generated autoloads from feature-mode/feature-mode.el

(autoload 'feature-mode "feature-mode/feature-mode" "\
Major mode for editing plain text stories

\(fn)" t nil)

;;;***

;;;### (autoloads (find-file-in-project) "find-file-in-project/find-file-in-project"
;;;;;;  "find-file-in-project/find-file-in-project.el" (20193 51640))
;;; Generated autoloads from find-file-in-project/find-file-in-project.el

(autoload 'find-file-in-project "find-file-in-project/find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

The project's scope is defined as the first directory containing
an `.emacs-project' file.  You can override this by locally
setting the variable `ffip-project-root'.

\(fn)" t nil)

(defalias 'ffip 'find-file-in-project)

(put 'ffip-patterns 'safe-local-variable 'listp)

(put 'ffip-find-options 'safe-local-variable 'stringp)

(put 'ffip-project-file 'safe-local-variable 'stringp)

(put 'ffip-project-root 'safe-local-variable 'stringp)

(put 'ffip-project-root-function 'safe-local-variable 'functionp)

(put 'ffip-limit 'safe-local-variable 'integerp)

;;;***

;;;### (autoloads (ack-find-file ack-find-same-file ack ack-same)
;;;;;;  "full-ack/full-ack" "full-ack/full-ack.el" (20191 1685))
;;; Generated autoloads from full-ack/full-ack.el

(autoload 'ack-same "full-ack/full-ack" "\
Run ack with --type matching the current `major-mode'.
The types of files searched are determined by `ack-mode-type-alist' and
`ack-mode-extension-alist'.  If no type is configured the buffer's file
extension is used for the search.
PATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by `ack-search-regexp'.
A prefix arg toggles that value.
DIRECTORY is the root directory.  If called interactively, it is determined by
`ack-project-root-file-patterns'.  The user is only prompted, if
`ack-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack "full-ack/full-ack" "\
Run ack.
PATTERN is interpreted as a regular expression, iff REGEXP is non-nil.  If
called interactively, the value of REGEXP is determined by `ack-search-regexp'.
A prefix arg toggles that value.
DIRECTORY is the root directory.  If called interactively, it is determined by
`ack-project-root-file-patterns'.  The user is only prompted, if
`ack-prompt-for-directory' is set.

\(fn PATTERN &optional REGEXP DIRECTORY)" t nil)

(autoload 'ack-find-same-file "full-ack/full-ack" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

(autoload 'ack-find-file "full-ack/full-ack" "\
Prompt to find a file found by ack in DIRECTORY.

\(fn &optional DIRECTORY)" t nil)

;;;***

;;;### (autoloads (gist-fetch gist-list gist-region-or-buffer-private
;;;;;;  gist-region-or-buffer gist-buffer-private gist-buffer gist-region-private
;;;;;;  gist-region) "gist/gist" "gist/gist.el" (20191 1702))
;;; Generated autoloads from gist/gist.el

(autoload 'gist-region "gist/gist" "\
Post the current region as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn BEGIN END &optional PRIVATE &optional CALLBACK)" t nil)

(autoload 'gist-region-private "gist/gist" "\
Post the current region as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn BEGIN END)" t nil)

(autoload 'gist-buffer "gist/gist" "\
Post the current buffer as a new paste at gist.github.com.
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'gist-buffer-private "gist/gist" "\
Post the current buffer as a new private paste at gist.github.com.
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-region-or-buffer "gist/gist" "\
Post either the current region, or if mark is not set, the current buffer as a new paste at gist.github.com
Copies the URL into the kill ring.

With a prefix argument, makes a private paste.

\(fn &optional PRIVATE)" t nil)

(autoload 'gist-region-or-buffer-private "gist/gist" "\
Post either the current region, or if mark is not set, the current buffer as a new private paste at gist.github.com
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-list "gist/gist" "\
Displays a list of all of the current user's gists in a new buffer.

\(fn)" t nil)

(autoload 'gist-fetch "gist/gist" "\
Fetches a Gist and inserts it into a new buffer
If the Gist already exists in a buffer, switches to it

\(fn ID)" t nil)

;;;***

;;;### (autoloads (godoc gofmt-before-save gofmt go-mode) "go-mode/go-mode"
;;;;;;  "go-mode/go-mode.el" (20191 1704))
;;; Generated autoloads from go-mode/go-mode.el

(autoload 'go-mode "go-mode/go-mode" "\
Major mode for editing Go source text.

This provides basic syntax highlighting for keywords, built-ins,
functions, and some types.  It also provides indentation that is
\(almost) identical to gofmt.

\(fn)" t nil)

(add-to-list 'auto-mode-alist (cons "\\.go$" #'go-mode))

(autoload 'gofmt "go-mode/go-mode" "\
Pipe the current buffer through the external tool `gofmt`.
Replace the current buffer on success; display errors on failure.

\(fn)" t nil)

(autoload 'gofmt-before-save "go-mode/go-mode" "\
Add this to .emacs to run gofmt on the current buffer when saving:
 (add-hook 'before-save-hook #'gofmt-before-save)

\(fn)" t nil)

(autoload 'godoc "go-mode/go-mode" "\
Show go documentation for a query, much like M-x man.

\(fn QUERY)" t nil)

;;;***

;;;### (autoloads (haml-mode) "haml-mode/haml-mode" "haml-mode/haml-mode.el"
;;;;;;  (20191 1716))
;;; Generated autoloads from haml-mode/haml-mode.el

(autoload 'haml-mode "haml-mode/haml-mode" "\
Major mode for editing Haml files.

\\{haml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

;;;***

;;;### (autoloads (highlight-parentheses-mode) "highlight-parentheses/highlight-parentheses"
;;;;;;  "highlight-parentheses/highlight-parentheses.el" (20193 51743))
;;; Generated autoloads from highlight-parentheses/highlight-parentheses.el

(autoload 'highlight-parentheses-mode "highlight-parentheses/highlight-parentheses" "\
Minor mode to highlight the surrounding parentheses.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (js2-mode) "js2-mode/js2-mode" "js2-mode/js2-mode.el"
;;;;;;  (20191 1744))
;;; Generated autoloads from js2-mode/js2-mode.el
 (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js2-mode "js2-mode/js2-mode" "\
Major mode for editing JavaScript code.

\(fn)" t nil)

;;;***

;;;### (autoloads (magit-status) "magit/magit" "magit/magit.el" (20191
;;;;;;  20328))
;;; Generated autoloads from magit/magit.el

(autoload 'magit-status "magit/magit" "\
Open a Magit status buffer for the Git repository containing
DIR.  If DIR is not within a Git repository, offer to create a
Git repository in DIR.

Interactively, a prefix argument means to ask the user which Git
repository to use even if `default-directory' is under Git control.
Two prefix arguments means to ignore `magit-repo-dirs' when asking for
user input.

\(fn DIR)" t nil)

;;;***

;;;### (autoloads (rebase-mode) "magit/rebase-mode" "magit/rebase-mode.el"
;;;;;;  (20191 20328))
;;; Generated autoloads from magit/rebase-mode.el

(autoload 'rebase-mode "magit/rebase-mode" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("git-rebase-todo" . rebase-mode))

;;;***

;;;### (autoloads (magithub-clone) "magithub/magithub" "magithub/magithub.el"
;;;;;;  (20194 54270))
;;; Generated autoloads from magithub/magithub.el

(autoload 'magithub-clone "magithub/magithub" "\
Clone GitHub repo USERNAME/REPO into directory DIR.
If SSHP is non-nil, clone it using the SSH URL.  Once the repo is
cloned, switch to a `magit-status' buffer for it.

Interactively, prompts for the repo name and directory.  With a
prefix arg, clone using SSH.

\(fn USERNAME REPO DIR &optional SSHP)" t nil)

(eval-after-load 'magit '(unless (featurep 'magithub) (require 'magithub)))

;;;***

;;;### (autoloads (nxhtml-byte-recompile-file nxhtml-byte-compile-file
;;;;;;  nxhtml-get-missing-files nxhtml-update-existing-files nxhtml-setup-download-all
;;;;;;  nxhtml-setup-auto-download nxhtml-setup-install) "nxhtml/nxhtml-web-vcs"
;;;;;;  "nxhtml/nxhtml-web-vcs.el" (20191 1904))
;;; Generated autoloads from nxhtml/nxhtml-web-vcs.el

(autoload 'nxhtml-setup-install "nxhtml/nxhtml-web-vcs" "\
Setup and start nXhtml installation.

This is for installation and updating directly from the nXhtml
development sources.

There are two different ways to install:

  (1) Download all at once: `nxhtml-setup-download-all'
  (2) Automatically download part by part: `nxhtml-setup-auto-download'

You can convert between those ways by calling this function again.
You can also do this by setting the option `nxhtml-autoload-web' yourself.

When you have nXhtml installed you can update it:

  (3) Update new files in nXhtml: `nxhtml-update-existing-files'

To learn more about nXhtml visit its home page at URL
`http://www.emacswiki.com/NxhtmlMode/'.

If you want to test auto download (but not use it further) there
is a special function for that, you answer T here:

   (T) Test automatic download part by part: `nxhtml-setup-test-auto-download'

======
*Note*
If you want to download a zip file with latest released version instead then
please see URL `http://ourcomments.org/Emacs/nXhtml/doc/nxhtml.html'.

\(fn WAY)" t nil)

(autoload 'nxhtml-setup-auto-download "nxhtml/nxhtml-web-vcs" "\
Set up to autoload nXhtml files from the web.

This function will download some initial files and then setup to
download the rest when you need them.

Files will be downloaded under the directory root you specify in
DL-DIR.

Note that files will not be upgraded automatically.  The auto
downloading is just for files you are missing. (This may change a
bit in the future.) If you want to upgrade those files that you
have downloaded you can just call `nxhtml-update-existing-files'.

You can easily switch between this mode of downloading or
downloading the whole of nXhtml by once.  To switch just call the
command `nxhtml-setup-install'.

See also the command `nxhtml-setup-download-all'.

Note: If your nXhtml is to old you can't use this function
      directly.  You have to upgrade first, se the function
      above. Version 2.07 or above is good for this.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-setup-download-all "nxhtml/nxhtml-web-vcs" "\
Download or update all of nXhtml.

You can download all if nXhtml with this command.

To update existing files use `nxhtml-update-existing-files'.

If you want to download only those files you are actually using
then call `nxhtml-setup-auto-download' instead.

See the command `nxhtml-setup-install' for a convenient way to
call these commands.

For more information about auto download of nXhtml files see
`nxhtml-setup-auto-download'.

\(fn DL-DIR)" t nil)

(autoload 'nxhtml-update-existing-files "nxhtml/nxhtml-web-vcs" "\
Update existing nXhtml files from the development sources.
Only files you already have will be updated.

Note that this works both if you have setup nXhtml to auto
download files as you need them or if you have downloaded all of
nXhtml at once.

For more information about installing and updating nXhtml see the
command `nxhtml-setup-install'.

\(fn)" t nil)

(autoload 'nxhtml-get-missing-files "nxhtml/nxhtml-web-vcs" "\
Download to SUB-DIR missing files matching FILE-NAME-LIST.
If FILE-NAME-LIST is nil download all missing files.
If it is a list download all missing files in the list.
If it is a regexp download all missing matching files.

\(fn SUB-DIR FILE-NAME-LIST)" nil nil)

(autoload 'nxhtml-byte-compile-file "nxhtml/nxhtml-web-vcs" "\


\(fn FILE &optional LOAD)" nil nil)

(autoload 'nxhtml-byte-recompile-file "nxhtml/nxhtml-web-vcs" "\
Byte recompile FILE file if necessary.
For more information see `nxhtml-byte-compile-file'.
Loading is done if recompiled and LOAD is t.

\(fn FILE &optional LOAD)" t nil)

;;;***

;;;### (autoloads (nxhtmlmaint-byte-uncompile-all nxhtmlmaint-byte-recompile
;;;;;;  nxhtmlmaint-start-byte-compilation) "nxhtml/nxhtmlmaint"
;;;;;;  "nxhtml/nxhtmlmaint.el" (20191 1905))
;;; Generated autoloads from nxhtml/nxhtmlmaint.el

(autoload 'nxhtmlmaint-start-byte-compilation "nxhtml/nxhtmlmaint" "\
Start byte compilation of nXhtml in new Emacs instance.
Byte compiling in general makes elisp code run 5-10 times faster
which is quite noticeable when you use nXhtml.

This will also update the file nxhtml-loaddefs.el.

You must restart Emacs to use the byte compiled files.

If for some reason the byte compiled files does not work you can
remove then with `nxhtmlmaint-byte-uncompile-all'.

See also `nxhtmlmaint-byte-recompile'

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-recompile "nxhtml/nxhtmlmaint" "\
Recompile or compile all nXhtml files in current Emacs.
Byte compile all elisp libraries whose .el files are newer their
.elc files.

\(fn)" t nil)

(autoload 'nxhtmlmaint-byte-uncompile-all "nxhtml/nxhtmlmaint" "\
Delete byte compiled files in nXhtml.
This will also update the file nxhtml-loaddefs.el.

See `nxhtmlmaint-start-byte-compilation' for byte compiling.

\(fn)" t nil)

;;;***

;;;### (autoloads (web-vcs-investigate-elisp-file web-vcs-url-copy-file
;;;;;;  web-vcs-url-retrieve-synch web-vcs-byte-compile-file web-vcs-message-with-face
;;;;;;  web-vcs-get-files-from-root web-vcs-log-edit web-vcs-default-download-directory)
;;;;;;  "nxhtml/web-vcs" "nxhtml/web-vcs.el" (20191 1907))
;;; Generated autoloads from nxhtml/web-vcs.el

(autoload 'web-vcs-default-download-directory "nxhtml/web-vcs" "\
Try to find a suitable place.
Use the choice in `web-vcs-default-download-directory'.
If this does not fit fall back to \"~/.emacs.d/\".

\(fn)" nil nil)

(autoload 'web-vcs-log-edit "nxhtml/web-vcs" "\
Open log file.

\(fn)" t nil)

(autoload 'web-vcs-get-files-from-root "nxhtml/web-vcs" "\
Download a file tree from VCS system using the web interface.
Use WEB-VCS entry in variable `web-vcs-links-regexp' to download
files via http from FULL-URL to directory DL-DIR.

Show FULL-URL first and offer to visit the page.  That page will
give you information about version control system (VCS) system
used etc.

\(fn WEB-VCS FULL-URL DL-DIR)" nil nil)

(autoload 'web-vcs-message-with-face "nxhtml/web-vcs" "\
Display a colored message at the bottom of the string.
FACE is the face to use for the message.
FORMAT-STRING and ARGS are the same as for `message'.

Also put FACE on the message in *Messages* buffer.

\(fn FACE FORMAT-STRING &rest ARGS)" nil nil)

(autoload 'web-vcs-byte-compile-file "nxhtml/web-vcs" "\
Byte compile FILE in a new Emacs sub process.
EXTRA-LOAD-PATH is added to the front of `load-path' during
compilation.

FILE is set to `buffer-file-name' when called interactively.
If LOAD

\(fn FILE &optional LOAD EXTRA-LOAD-PATH COMP-DIR)" t nil)

(autoload 'web-vcs-url-retrieve-synch "nxhtml/web-vcs" "\
Retrieve URL, return cons with buffer and http status.

\(fn URL)" nil nil)

(autoload 'web-vcs-url-copy-file "nxhtml/web-vcs" "\
Copy URL to NEWNAME.  Both args must be strings.
Signals a `file-already-exists' error if file NEWNAME already exists,
unless a third argument OK-IF-ALREADY-EXISTS is supplied and non-nil.
A number as third arg means request confirmation if NEWNAME already exists.
This is what happens in interactive use with M-x.
Fourth arg KEEP-TIME non-nil means give the new file the same
last-modified time as the old one.  (This works on only some systems.)
Fifth arg PRESERVE-UID-GID is ignored.
A prefix arg makes KEEP-TIME non-nil.

\(fn URL NEWNAME &optional OK-IF-ALREADY-EXISTS KEEP-TIME PRESERVE-UID-GID)" nil nil)

(autoload 'web-vcs-investigate-elisp-file "nxhtml/web-vcs" "\


\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads (paredit-mode) "paredit/paredit" "paredit/paredit.el"
;;;;;;  (20191 19822))
;;; Generated autoloads from paredit/paredit.el

(autoload 'paredit-mode "paredit/paredit" "\
Minor mode for pseudo-structurally editing Lisp code.
With a prefix argument, enable Paredit Mode even if there are
  imbalanced parentheses in the buffer.
Paredit behaves badly if parentheses are imbalanced, so exercise
  caution when forcing Paredit Mode to be enabled, and consider
  fixing imbalanced parentheses instead.
\\<paredit-mode-map>

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (puppet-mode) "puppet-mode/puppet-mode" "puppet-mode/puppet-mode.el"
;;;;;;  (20191 19833))
;;; Generated autoloads from puppet-mode/puppet-mode.el

(autoload 'puppet-mode "puppet-mode/puppet-mode" "\
Major mode for editing puppet manifests.

The variable puppet-indent-level controls the amount of indentation.
\\{puppet-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (reftex-add-label-environments) "reftex/lisp/reftex-auc"
;;;;;;  "reftex/lisp/reftex-auc.el" (19069 43000))
;;; Generated autoloads from reftex/lisp/reftex-auc.el

(autoload 'reftex-add-label-environments "reftex/lisp/reftex-auc" "\
Add label environment descriptions to `reftex-label-alist-style'.
The format of ENTRY-LIST is exactly like `reftex-label-alist'.  See there
for details.
This function makes it possible to support RefTeX from AUCTeX style files.
The entries in ENTRY-LIST will be processed after the user settings in
`reftex-label-alist', and before the defaults (specified in
`reftex-default-label-alist-entries').  Any changes made to
`reftex-label-alist-style' will raise a flag to the effect that
the label information is recompiled on next use.

\(fn ENTRY-LIST)" nil nil)

(defalias 'reftex-add-to-label-alist 'reftex-add-label-environments)

;;;***

;;;### (autoloads (reftex-reset-scanning-information reftex-set-cite-format
;;;;;;  reftex-mode turn-on-reftex) "reftex/lisp/reftex-base" "reftex/lisp/reftex-base.el"
;;;;;;  (19300 23951))
;;; Generated autoloads from reftex/lisp/reftex-base.el

(autoload 'turn-on-reftex "reftex/lisp/reftex-base" "\
Turn on RefTeX mode.

\(fn)" nil nil)

(autoload 'reftex-mode "reftex/lisp/reftex-base" "\
Minor mode with distinct support for \\label, \\ref and \\cite in LaTeX.

\\<reftex-mode-map>A Table of Contents of the entire (multifile) document with browsing
capabilities is available with `\\[reftex-toc]'.

Labels can be created with `\\[reftex-label]' and referenced with `\\[reftex-reference]'.
When referencing, you get a menu with all labels of a given type and
context of the label definition.  The selected label is inserted as a
\\ref macro.

Citations can be made with `\\[reftex-citation]' which will use a regular expression
to pull out a *formatted* list of articles from your BibTeX
database.  The selected citation is inserted as a \\cite macro.

Index entries can be made with `\\[reftex-index-selection-or-word]' which indexes the word at point
or the current selection.  More general index entries are created with
`\\[reftex-index]'.  `\\[reftex-display-index]' displays the compiled index.

Most command have help available on the fly.  This help is accessed by
pressing `?' to any prompt mentioning this feature.

Extensive documentation about RefTeX is available in Info format.
You can view this information with `\\[reftex-info]'.

\\{reftex-mode-map}
Under X, these and other functions will also be available as `Ref' menu
on the menu bar.

------------------------------------------------------------------------------

\(fn &optional ARG)" t nil)

(autoload 'reftex-set-cite-format "reftex/lisp/reftex-base" "\
Set the document-local value of `reftex-cite-format'.
When such a value exists, it overwrites the setting given with
`reftex-cite-format'.  See the documentation of `reftex-cite-format'
for possible values.  This function should be used from AUCTeX style files.

\(fn VALUE)" nil nil)

(autoload 'reftex-reset-scanning-information "reftex/lisp/reftex-base" "\
Reset the symbols containing information from buffer scanning.
This enforces rescanning the buffer on next use.

\(fn)" nil nil)

;;;***

;;;### (autoloads (reftex-citation) "reftex/lisp/reftex-cite" "reftex/lisp/reftex-cite.el"
;;;;;;  (19669 30143))
;;; Generated autoloads from reftex/lisp/reftex-cite.el

(autoload 'reftex-citation "reftex/lisp/reftex-cite" "\
Make a citation using BibTeX database files.
After prompting for a regular expression, scans the buffers with
bibtex entries (taken from the \\bibliography command) and offers the
matching entries for selection.  The selected entry is formatted according
to `reftex-cite-format' and inserted into the buffer.

If NO-INSERT is non-nil, nothing is inserted, only the selected key returned.

FORMAT-KEY can be used to pre-select a citation format.

When called with a `C-u' prefix, prompt for optional arguments in
cite macros.  When called with a numeric prefix, make that many
citations.  When called with point inside the braces of a `\\cite'
command, it will add another key, ignoring the value of
`reftex-cite-format'.

The regular expression uses an expanded syntax: && is interpreted as `and'.
Thus, `aaaa&&bbb' matches entries which contain both `aaaa' and `bbb'.
While entering the regexp, completion on knows citation keys is possible.
`=' is a good regular expression to match all entries in all files.

\(fn &optional NO-INSERT FORMAT-KEY)" t nil)

;;;***

;;;### (autoloads (reftex-isearch-minor-mode) "reftex/lisp/reftex-global"
;;;;;;  "reftex/lisp/reftex-global.el" (18831 3226))
;;; Generated autoloads from reftex/lisp/reftex-global.el

(autoload 'reftex-isearch-minor-mode "reftex/lisp/reftex-global" "\
When on, isearch searches the whole document, not only the current file.
This minor mode allows isearch to search through all the files of
the current TeX document.

With no argument, this command toggles
`reftex-isearch-minor-mode'.  With a prefix argument ARG, turn
`reftex-isearch-minor-mode' on iff ARG is positive.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (reftex-index-phrases-mode) "reftex/lisp/reftex-index"
;;;;;;  "reftex/lisp/reftex-index.el" (19069 42983))
;;; Generated autoloads from reftex/lisp/reftex-index.el

(autoload 'reftex-index-phrases-mode "reftex/lisp/reftex-index" "\
Major mode for managing the Index phrases of a LaTeX document.
This buffer was created with RefTeX.

To insert new phrases, use
 - `C-c \\' in the LaTeX document to copy selection or word
 - `\\[reftex-index-new-phrase]' in the phrases buffer.

To index phrases use one of:

\\[reftex-index-this-phrase]     index current phrase
\\[reftex-index-next-phrase]     index next phrase (or N with prefix arg)
\\[reftex-index-all-phrases]     index all phrases
\\[reftex-index-remaining-phrases]     index current and following phrases
\\[reftex-index-region-phrases]     index the phrases in the region

You can sort the phrases in this buffer with \\[reftex-index-sort-phrases].
To display information about the phrase at point, use \\[reftex-index-phrases-info].

For more information see the RefTeX User Manual.

Here are all local bindings.

\\{reftex-index-phrases-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (reftex-all-document-files) "reftex/lisp/reftex-parse"
;;;;;;  "reftex/lisp/reftex-parse.el" (18460 11748))
;;; Generated autoloads from reftex/lisp/reftex-parse.el

(autoload 'reftex-all-document-files "reftex/lisp/reftex-parse" "\
Return a list of all files belonging to the current document.
When RELATIVE is non-nil, give file names relative to directory
of master file.

\(fn &optional RELATIVE)" nil nil)

;;;***

;;;### (autoloads nil "reftex/lisp/reftex-vars" "reftex/lisp/reftex-vars.el"
;;;;;;  (19115 56630))
;;; Generated autoloads from reftex/lisp/reftex-vars.el
(put 'reftex-vref-is-default 'safe-local-variable (lambda (x) (or (stringp x) (symbolp x))))
(put 'reftex-fref-is-default 'safe-local-variable (lambda (x) (or (stringp x) (symbolp x))))
(put 'reftex-level-indent 'safe-local-variable 'integerp)
(put 'reftex-guess-label-type 'safe-local-variable (lambda (x) (memq x '(nil t))))

;;;***

;;;### (autoloads (remember-diary-extract-entries remember-clipboard
;;;;;;  remember-other-frame remember) "remember/remember" "remember/remember.el"
;;;;;;  (20193 51493))
;;; Generated autoloads from remember/remember.el

(autoload 'remember "remember/remember" "\
Remember an arbitrary piece of data.
INITIAL is the text to initially place in the *Remember* buffer,
or nil to bring up a blank *Remember* buffer.

With a prefix or a visible region, use the region as INITIAL.

\(fn &optional INITIAL)" t nil)

(autoload 'remember-other-frame "remember/remember" "\
Call `remember' in another frame.

\(fn &optional INITIAL)" t nil)

(autoload 'remember-clipboard "remember/remember" "\
Remember the contents of the current clipboard.
Most useful for remembering things from Netscape or other X Windows
application.

\(fn)" t nil)

(autoload 'remember-diary-extract-entries "remember/remember" "\
Extract diary entries from the region.

\(fn)" nil nil)

;;;***

;;;### (autoloads (remember-bbdb-store-in-mailbox) "remember/remember-bbdb"
;;;;;;  "remember/remember-bbdb.el" (20193 51493))
;;; Generated autoloads from remember/remember-bbdb.el

(autoload 'remember-bbdb-store-in-mailbox "remember/remember-bbdb" "\
Store remember data as if it were incoming mail.
In which case `remember-mailbox' should be the name of the mailbox.
Each piece of psuedo-mail created will have an `X-Todo-Priority'
field, for the purpose of appropriate splitting.

\(fn)" nil nil)

;;;***

;;;### (autoloads (remember-location remember-url) "remember/remember-bibl"
;;;;;;  "remember/remember-bibl.el" (20193 51493))
;;; Generated autoloads from remember/remember-bibl.el

(autoload 'remember-url "remember/remember-bibl" "\
Remember a URL in `bibl-mode' that is being visited with w3.

\(fn)" t nil)

(autoload 'remember-location "remember/remember-bibl" "\
Remember a bookmark location in `bibl-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads (remember-blosxom) "remember/remember-blosxom"
;;;;;;  "remember/remember-blosxom.el" (20193 51493))
;;; Generated autoloads from remember/remember-blosxom.el

(autoload 'remember-blosxom "remember/remember-blosxom" "\
Remember this text to a blosxom story.
This function can be added to `remember-handler-functions'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (remember-emacs-wiki-journal-add-entry-maybe remember-emacs-wiki-journal-add-entry-auto
;;;;;;  remember-emacs-wiki-journal-add-entry) "remember/remember-emacs-wiki-journal"
;;;;;;  "remember/remember-emacs-wiki-journal.el" (20193 51493))
;;; Generated autoloads from remember/remember-emacs-wiki-journal.el

(autoload 'remember-emacs-wiki-journal-add-entry "remember/remember-emacs-wiki-journal" "\
Prompt for category and heading and add entry.

\(fn)" nil nil)

(autoload 'remember-emacs-wiki-journal-add-entry-auto "remember/remember-emacs-wiki-journal" "\
Add entry where the category is the first word and the heading the
rest of the words on the first line.

\(fn)" nil nil)

(autoload 'remember-emacs-wiki-journal-add-entry-maybe "remember/remember-emacs-wiki-journal" "\
Like `remember-emacs-wiki-journal-add-entry-auto' but only adds
entry if the first line matches `emacs-wiki-journal-category-regexp'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (remember-planner-append) "remember/remember-planner"
;;;;;;  "remember/remember-planner.el" (20193 51493))
;;; Generated autoloads from remember/remember-planner.el

(autoload 'remember-planner-append "remember/remember-planner" "\
Remember this text to PAGE or today's page.
This function can be added to `remember-handler-functions'.

\(fn &optional PAGE)" nil nil)

;;;***

;;;### (autoloads (ri) "ri-emacs/ri-ruby" "ri-emacs/ri-ruby.el" (20193
;;;;;;  51501))
;;; Generated autoloads from ri-emacs/ri-ruby.el

(autoload 'ri "ri-emacs/ri-ruby" "\
Execute `ri'.

\(fn KEYW &optional CLASS)" t nil)

;;;***

;;;### (autoloads (rinari-minor-mode rinari-launch) "rinari/rinari"
;;;;;;  "rinari/rinari.el" (20191 19857))
;;; Generated autoloads from rinari/rinari.el

(autoload 'rinari-launch "rinari/rinari" "\
Run `rinari-minor-mode' if inside of a rails projecct,
otherwise turn `rinari-minor-mode' off if it is on.

\(fn)" t nil)

(defvar rinari-major-modes (if (boundp 'rinari-major-modes) rinari-major-modes (list 'find-file-hook 'mumamo-after-change-major-mode-hook 'dired-mode-hook)) "\
Major Modes from which to launch Rinari.")

(dolist (hook rinari-major-modes) (add-hook hook 'rinari-launch))

(autoload 'rinari-minor-mode "rinari/rinari" "\
Enable Rinari minor mode providing Emacs support for working
with the Ruby on Rails framework.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (rinari-merb-minor-mode) "rinari/rinari-merb" "rinari/rinari-merb.el"
;;;;;;  (20191 19857))
;;; Generated autoloads from rinari/rinari-merb.el

(autoload 'rinari-merb-minor-mode "rinari/rinari-merb" "\
Enable Rinari-Merb minor mode providing Emacs support for working
with the Ruby on Rails framework.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (cucumber-compilation-run cucumber-compilation-this-scenario
;;;;;;  cucumber-compilation-this-buffer) "rinari/util/cucumber-mode-compilation"
;;;;;;  "rinari/util/cucumber-mode-compilation.el" (20191 19857))
;;; Generated autoloads from rinari/util/cucumber-mode-compilation.el

(autoload 'cucumber-compilation-this-buffer "rinari/util/cucumber-mode-compilation" "\
Run the current buffer's scenarios through cucumber.

\(fn)" t nil)

(autoload 'cucumber-compilation-this-scenario "rinari/util/cucumber-mode-compilation" "\
Run the scenario at point through cucumber.

\(fn)" t nil)

(autoload 'cucumber-compilation-run "rinari/util/cucumber-mode-compilation" "\
Run a cucumber process, dumping output to a compilation buffer.

\(fn CMD)" t nil)

;;;***

;;;### (autoloads (pluralize-string singularize-string) "rinari/util/jump/inflections"
;;;;;;  "rinari/util/jump/inflections.el" (20191 19861))
;;; Generated autoloads from rinari/util/jump/inflections.el

(autoload 'singularize-string "rinari/util/jump/inflections" "\


\(fn STR)" nil nil)

(autoload 'pluralize-string "rinari/util/jump/inflections" "\


\(fn STR)" nil nil)

;;;***

;;;### (autoloads (defjump) "rinari/util/jump/jump" "rinari/util/jump/jump.el"
;;;;;;  (20191 19861))
;;; Generated autoloads from rinari/util/jump/jump.el

(autoload 'defjump "rinari/util/jump/jump" "\
Define NAME as a function with behavior determined by SPECS.
SPECS should be a list of cons cells of the form

   (jump-from-spec . jump-to-spec)

NAME will then try subsequent jump-from-specs until one succeeds,
at which point any resulting match information, along with the
related jump-to-spec will be used to jump to the intended buffer.
See `jump-to' and `jump-from' for information on spec
construction.

ROOT should specify the root of the project in which all jumps
take place, it can be either a string directory path, or a
function returning

Optional argument DOC specifies the documentation of the
resulting function.

Optional argument MAKE can be used to specify that missing files
should be created.  If MAKE is a function then it will be called
with the file path as it's only argument.  After possibly calling
MAKE `find-file' will be used to open the path.

Optional argument METHOD-COMMAND overrides the function used to
find the current method which defaults to `which-function'.

\(fn NAME SPECS ROOT &optional DOC MAKE METHOD-COMMAND)" nil nil)

;;;***

;;;### (autoloads (which-function-mode) "rinari/util/jump/which-func"
;;;;;;  "rinari/util/jump/which-func.el" (20191 19861))
;;; Generated autoloads from rinari/util/jump/which-func.el
 (put 'which-func-format 'risky-local-variable t)
 (put 'which-func-current 'risky-local-variable t)

(defalias 'which-func-mode 'which-function-mode)

(defvar which-function-mode nil "\
Non-nil if Which-Function mode is enabled.
See the command `which-function-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `which-function-mode'.")

(custom-autoload 'which-function-mode "rinari/util/jump/which-func" nil)

(autoload 'which-function-mode "rinari/util/jump/which-func" "\
Toggle Which Function mode, globally.
When Which Function mode is enabled, the current function name is
continuously displayed in the mode line, in certain major modes.

With prefix ARG, turn Which Function mode on if arg is positive,
and off otherwise.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ruby-compilation-this-buffer ruby-compilation-cap
;;;;;;  ruby-compilation-rake ruby-compilation-run pcomplete/cap
;;;;;;  pcomplete/rake) "rinari/util/ruby-compilation" "rinari/util/ruby-compilation.el"
;;;;;;  (20191 19857))
;;; Generated autoloads from rinari/util/ruby-compilation.el

(autoload 'pcomplete/rake "rinari/util/ruby-compilation" "\


\(fn)" nil nil)

(autoload 'pcomplete/cap "rinari/util/ruby-compilation" "\


\(fn)" nil nil)

(autoload 'ruby-compilation-run "rinari/util/ruby-compilation" "\
Run a ruby process dumping output to a ruby compilation
buffer. If supplied, `name' will be used in place of the script
name to construct the name of the compilation buffer.

\(fn CMD &optional RUBY-OPTIONS NAME)" t nil)

(autoload 'ruby-compilation-rake "rinari/util/ruby-compilation" "\
Run a rake process dumping output to a ruby compilation buffer.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-cap "rinari/util/ruby-compilation" "\
Run a capistrano process dumping output to a ruby compilation buffer.

\(fn &optional EDIT TASK ENV-VARS)" t nil)

(autoload 'ruby-compilation-this-buffer "rinari/util/ruby-compilation" "\
Run the current buffer through Ruby compilation.

\(fn)" t nil)

;;;***

;;;### (autoloads (rspec-buffer-is-spec-p rspec-mode) "rspec-mode/rspec-mode"
;;;;;;  "rspec-mode/rspec-mode.el" (20191 19871))
;;; Generated autoloads from rspec-mode/rspec-mode.el

(autoload 'rspec-mode "rspec-mode/rspec-mode" "\
Minor mode for rSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode/rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (when (rspec-buffer-is-spec-p) (rspec-mode)))))

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook (lambda nil (local-set-key rspec-key-command-prefix rspec-mode-verifible-keymap))))

(eval-after-load 'rails '(add-hook 'rails-minor-mode-hook (lambda nil (local-set-key rspec-key-command-prefix rspec-mode-verifible-keymap))))

;;;***

;;;### (autoloads (rst-minor-mode rst-mode) "rst-mode/rst" "rst-mode/rst.el"
;;;;;;  (20191 19913))
;;; Generated autoloads from rst-mode/rst.el
 (add-to-list 'auto-mode-alist (purecopy '("\\.re?st\\'" . rst-mode)))

(autoload 'rst-mode "rst-mode/rst" "\
Major mode for editing reStructuredText documents.
\\<rst-mode-map>

Turning on `rst-mode' calls the normal hooks `text-mode-hook'
and `rst-mode-hook'.  This mode also supports font-lock
highlighting.

\\{rst-mode-map}

\(fn)" t nil)

(autoload 'rst-minor-mode "rst-mode/rst" "\
ReST Minor Mode.
Toggle ReST minor mode.
With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

When ReST minor mode is enabled, the ReST mode keybindings
are installed on top of the major mode bindings.  Use this
for modes derived from Text mode, like Mail mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (sass-mode) "sass-mode/sass-mode" "sass-mode/sass-mode.el"
;;;;;;  (20191 19987))
;;; Generated autoloads from sass-mode/sass-mode.el

(autoload 'sass-mode "sass-mode/sass-mode" "\
Major mode for editing Sass files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;;;***

;;;### (autoloads (smex-initialize) "smex/smex" "smex/smex.el" (20194
;;;;;;  16278))
;;; Generated autoloads from smex/smex.el

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (ssh-gen-config-async ssh-gen-config) "ssh-config/ssh-config"
;;;;;;  "ssh-config/ssh-config.el" (20191 19997))
;;; Generated autoloads from ssh-config/ssh-config.el

(autoload 'ssh-gen-config "ssh-config/ssh-config" "\
Generate ssh configuration from `sc:ssh-file' org file.

\(fn)" t nil)

(autoload 'ssh-gen-config-async "ssh-config/ssh-config" "\
Asynchronous files generation.

\(fn)" t nil)

;;;***

;;;### (autoloads (wikipedia-draft-buffer wikipedia-draft-page wikipedia-draft
;;;;;;  wikipedia-mode) "wikipedia-mode/wikipedia-mode" "wikipedia-mode/wikipedia-mode.el"
;;;;;;  (20191 20100))
;;; Generated autoloads from wikipedia-mode/wikipedia-mode.el

(autoload 'wikipedia-mode "wikipedia-mode/wikipedia-mode" "\
Major mode for editing articles written in the markup language used by
Wikipedia, the free on-line encyclopedia (http://www.wikipedia.org).

There are several ways to use wikipedia-mode. One is to copy articles
between Emacs and your web browser's text box. However for GNU emacs,
that does not work always smoothly, since copying marked regions into
other X applications is somehow buggy for GNU emacs. Another way is to
use MozEx, a Mozilla/Firefox web browser extension that allows you to
call Emacs from a text box (http://mozex.mozdev.org/). Another way is
to use the PERL script ee-helper, which allows you to up and download
wiki texts.

Wikipedia articles are usually unfilled: newline characters are not
used for breaking paragraphs into lines. Unfortunately, Emacs does not
handle word wrapping yet. As a workaround, wikipedia-mode turns on
longlines-mode automatically. In case something goes wrong, the
following commands may come in handy:

\\[wikipedia-fill-article] fills the buffer.
\\[wikipedia-unfill-article] unfills the buffer.
Be warned that function can be dead  slow, better use wikipedia-unfill-paragraph-or-region.
\\[wikipedia-unfill-paragraph-or-region] unfills the paragraph
\\[wikipedia-unfill-paragraph-simple] doehe same but simpler.



The following commands put in markup structures.

\\[wikipedia-insert-strong-emphasis] inserts italics
\\[wikipedia-insert-bold] inserts bold text
\\[wikipedia-insert-italics] italics
\\[wikipedia-insert-header] header
\\[wikipedia-insert-link] inserts a link

The following commands are also defined:
\\[wikipedia-insert-user] inserts user name
\\[wikipedia-insert-signature] inserts ~~~~
\\[wikipedia-insert-enumerate] inserts enumerate type structures
\\[wikipedia-insert-itemize] inserts itemize type structures
\\[wikipedia-insert-hline] inserts a hline

The draft functionality
\\[wikipedia-draft]
\\[wikipedia-draft-region]
\\[wikipedia-draft-view-draft]
\\[wikipedia-draft-page]
\\[wikipedia-draft-buffer]

Replying and sending functionality
\\[wikipedia-reply-at-point-simple]
\\[wikipedia-draft-reply]
\\[wikipedia-send-draft-to-mozex]


The register functionality
\\[wikipedia-copy-page-to-register]
\\[defun wikipedia-insert-page-to-register]


Some simple editing commands.
\\[wikipedia-enhance-indent]
\\[wikipedia-yank-prefix]
\\[wikipedia-unfill-paragraph-or-region]



\\[wikipedia-terminate-paragraph]     starts a new list item or paragraph in a context-aware manner.
\\[wikipedia-next-header]     moves to the next (sub)section header.
\\[wikipedia-prev-header]     moves to the previous (sub)section header.

\(fn)" t nil)

(autoload 'wikipedia-draft "wikipedia-mode/wikipedia-mode" "\
Open a temporary buffer in wikipedia mode for editing an wikipedia
 draft, which an arbitrary piece of data. After finishing the editing
 either use C-c C-k \\[wikipedia-draft-buffer] to send the data into
 the wikipedia-draft-data-file, or send  the buffer using C-c C-c
\\[wikipedia-draft-send-to-mozex]  and insert it later into a wikipedia article.

\(fn)" t nil)

(autoload 'wikipedia-draft-page "wikipedia-mode/wikipedia-mode" "\


\(fn)" t nil)

(autoload 'wikipedia-draft-buffer "wikipedia-mode/wikipedia-mode" "\
Wikipedia-draft-buffer sends the contents of the current (temporary)
buffer to the wikipedia-draft-buffer, see the variable
wikipedia-draft-data-file.

\(fn)" t nil)

(defvar wikipedia-draft-send-archive t "\
*Archive the reply.")

;;;***

;;;### (autoloads (yas/global-mode yas/minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (20191 20341))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas/minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, the `tas/trigger-key' key expands
snippets of code depending on the mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

You can customize the key through `yas/trigger-key'.

Key bindings:
\\{yas/minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas/global-mode nil "\
Non-nil if Yas/Global mode is enabled.
See the command `yas/global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas/global-mode'.")

(custom-autoload 'yas/global-mode "yasnippet/yasnippet" nil)

(autoload 'yas/global-mode "yasnippet/yasnippet" "\
Toggle Yas/Minor mode in all buffers.
With prefix ARG, enable Yas/Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas/Minor mode is enabled in all buffers where
`yas/minor-mode-on' would do it.
See `yas/minor-mode' for more information on Yas/Minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("anything/anything-match-plugin.el" "anything/extensions/anything-complete.el"
;;;;;;  "anything/extensions/anything-gtags.el" "anything/extensions/anything-obsolete.el"
;;;;;;  "anything/extensions/anything-show-completion.el" "auctex/auctex.el"
;;;;;;  "auctex/auto-loads.el" "auctex/lpath.el" "auctex/preview/auto.el"
;;;;;;  "auctex/preview/preview-latex.el" "auctex/preview/prv-emacs.el"
;;;;;;  "auctex/preview/prv-install.el" "auctex/preview/prv-xemacs.el"
;;;;;;  "auctex/tex-buf.el" "auctex/tex-mik.el" "auctex/tex-site.el"
;;;;;;  "auctex/tex-style.el" "auctex/tex-wizard.el" "auto-complete-clang/auto-complete-clang.el"
;;;;;;  "auto-complete-css/auto-complete-css.el" "auto-complete-emacs-lisp/auto-complete-emacs-lisp.el"
;;;;;;  "auto-complete-etags/auto-complete-etags.el" "auto-complete-extension/auto-complete-extension.el"
;;;;;;  "auto-complete-ruby/auto-complete-ruby.el" "auto-complete-yasnippet/auto-complete-yasnippet.el"
;;;;;;  "auto-complete/auto-complete-config.el" "auto-complete/auto-complete.el"
;;;;;;  "auto-complete/fuzzy.el" "auto-complete/popup.el" "autopair/autopair.el"
;;;;;;  "cedet/common/cedet-load.el" "cedet/common/cedet-loaddefs.el"
;;;;;;  "cedet/common/cedet.el" "cedet/common/ezimage.el" "cedet/common/working.el"
;;;;;;  "cedet/speedbar/bigclock.el" "cedet/speedbar/dframe.el" "cedet/speedbar/fsum.el"
;;;;;;  "cedet/speedbar/sb-ant.el" "cedet/speedbar/sb-html.el" "cedet/speedbar/sb-image.el"
;;;;;;  "cedet/speedbar/sb-texinfo.el" "cedet/speedbar/speedbar-load.el"
;;;;;;  "cedet/speedbar/speedbar-loaddefs.el" "cisco-router-mode/cisco-router-mode.el"
;;;;;;  "clang-completion-mode/clang-completion-mode.el" "color-theme-solarized/color-theme-solarized-pkg.el"
;;;;;;  "color-theme-solarized/solarized-dark-theme.el" "color-theme-solarized/solarized-definitions.el"
;;;;;;  "color-theme-solarized/solarized-light-theme.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "dig/dig.el" "doc-mode/doc-mode.el" "edit-server/edit-server.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get.el" "eredis/eredis.el"
;;;;;;  "escreen/escreen.el" "ess/lisp/ess-arc-d.el" "ess/lisp/ess-bugs-d.el"
;;;;;;  "ess/lisp/ess-bugs-l.el" "ess/lisp/ess-comp.el" "ess/lisp/ess-compat.el"
;;;;;;  "ess/lisp/ess-custom.el" "ess/lisp/ess-dde.el" "ess/lisp/ess-debug.el"
;;;;;;  "ess/lisp/ess-developer.el" "ess/lisp/ess-eldoc.el" "ess/lisp/ess-font-lock.el"
;;;;;;  "ess/lisp/ess-help.el" "ess/lisp/ess-inf.el" "ess/lisp/ess-install.el"
;;;;;;  "ess/lisp/ess-jags-d.el" "ess/lisp/ess-lsp-l.el" "ess/lisp/ess-menu.el"
;;;;;;  "ess/lisp/ess-mode.el" "ess/lisp/ess-mous.el" "ess/lisp/ess-mouse.el"
;;;;;;  "ess/lisp/ess-noweb.el" "ess/lisp/ess-omg-d.el" "ess/lisp/ess-omg-l.el"
;;;;;;  "ess/lisp/ess-r-a.el" "ess/lisp/ess-r-args.el" "ess/lisp/ess-r-d.el"
;;;;;;  "ess/lisp/ess-r-gui.el" "ess/lisp/ess-rdired.el" "ess/lisp/ess-roxy.el"
;;;;;;  "ess/lisp/ess-rutils.el" "ess/lisp/ess-s-l.el" "ess/lisp/ess-s3-d.el"
;;;;;;  "ess/lisp/ess-s4-d.el" "ess/lisp/ess-sas-a.el" "ess/lisp/ess-sas-d.el"
;;;;;;  "ess/lisp/ess-sas-l.el" "ess/lisp/ess-send.el" "ess/lisp/ess-send2.el"
;;;;;;  "ess/lisp/ess-site.el" "ess/lisp/ess-sp3-d.el" "ess/lisp/ess-sp4-d.el"
;;;;;;  "ess/lisp/ess-sp5-d.el" "ess/lisp/ess-sp6-d.el" "ess/lisp/ess-sp6w-d.el"
;;;;;;  "ess/lisp/ess-sta-d.el" "ess/lisp/ess-sta-l.el" "ess/lisp/ess-swv.el"
;;;;;;  "ess/lisp/ess-toolbar.el" "ess/lisp/ess-trns.el" "ess/lisp/ess-utils.el"
;;;;;;  "ess/lisp/ess-vst-d.el" "ess/lisp/ess-xls-d.el" "ess/lisp/ess.el"
;;;;;;  "ess/lisp/essd-els.el" "ess/lisp/make-regexp.el" "ess/lisp/msdos.el"
;;;;;;  "ess/lisp/noweb-font-lock-mode.el" "ess/lisp/noweb-mode.el"
;;;;;;  "feature-mode/feature-mode-autoloads.el" "feature-mode/feature-mode-pkg.el"
;;;;;;  "filladapt/filladapt.el" "find-file-in-project/find-file-in-project-autoloads.el"
;;;;;;  "find-file-in-project/find-file-in-project-pkg.el" "magit/50magit.el"
;;;;;;  "magit/magit-bisect.el" "magit/magit-key-mode.el" "magit/magit-pkg.el"
;;;;;;  "magit/magit-stgit.el" "magit/magit-svn.el" "magit/magit-topgit.el"
;;;;;;  "mmm-mode/mmm-auto.el" "mmm-mode/mmm-class.el" "mmm-mode/mmm-cmds.el"
;;;;;;  "mmm-mode/mmm-compat.el" "mmm-mode/mmm-cweb.el" "mmm-mode/mmm-mason.el"
;;;;;;  "mmm-mode/mmm-mode.el" "mmm-mode/mmm-myghty.el" "mmm-mode/mmm-noweb.el"
;;;;;;  "mmm-mode/mmm-region.el" "mmm-mode/mmm-rpm.el" "mmm-mode/mmm-sample.el"
;;;;;;  "mmm-mode/mmm-univ.el" "mmm-mode/mmm-utils.el" "mmm-mode/mmm-vars.el"
;;;;;;  "nxhtml/autostart.el" "nxhtml/autostart22.el" "nxhtml/nxhtml-base.el"
;;;;;;  "nxhtml/nxhtml-loaddefs.el" "nxhtml/web-autoload.el" "org-buffers/org-buffers.el"
;;;;;;  "org-fstree/org-fstree.el" "package/package.el" "quack/quack.el"
;;;;;;  "rails-el/inflections.el" "rails-el/predictive-prog-mode.el"
;;;;;;  "rails-el/rails-bytecompile.el" "rails-el/rails-cmd-proxy.el"
;;;;;;  "rails-el/rails-compat.el" "rails-el/rails-controller-layout.el"
;;;;;;  "rails-el/rails-controller-minor-mode.el" "rails-el/rails-core.el"
;;;;;;  "rails-el/rails-features.el" "rails-el/rails-find.el" "rails-el/rails-fixture-minor-mode.el"
;;;;;;  "rails-el/rails-functional-test-minor-mode.el" "rails-el/rails-helper-minor-mode.el"
;;;;;;  "rails-el/rails-layout-minor-mode.el" "rails-el/rails-lib.el"
;;;;;;  "rails-el/rails-log.el" "rails-el/rails-mailer-minor-mode.el"
;;;;;;  "rails-el/rails-migration-minor-mode.el" "rails-el/rails-model-layout.el"
;;;;;;  "rails-el/rails-model-minor-mode.el" "rails-el/rails-navigation.el"
;;;;;;  "rails-el/rails-plugin-minor-mode.el" "rails-el/rails-project.el"
;;;;;;  "rails-el/rails-rake.el" "rails-el/rails-rspec-feature.el"
;;;;;;  "rails-el/rails-ruby.el" "rails-el/rails-scripts.el" "rails-el/rails-snippets-feature.el"
;;;;;;  "rails-el/rails-spec.el" "rails-el/rails-speedbar-feature.el"
;;;;;;  "rails-el/rails-test.el" "rails-el/rails-ui.el" "rails-el/rails-unit-test-minor-mode.el"
;;;;;;  "rails-el/rails-view-minor-mode.el" "rails-el/rails-ws.el"
;;;;;;  "rails-el/rails.el" "reftex/lisp/lpath.el" "reftex/lisp/reftex-dcr.el"
;;;;;;  "reftex/lisp/reftex-ref.el" "reftex/lisp/reftex-sel.el" "reftex/lisp/reftex-toc.el"
;;;;;;  "reftex/lisp/reftex.el" "remember/read-file-name.el" "remember/remember-autoloads.el"
;;;;;;  "remember/remember-experimental.el" "rinari/util/jump/findr.el"
;;;;;;  "rinari/util/ruby-compilation-rspec.el" "rspec-mode/rspec-mode-expectations.el"
;;;;;;  "ruby-block/ruby-block.el" "sudo-save/sudo-save.el" "tidy/tidy.el"
;;;;;;  "todochiku/todochiku.el" "yaml-mode/yaml-mode.el" "yasnippet/dropdown-list.el"
;;;;;;  "yasnippet/yasnippet-debug.el") (20198 56494 289559))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
