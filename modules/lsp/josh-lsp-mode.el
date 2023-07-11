;;; josh-lsp-mode.el --- Josh's Emacs Config: Lsp-Mode

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Lsp-Mode for complete lsp capabilities.

;;; Code:

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config
  (lsp-enable-which-key-integration t)
  :hook ((go-mode) . lsp-deferred))

(use-package lsp-ui)

(provide 'josh-lsp-mode)

;;; josh-lsp-mode.el ends here
