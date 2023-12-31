;;; josh-core-modules.el --- Josh's Emacs Config: Modules

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; This file makes calls to require all the desired modules.

;;; Code:

;; Add modules dir and all its children to the load path
(defvar josh-modules-dir (josh-root-dir "modules")
  "Root directory for Emacs Josh modules.")
(josh-recursive-add-to-load-path josh-modules-dir)

;; Core
(require 'josh-core-packages)

;; Completion
(require 'josh-vertico)
(require 'josh-corfu)
(require 'josh-embark)
(require 'josh-consult)

;; Evil mode
(require 'josh-evil)

;; Theme
;;(require 'josh-modus-theme)
(require 'josh-gruvbox-theme)

;; UI
(require 'josh-dashboard)

;; LaTeX
(require 'josh-auctex)

;; Editor
(require 'josh-treesitter)
(require 'josh-neotree)
(require 'josh-projectile)

;; LSP
;;(require 'josh-eglot)
;;(require 'josh-lsp-mode)

;; Terminal
(require 'josh-vterm)

;; Version control
(require 'josh-magit)

;; Languages
(require 'josh-c)
(require 'josh-lua)
(require 'josh-go)
(require 'josh-rust)

;; GPG
(require 'josh-pinentry)

;; Email
(require 'josh-notmuch)

(provide 'josh-core-modules)

;;; josh-core-modules.el ends here
