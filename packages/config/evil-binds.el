
;; eval auxiliary functions
(c:load-tools c:emacs-package-config-dir "evil-binds-aux.el")

;; --- tree --------------------------------------------------------------------
;; [c]ode
(evil-define-key 'normal 'global (kbd "<leader>cgi") 'lsp-treemacs-implementations)
(evil-define-key 'normal 'global (kbd "<leader>cgd") 'lsp-find-definition)
(evil-define-key 'normal 'global (kbd "<leader>cgt") 'lsp-find-type-definition)
(evil-define-key 'normal 'global (kbd "<leader>cgr") 'lsp-treemacs-references)
(evil-define-key 'normal 'global (kbd "<leader>cgp") 'lsp-ui-peek-find-implementation)

(evil-define-key 'normal 'global (kbd "<leader>ca") 'helm-lsp-code-actions)
(evil-define-key 'normal 'global (kbd "<leader>cR") 'lsp-rename)
;; [w]indow
;; [b]uffer
(evil-define-key 'normal 'global (kbd "<leader>bb") 'helm-buffers-list)
;; [f]iles

;; [x]tensions
(evil-define-key 'normal 'global (kbd "<leader>xc") 'helm-M-x)

;; [e]ditor
(evil-define-key 'normal 'global (kbd "<leader>es") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<leader>er") 'cevil:reload-emacs-config)
(evil-define-key 'normal 'global (kbd "<leader>ef") 'treemacs)

;; [l]ine
(evil-define-key 'normal 'global (kbd "<leader>lx") 'cevil:break-line)
(evil-define-key 'normal 'global (kbd "<leader>lj") 'cevil:drop-one-below)
(evil-define-key 'normal 'global (kbd "<leader>lk") 'cevil:drop-one-above)
