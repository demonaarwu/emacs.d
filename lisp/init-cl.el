;; init-cl.el -- Configuration for Common Lisp

(use-package slime
  :ensure t
  :config
  (setq inferior-lisp-program "sbcl"))

(provide 'init-cl)
;; init-cl.el ends here
