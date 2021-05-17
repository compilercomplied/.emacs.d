
;; --- dependencies ------------------------------------------------------------
(use-package company :ensure t
	:init (add-hook 'after-init-hook 'global-company-mode)
	:config
		(company-mode 1)
		(setq company-minimum-prefix-length 1 company-idle-delay 0.2)  ;; def 0.2
)

(use-package csharp-mode :ensure t)

;; --- core --------------------------------------------------------------------
;; https://emacs-lsp.github.io/lsp-mode/page/performance/
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;; disable flyspell
(setq lsp-diagnostics-provider :none)
