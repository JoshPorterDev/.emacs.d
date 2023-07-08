;;; josh-core-init.el --- Josh's Emacs Config: Core init file

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Initialize all the modules.

;;; Code:

(defun display-startup-echo-area-message ()
  "Display startup echo area message."
  (message "Emacs initialized in %s" (emacs-init-time)))

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
(require 'josh-core-utils)
(require 'josh-core-modeline)
(require 'josh-core-settings)
(require 'josh-core-packages)
(require 'josh-core-keybinds)
(require 'josh-core-modules)

(provide 'josh-core-init)

;;; josh-core-init.el ends here
