;;; josh-treesitter.el --- Josh's Emacs Config: Treesitter

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Treesitter for syntax highlighting.

;;; Code:

;; (use-package tree-sitter
;;   :config
;;   (global-tree-sitter-mode)
;;   (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
;; (use-package tree-sitter-langs)

(require 'treesit)

(setq treesit-language-source-alist
	  '((c "https://github.com/tree-sitter/tree-sitter-c")
		(cpp "https://github.com/tree-sitter/tree-sitter-cpp")
		(go "https://github.com/tree-sitter/tree-sitter-go")
		(gomod "https://github.com/camdencheek/tree-sitter-go-mod")
		(rust "https://github.com/tree-sitter/tree-sitter-rust")))

(dolist (lang treesit-language-source-alist)
  (unless (treesit-language-available-p (car lang))
    (treesit-install-language-grammar (car lang))))

(setq treesit-font-lock-level 4)

(provide 'josh-treesitter)

;;; josh-treesitter.el ends here
