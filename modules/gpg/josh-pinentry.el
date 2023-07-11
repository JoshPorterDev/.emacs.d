;;; josh-pinentry.el --- Josh's Emacs Config: Pinentry

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; This setup is needed to allow for emacs to prompt for the gpg password from the minibuffer
;; instead of the external default.
;; For this to work, you also need to add the following line to your ~/.gnupg/gpg-agent.conf
;; allow-emacs-pinentry

;; This was tested to work on both emacs 28.2 and 30.0.50 dev version.
;; If you are using a newer or older version, the config might be different.

;;; Code:

(use-package pinentry
  :config
  (setq epg-pinentry-mode 'loopback)
  (pinentry-start))

(provide 'josh-pinentry)

;;; josh-pinentry.el ends here
