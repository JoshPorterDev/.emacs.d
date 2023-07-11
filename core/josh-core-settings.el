;;; josh-core-settings.el --- Josh's Emacs Config: General settings

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; General settings.

;;; Code:

(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(electric-pair-mode 1)
(setq auto-save-default nil)
(setq backup-inhibited t)
(setq-default tab-width 4)

(setq scroll-step 1)
(setq scroll-conservatively 101)

(provide 'josh-core-settings)

;;; josh-core-settings.el ends here
