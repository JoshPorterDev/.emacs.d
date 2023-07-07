;;; init.el --- Josh's Emacs Config: Init file

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Entry point for the config.

;;; Code:

(setq gc-cons-threshold (* 50 1000 1000))

(setq load-prefer-newer t)
(load (expand-file-name "core/josh-core-init.el"
			(file-name-directory load-file-name)))

;;; init.el ends here
