
;; --- dependencies ------------------------------------------------------------
(use-package csharp-mode :ensure t)

(use-package company :ensure t
	:config
		(setq company-minimum-prefix-length 1 company-idle-delay 0.2)  ;; def 0.2
		(use-package company-quickhelp :ensure t
				:config
						(setq company-quickhelp-delay 0.5)
						(company-quickhelp-mode)
		)
)

(use-package lsp-treemacs :ensure t)

(use-package lsp-ui :ensure t
	:config
		(setq lsp-ui-sideline-delay 0)
		(setq lsp-ui-sideline-show-hover nil)
		(setq lsp-ui-sideline-show-code-actions nil)
		(setq lsp-ui-sideline-show-diagnostics nil)
	  (lsp-ui-peek-enable t)
	  (lsp-ui-doc-enable t)
		(setq lsp-ui-doc-show-with-cursor nil)
		(setq lsp-ui-doc-show-with-mouse t)
)

(use-package helm-lsp :ensure t)

;; --- core --------------------------------------------------------------------
;; https://emacs-lsp.github.io/lsp-mode/page/performance/
(setq gc-cons-threshold 100000000)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;; disable flyspell
(setq lsp-diagnostics-provider :none)
;; enable company-mode globally (maybe declare company outside of LSP?)
(add-hook 'text-mode-hook (company-mode -1))
(add-hook 'org-mode-hook (company-mode -1))
(setq lsp-headerline-breadcrumb-segments '(symbols))
(setq lsp-headerline-arrow "=>")

(setq lsp-treemacs-sync-mode 1)
