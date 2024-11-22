;; init.el -- Root of all configs

(setq gc-cons-threshold (* 128 1024 1024))

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-misc)
(require 'init-edit)
(require 'init-theme)
(require 'init-packages)
(require 'init-ivy)
(require 'init-evil)
(require 'init-autosave)
;;(require 'init-lsp)
(require 'init-company)
(require 'init-modeline)
(require 'init-clipboard)
(require 'init-org)

(require 'init-python)
(require 'init-c)
(require 'init-rust)
(require 'init-shell)

(setq custom-file (expand-file-name "custom-set-variables.el" user-emacs-directory))
(load custom-file t t)

(if (file-exists-p "~/.emacs.d/custom.el")
    (load "~/.emacs.d/custom.el"))

(provide 'init)
;; init.el ends here
