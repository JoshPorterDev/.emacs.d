;;; josh-consult.el --- Josh's Emacs Config: Consult

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Consult.

;;; Code:

(use-package consult
  :bind (("C-x b" . consult-buffer)))

(provide 'josh-consult)

;;; josh-consult.el ends here
