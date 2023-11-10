;;; josh-rust.el --- Josh's Emacs Config: Rust

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Rust.

;;; Code:

(use-package rust-mode)

(use-package rust-ts-mode
  :mode "\\.rs\\'"
  :hook ((rust-ts-mode . eglot-ensure))
  :bind (:map rust-ts-mode-map
			  ("<f6>" . eglot-format)
			  ("C-c d" . eldoc)
			  ("C-c a" . eglot-code-actions)))

(provide 'josh-rust)

;;; josh-rust.el ends here
