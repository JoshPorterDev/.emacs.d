;;; early-init.el --- Josh's Emacs Config: Early init file

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; This file loads prior to init.el.

;;; Code:

;; Disable menu and tool bars from early-init.
;; This prevents them from appearing temporarily on startup.
(setq tool-bar-mode nil
      menu-bar-mode nil)

(setq package-enable-at-startup nil)

;;; early-init.el ends here
