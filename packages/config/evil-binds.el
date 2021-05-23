
;; eval auxiliary functions
(c:load-tools c:emacs-package-config-dir "evil-binds-aux.el")

;; --- maps --------------------------------------------------------------------
;; evil-numbers def
(evil-define-key 'normal 'global (kbd "C-a") 'evil-numbers/inc-at-pt)
(evil-define-key 'visual 'global (kbd "C-a") 'evil-numbers/inc-at-pt)
(evil-define-key 'normal 'global (kbd "C-x") 'evil-numbers/dec-at-pt)
(evil-define-key 'visual 'global (kbd "C-x") 'evil-numbers/dec-at-pt)


;; --- tree --------------------------------------------------------------------
;; [c]ode
(evil-define-key 'normal 'global (kbd "<leader>cgi") 'lsp-treemacs-implementations)
(evil-define-key 'normal 'global (kbd "<leader>cgd") 'lsp-find-definition)
(evil-define-key 'normal 'global (kbd "<leader>cgt") 'lsp-find-type-definition)
(evil-define-key 'normal 'global (kbd "<leader>cgr") 'lsp-treemacs-references)
(evil-define-key 'normal 'global (kbd "<leader>cgp") 'lsp-ui-peek-find-implementation)

(evil-define-key 'normal 'global (kbd "<leader>ca") 'helm-lsp-code-actions)
(evil-define-key 'normal 'global (kbd "<leader>cR") 'lsp-rename)
;; [f]ind
(defun cevil:helm-find-file-recursively ()  
  (interactive)
  "Recursively find files in glob manner, in the specified directory."
  (helm-find 'ask-for-dir))
(evil-define-key 'normal 'global (kbd "<leader>fb") 'helm-buffers-list)
(evil-define-key 'normal 'global (kbd "<leader>ft") 'helm-ag)
(evil-define-key 'normal 'global (kbd "<leader>ff") 'cevil:helm-find-file-recursively)
(evil-define-key 'normal 'global (kbd "<leader>fc") 'helm-M-x)

;; [e]ditor
(evil-define-key 'normal 'global (kbd "<leader>es") 'save-buffer)
(evil-define-key 'normal 'global (kbd "<leader>er") 'cevil:reload-emacs-config)
(evil-define-key 'normal 'global (kbd "<leader>ef") 'treemacs)

;; [l]ine
(evil-define-key 'normal 'global (kbd "<leader>lx") 'cevil:break-line)
(evil-define-key 'normal 'global (kbd "<leader>lj") 'cevil:drop-one-below)
(evil-define-key 'normal 'global (kbd "<leader>lk") 'cevil:drop-one-above)

;; [w]indow
;; [b]uffer
;; [x]tensions
