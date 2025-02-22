;;; init-project.el --- Configuration for project.el  -*- lexical-binding: t -*-

(use-package project
  :ensure nil
  :general
  (aaw-leader-def
    :states 'normal
    "fp" 'project-find-file
    "sp" 'project-switch-project))

(provide 'init-project)
;;; init-project.el ends here

