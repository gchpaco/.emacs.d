(eval-when-compile
  (require 'use-package))

(use-package wand
  :ensure t
  :commands wand:execute
  :functions (wand:add-rule popup-shell-command add-bracket-and-eval)
  :config
  (wand:add-rule-by-pattern :match "\\$ "
                            :capture :after
                            :action popup-shell-command)
  (wand:add-rule-by-pattern :match "https?://"
                            :capture :whole
                            :action browse-url)
  (wand:add-rule-by-pattern :match "file:"
                            :capture :after
                            :action find-file)
  (wand:add-rule-by-pattern :match "#> "
                            :capture :after
                            :action add-bracket-and-eval)
  :bind ("C-RET" . wand:execute))
