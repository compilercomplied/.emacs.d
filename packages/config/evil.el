
;; --- dependencies ------------------------------------------------------------
;; (use-package evil-leader :ensure t
;;   :config
;; 	(global-evil-leader-mode 1)
;; )

(use-package evil-surround :ensure t
  :config (global-evil-surround-mode 1)
)

(use-package vimish-fold :ensure t
  :config (vimish-fold-global-mode 1)
)

(use-package evil-commentary :ensure t
	:config (evil-commentary-mode 1)
)
(use-package treemacs-evil :ensure t)
;; TODO install evil-numbers
;; (use-package evil-numbers :ensure t)


;; --- core --------------------------------------------------------------------
(setq evil-default-state 'normal)

;; reddit.com/r/emacs/comments/lvw44q/weekly_tipstricketc_thread/gqav2be
(setq evil-undo-system 'undo-redo)
(customize-set-variable 'evil-undo-system 'undo-redo)

;; disable other modes overriding normal state
(setq evil-overriding-maps nil evil-intercept-maps nil)

;; mode dependant cursor
(setq evil-emacs-state-cursor  '("darkgreen" bar))
(setq evil-insert-state-cursor '("darkblue"  bar))
(setq evil-normal-state-cursor '("darkgreen" box))


;; --- mappings ----------------------------------------------------------------
(evil-set-leader 'normal (kbd "SPC"))
(c:load-tools c:emacs-package-config-dir "evil-binds.el")

;; scroll up doesn't seem to be binded by default (?)
(evil-define-key 'normal 'global (kbd "C-u") 'evil-scroll-up)
(evil-define-key 'visual 'global (kbd "C-u") 'evil-scroll-up)

;; TODO install evil-numbers
;; (evil-define-key 'normal 'global (kbd "C-a") 'evil-numbers/inc-at-pt)
;; (evil-define-key 'visual 'global (kbd "C-a") 'evil-numbers/inc-at-pt)
;; (evil-define-key 'normal 'global (kbd "C-x") 'evil-numbers/dec-at-pt)
;; (evil-define-key 'visual 'global (kbd "C-x") 'evil-numbers/dec-at-pt)
