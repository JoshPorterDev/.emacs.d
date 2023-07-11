;;; josh-go.el --- Josh's Emacs Config: Go

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Go.

;;; Code:

(use-package go-mode
  :mode "\\.go\\'"
  :bind (:map go-mode-map
			  ("<f6>" . gofmt)
			  ("C-c 6" . gofmt)))
  ;; :config
  ;; (add-hook 'go-mode-hook #'eglot-ensure))

(provide 'josh-go)

;;; josh-go.el ends here
