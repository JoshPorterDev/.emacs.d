;;; josh-dashboard.el --- Josh's Emacs Config: Dashboard

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Dashboard.

;;; Code:

(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-center-content t)
  (setq dashboard-startup-banner 'logo)
  (setq dashboard-banner-logo-title "Josh's Emacs")
  (setq dashboard-items '((recents . 5)
			  (bookmarks . 5)
			  (projects . 5))))

(provide 'josh-dashboard)

;;; josh-dashboard.el ends here
