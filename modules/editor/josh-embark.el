;;; josh-embark.el --- Josh's Emacs Config: Embark

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Embark.

;;; Code:

(use-package embark)
(use-package embark-consult
  :straight (embark-consult
			 :type git
			 :host github
			 :repo "oantolin/embark"
			 :files ("embark-consult.el")))

(provide 'josh-embark)

;;; josh-embark.el ends here
