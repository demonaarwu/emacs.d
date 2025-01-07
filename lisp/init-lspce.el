
(use-package lspce
  :load-path "~/.emacs.d/site-lisp/lspce/"
  :init (progn
          (require 'lspce)
          (setq lspce-send-changes-idle-time 0.1)
          (setq lspce-show-log-level-in-modeline t) ;; show log level in mode line

          ;; You should call this first if you want lspce to write logs
          (lspce-set-log-file "/tmp/lspce.log")

          ;; By default, lspce will not write log out to anywhere.
          ;; To enable logging, you can add the following line
          ;; (lspce-enable-logging)

          ;; You can enable/disable logging on the fly by calling `lspce-enable-logging' or `lspce-disable-logging'.
          (setq lspce-server-programs `(("rust"  "rust-analyzer" "" lspce-ra-initializationOptions)
                                        ("python" "pyright" "" )
                                        ))

          ;; enable lspce in particular buffers
          (add-hook 'python-mode-hook 'lspce-mode)
          (add-hook 'rust-mode-hook 'lspce-mode)

          ;; modify `lspce-server-programs' to add or change a lsp server, see document
          ;; of `lspce-lsp-type-function' to understand how to get buffer's lsp type.
          ;; Bellow is what I use
          ))

(provide 'init-lspce)
