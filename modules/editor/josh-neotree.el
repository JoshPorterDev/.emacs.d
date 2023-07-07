;;; josh-neotree.el --- Josh's Emacs Config: Neotree

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Neotree for a file tree.

;;; Code:

(use-package neotree
  :general
  (josh/leader-keys "t n" 'neotree-toggle :wk "Neotree toggle")
  :config
  (setq neo-theme 'nerd))

(provide 'josh-neotree)

;;; josh-neotree.el ends here
