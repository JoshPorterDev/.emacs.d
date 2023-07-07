;;; josh-core-theme.el --- Josh's Emacs Config: Vertico

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Vertico mode for better completions.

;;; Code:

(use-package vertico
  :bind (:map vertico-map
	      ("C-j" . vertico-next)
	      ("C-k" . vertico-previous))
  :custom
  (vertico-cycle t)
  :init
  (vertico-mode))

(use-package marginalia
  :after vertico
  :init
  (marginalia-mode))

(provide 'josh-core-vertico)

;;; josh-core-vertico.el ends here
