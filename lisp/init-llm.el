;;; init-llm.el --- Configuration for LLMs  -*- lexical-binding: t -*-

(use-package gptel
  :ensure t
  :init
  ;; OPTIONAL configuration
  ;; :key can be a function that returns the API key.
  (gptel-make-gemini "Gemini" :key GEMINI-API-KEY :stream t)

  ;; OPTIONAL configuration
  (setq
   gptel-model 'gemini-2.0-flash
   gptel-backend (gptel-make-gemini "Gemini"
                   :key GEMINI-API-KEY
                   :stream t))
  (setq gptel-default-mode 'org-mode))

(provide 'init-llm)
;;; init-llm.el ends here

