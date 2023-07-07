;;; josh-core-init.el --- Josh's Emacs Config: Core init file

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Initialize all the modules.

;;; Code:

(defvar josh-core-dir (file-name-directory load-file-name)
  "Directory for all core files.")

(defvar josh-root-dir (expand-file-name ".." josh-core-dir)
  "Root directory of emacs config.")

(defun josh-root-dir (name)
  "Return absolute path to the sub-directory name under josh-root-dir."
  (expand-file-name name josh-root-dir))

;; Add core directory to path
(add-to-list 'load-path josh-core-dir)

;; Config changes made through the customize UI will be stored here
(setq custom-file (josh-root-dir "custom.el"))
(load-file custom-file)

;; Require modules
(require 'josh-core-settings)
(require 'josh-core-theme)

(provide 'josh-core-init)

;;; josh-core-init.el ends here
