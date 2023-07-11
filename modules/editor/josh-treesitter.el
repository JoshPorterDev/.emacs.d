;;; josh-treesitter.el --- Josh's Emacs Config: Treesitter

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Treesitter for syntax highlighting.

;;; Code:

(use-package tree-sitter
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
(use-package tree-sitter-langs)

(provide 'josh-treesitter)

;;; josh-treesitter.el ends here
