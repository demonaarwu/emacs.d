;; init.el -- Root of all configs

(setq gc-cons-threshold (* 128 1024 1024))

(defconst aaw-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d.")

(defconst aaw-lisp-dir (concat aaw-emacs-d "lisp")
  "Directory of personal configuration.")

(add-to-list 'load-path aaw-lisp-dir)

(require 'init-misc)
(require 'init-edit)
(require 'init-theme)
(require 'init-packages)
(require 'init-ivy)
(require 'init-term)
(require 'init-evil)
(require 'init-autosave)
;; (require 'init-lsp)
;; (require 'init-eglot)
(require 'init-company)
(require 'init-modeline)
(require 'init-clipboard)
(require 'init-windows)
(require 'init-org)
(require 'init-epub)

(require 'init-python)
(require 'init-c)
(require 'init-cl)
(require 'init-rust)
(require 'init-shell)

(setq custom-file (expand-file-name "custom-set-variables.el" user-emacs-directory))
(load custom-file t)

(if (file-exists-p "~/.emacs.d/custom.el")
    (load "~/.emacs.d/custom.el"))

(provide 'init)
;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-vc-selected-packages
   '((eglot-booster :vc-backend Git :url "https://github.com/jdtsmith/eglot-booster"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
