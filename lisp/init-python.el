;; init-python.el -- Configuration for Python

(setq lsp-bridge-python-lsp-server 'pyright)

(use-package pyvenv
  :ensure t
  :init
  (setenv "WORKON_HOME" "~/.pyenv/versions")
  (add-hook 'python-mode-hook (lambda ()
                                (pyvenv-mode t)
                                (pyvenv-activate "./venv")
                                (eglot-ensure))))

(provide 'init-python)
;; init-python.el ends here
