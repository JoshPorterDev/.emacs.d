;;; josh-auctex.el --- Josh's Emacs Config: Auctex

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Auctex.

;;; Code:

(defun my/latex-mode-hook ()
  (advice-add #'TeX-command-master :before (lambda (&rest r) (save-buffer)))
  (push (list 'output-pdf "Zathura") TeX-view-program-selection))

(use-package auctex
  :defer t
  :hook (LaTeX-mode . my/latex-mode-hook))

(provide 'josh-auctex)

;;; josh-auctex.el ends here
