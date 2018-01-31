(eval-when-compile
  (require 'use-package))

(use-package emacs-eclim
  :straight t
  :disabled t
  :init
  (setq-default eclim-eclipse-dirs '("/Applications/Eclipse.app/Contents/Eclipse/")
                eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclimd")
  (add-hook 'after-init-hook 'global-eclim-mode))

(use-package eclimd
  :disabled t)

(use-package company-emacs-eclim
  :functions company-emacs-eclim-setup
  :config (company-emacs-eclim-setup)
  :disabled t)

(use-package meghanada :straight t
  :init
  (add-hook 'java-mode-hook 'meghanada-mode))

(defun my-disable-spaces-for-java (endp delimiter)
  "`paredit-mode' shouldn't insert space before characters in Java.

This function is a suitable element for the list variable
 `paredit-space-for-delimiter-predicates'"
  (not (eq major-mode 'java-mode)))

(add-hook 'paredit-space-for-delimiter-predicates #'my-disable-spaces-for-java)

(use-package javadoc-lookup :straight t
  :bind ("C-h j" . javadoc-lookup)
  :config
  (javadoc-add-artifacts [net.minecraftforge forge "1.12.1-14.22.1.2478"]
                         [args4j args4j "2.33"]
                         [org.slf4j slf4j-nop "1.7.7"]
                         [com.google.guava guava "19.0"]
                         [commons-lang commons-lang "2.6"]
                         [org.ini4j ini4j "0.5.2"]))
