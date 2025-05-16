;; init-autosave.el -- Configuration for Auto save

;; turn off file backup
(setq make-backup-files nil) ; stop creating ~ files
(setq auto-save-default nil)
(setq vc-make-backup-files nil)

(use-package auto-save
  :vc (:url "https://github.com/manateelazycat/auto-save")
  :init
  (require 'auto-save)
  (setq auto-save-idle 0.2)
  (setq auto-save-silent t)   ; quietly save
  (auto-save-enable))

(provide 'init-autosave)
;; init-autosave.el ends here
