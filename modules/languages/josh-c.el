;;; josh-c.el --- Josh's Emacs Config: C

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; C.

;;; Code:

(setq c-ts-mode-indent-offset 4)
(add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))

(provide 'josh-c)

;;; josh-c.el ends here
