;;; josh-vterm.el --- Josh's Emacs Config: Vterm

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Vterm.

;;; Code:

(use-package vterm
  :general
  (josh/leader-keys "t v" 'vterm :wk "Vterm toggle")
  :config
  (setq shell-file-name "/usr/bin/zsh"))

(provide 'josh-vterm)

;;; josh-vterm.el ends here
