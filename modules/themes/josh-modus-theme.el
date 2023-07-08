;;; josh-modus-theme.el --- Josh's Emacs Config: Modus theme

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Theme settings for the modus theme.

;;; Code:

(use-package modus-themes)

;; Remove the border
(setq modus-themes-common-palette-overrides
      '((border-mode-line-active unspecified)
        (border-mode-line-inactive unspecified)
	(fringe unspecified)))

(load-theme 'modus-vivendi t)

(provide 'josh-modus-theme)

;;; josh-modus-theme.el ends here
