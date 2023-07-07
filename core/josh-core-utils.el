;;; josh-core-utils.el --- Josh's Emacs Config: Helper utility functions

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Helper utilities that are used throughout the config.

;;; Code:

(defun josh-recursive-add-to-load-path (dir)
  "Add DIR and all its sub-directories to `load-path'."
  (add-to-list 'load-path dir)
  (dolist (f (directory-files dir))
    (let ((name (expand-file-name f dir)))
      (when (and (file-directory-p name)
                 (not (string-prefix-p "." f)))
        (josh-recursive-add-to-load-path name)))))

(provide 'josh-core-utils)

;;; josh-core-utils.el ends here
