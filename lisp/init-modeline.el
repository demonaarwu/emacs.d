;; init-modeline.el -- Configuration for modeline

(setq-default mode-line-format nil)


(use-package awesome-tray
  :vc (:fetcher github :repo "manateelazycat/awesome-tray")
  :init
  (require 'awesome-tray)
  (setq awesome-tray-mode-line-active-color nil)
  (add-hook 'after-init-hook 'awesome-tray-mode)

  (defun aaw-winum-info ()
    (number-to-string (winum-get-number)))

  (defface aaw-winum-face
    '((t (:italic t)))
    "Winum mode"
    :group 'awesome-tray)
  (add-to-list 'awesome-tray-module-alist
               '("aaw-winum" . (aaw-winum-info aaw-winum-face)))
  (setq awesome-tray-active-modules '("aaw-winum" "belong" "file-path" "mode-name" "date"))
  )


(provide 'init-modeline)
;; init-modeline.el ends here
