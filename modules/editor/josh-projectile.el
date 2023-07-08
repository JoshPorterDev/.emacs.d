;;; josh-projectile.el --- Josh's Emacs Config: Projectile

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Projectile.

;;; Code:

(use-package projectile
  :config (projectile-mode)
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  (setq projectile-switch-project-action #'projectile-dired))

(provide 'josh-projectile)

;;; josh-projectile.el ends here
