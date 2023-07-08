;;; josh-core-modeline.el --- Josh's Emacs Config: Modeline

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Some changes to the default modeline.

;;; Code:

(setq display-time-format "%H:%M")
(setq display-time-default-load-average nil)

(setq-default mode-line-format
      '("%e"
	mode-line-front-space
	mode-line-buffer-identification
	"  "
	display-time-string
	"  "
	mode-name
	"  "
	(vc-mode vc-mode)
	mode-line-end-space))

(display-time-mode 1)

(provide 'josh-core-modeline)

;;; josh-core-modeline.el ends here
