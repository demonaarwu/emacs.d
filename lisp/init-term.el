;; init-term.el -- Configuration for terminal

(use-package vterm
  :ensure t
  :general
  (general-define-key
   :states 'normal
   :keymaps 'vterm-mode-map
   "p" 'vterm-yank
   "q" 'vterm-toggle))

(defun switch-to-vterm ()
  (interactive)
  (vterm-toggle)
  (general-simulate-key "i" :state 'normal))

(use-package eee
  :vc (:url "https://github.com/eval-exec/eee.el")
  :general
  (aaw-leader-def
    :states 'normal
    "." 'ee-yazi
    "gg" 'ee-rg)
  :config
  (setq ee-terminal-command "kitty"))

(use-package vterm-toggle
  :ensure t
  :general
  (aaw-leader-def
    :states 'normal
    "tt" 'switch-to-vterm))

(provide 'init-term)
;; init-term.el ends here
