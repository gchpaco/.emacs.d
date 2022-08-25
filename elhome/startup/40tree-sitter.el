(eval-when-compile
  (require 'use-package))

(use-package tree-sitter :straight t)
(use-package tree-sitter-langs :straight t)

(require 'tree-sitter)
(require 'tree-sitter-langs)
(global-tree-sitter-mode)
