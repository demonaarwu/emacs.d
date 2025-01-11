;; init.el -- Root of all configs

(setq gc-cons-threshold (* 128 1024 1024))

(defconst aaw-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d.")

(defconst aaw-lisp-dir (concat aaw-emacs-d "lisp")
  "Directory of personal configuration.")

(add-to-list 'load-path aaw-lisp-dir)

(let ((file-name-handler-alist nil))
  (require 'init-misc)
  (require 'init-edit)
  (require 'init-theme)
  (require 'init-packages)
  (require 'init-vertico)
  (require 'init-term)
  (require 'init-evil)
  (require 'init-autosave)
  ;; (require 'init-lsp)
  (require 'init-eglot)
  (require 'init-company)
  (require 'init-modeline)
  (require 'init-clipboard)
  (require 'init-windows)
  (require 'init-org)
  (require 'init-epub)
  (require 'init-magit)
  (require 'init-python)
  (require 'init-c)
  (require 'init-cl)
  (require 'init-rust)
  (require 'init-shell)
  (setq custom-file (expand-file-name "custom-set-variables.el" user-emacs-directory))
  (if (file-exists-p "~/.emacs.d/custom.el")
      (load "~/.emacs.d/custom.el"))
  )

(provide 'init)
;; init.el ends here
