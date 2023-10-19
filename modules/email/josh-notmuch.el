;;; josh-notmuch.el --- Josh's Emacs Config: Notmuch

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Not much for email

;;; Code:

(use-package notmuch)

(setq send-mail-function 'sendmail-send-it
	  sendmail-program "/usr/bin/msmtp"
	  mail-specify-envelope-from t
	  message-sendmail-envelope-from 'header
	  mail-envelope-from 'header)

(provide 'josh-notmuch)

;;; josh-notmuch.el ends here
