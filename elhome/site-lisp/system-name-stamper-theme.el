(deftheme system-name-stamper
  "Created 2016-01-28.")

(custom-theme-set-variables
 'system-name-stamper
 '(uniquify-ignore-buffers-re "^\\*")
 '(uniquify-min-dir-content 3)
 '(uniquify-separator "/")
 '(user-mail-address "graham.hughes@citrix.com")
 '(auto-insert-mode t)
 '(display-time-mode t)
 '(electric-pair-mode t)
 '(erc-pcomplete-mode t)
 '(erc-stamp-mode t)
 '(erc-track-minor-mode t)
 '(erc-track-mode t)
 '(ido-everywhere nil)
 '(magit-wip-after-apply-mode t)
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(menu-bar-mode t)
 '(org-trello-current-prefix-keybinding "C-c o")
 '(org-trello-files nil)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote reverse))
 '(which-function-mode t)
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets"))))

(custom-theme-set-faces
 'system-name-stamper
 '(default ((t (:inherit nil :stipple nil :background "#f8fced" :foreground "#282828" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Source Code Pro")))))

(provide-theme 'system-name-stamper)
