;; init.el -- Root of all configs

(defconst aaw-emacs-d (file-name-as-directory user-emacs-directory)
  "Directory of emacs.d.")

(defconst aaw-lisp-dir (concat aaw-emacs-d "lisp")
  "Directory of personal configuration.")

(add-to-list 'load-path aaw-lisp-dir)

;;; Code:
(setq
 ;; 不要缩放frame.
 frame-inhibit-implied-resize t
 ;; 默认用最简单的模式
 initial-major-mode 'fundamental-mode
 ;; 不要自动启用package
 package--init-file-ensured t)

(setq gc-cons-threshold 200000000)

(let ((file-name-handler-alist nil))
  (require 'init-packages)
  (require 'init-misc)
  (require 'init-edit)
  (require 'init-theme)
  (require 'init-evil)
  (require 'init-vertico)
  (require 'init-windows)
  (require 'init-project)
  (run-with-idle-timer
   1 nil
   #'(lambda ()
       (require 'init-modeline)
       (require 'init-autosave)
       (require 'init-llm)
       (require 'init-company)
       (require 'init-lsp)
       (require 'init-term)
       (require 'init-snippet)
       (require 'init-clipboard)
       (require 'init-dired)
       (require 'init-org)
       (require 'init-magit)
       (require 'init-python)
       (require 'init-racket)
       (require 'init-treesit)
       ;; (require 'init-web)
       ;; (require 'init-js)
       (require 'init-c)
       (require 'init-cl)
       (require 'init-eww)
       (require 'init-dart)
       (require 'init-rust)))

  (setq custom-file (expand-file-name "custom-set-variables.el" user-emacs-directory))
  (if (file-exists-p "~/.emacs.d/custom.el")
      (load "~/.emacs.d/custom.el")))

(provide 'init)
;; init.el ends here
(put 'narrow-to-region 'disabled nil)
