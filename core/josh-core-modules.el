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

;; Editor
(require 'josh-treesitter)
(require 'josh-neotree)
(require 'josh-projectile)

;; LSP
(require 'josh-eglot)

;; Terminal
(require 'josh-vterm)

;; Version control
(require 'josh-magit)

;; Languages
(require 'josh-lua)
(require 'josh-go)

;; GPG
(require 'josh-pinentry)

(provide 'josh-core-modules)

;;; josh-core-modules.el ends here
