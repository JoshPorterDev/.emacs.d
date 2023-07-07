;;; josh-core-keybinds.el --- Josh's Emacs Config: Global keybinds

;; Author: Josh Porter <josh@joshporter.xyz>
;; URL: https://github.com/joshporterdev/.emacs.d

;;; Commentary:

;; Set up the general key definer which will serve as the base for all additional keybinds.
;; Also add which-key for better documented keybinds.

;;; Code:

(use-package which-key
  :init
    (which-key-mode 1)
  :config
  (setq which-key-side-window-location 'bottom
	  which-key-sort-order #'which-key-key-order-alpha
	  which-key-sort-uppercase-first nil
	  which-key-add-column-padding 1
	  which-key-max-display-columns nil
	  which-key-min-display-lines 6
	  which-key-side-window-slot -10
	  which-key-side-window-max-height 0.25
	  which-key-idle-delay 0.8
	  which-key-max-description-length 25
	  which-key-allow-imprecise-window-fit t
	  which-key-separator " → " ))

(use-package general
  :config
  (general-evil-setup)

  (general-create-definer josh/leader-keys
    :states '(normal insert visual emacs)
    :keymaps 'override
    :prefix "SPC"
    :global-prefix "M-SPC")

  (josh/leader-keys
    "." '(find-file :wk "find file"))

  (josh/leader-keys
    "t" '(:ignore t :wk "Toggle commands")
    "t c" '(comment-or-uncomment-region :wk "comment region")
    "t l" '(display-line-numbers-mode :wk "toggle line numbers"))

  (josh/leader-keys
    "w" '(:ignore t :wk "Window commands")
    ;; Window splits
    "w c" '(evil-window-delete :wk "Close window")
    "w n" '(evil-window-new :wk "New window")
    "w s" '(evil-window-split :wk "Horizontal split window")
    "w v" '(evil-window-vsplit :wk "Vertical split window")
    ;; Window motions
    "w h" '(evil-window-left :wk "Window left")
    "w j" '(evil-window-down :wk "Window down")
    "w k" '(evil-window-up :wk "Window up")
    "w l" '(evil-window-right :wk "Window right")
    "w w" '(evil-window-next :wk "Goto next window"))

  (josh/leader-keys
    "b" '(:ignore t :wk "Buffer commands")
    "b b" '(switch-to-buffer :wk "switch to buffer")
    "b k" '(kill-this-buffer :wk "kill this buffer")
    "b p" '(previous-buffer :wk "previous buffer")
    "b n" '(next-buffer :wk "next buffer")
    "b r" '(revert-buffer :wk "revert buffer")))

(provide 'josh-core-keybinds)

;;; josh-core-keybinds.el ends here
