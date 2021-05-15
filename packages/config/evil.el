
;; --- dependencies ------------------------------------------------------------
(use-package evil-leader :ensure t
  :config (global-evil-leader-mode 1)
)

(use-package evil-surround :ensure t
  :config (global-evil-surround-mode 1)
)

(use-package vimish-fold :ensure t
  :config (vimish-fold-global-mode 1)
)

(use-package evil-commentary :ensure t
	:config (evil-commentary-mode 1)
)
;; TODO install evil-numbers
;; (use-package evil-numbers :ensure t)


;; --- core --------------------------------------------------------------------
;; (mostly sane defaults)
(setq evil-default-state 'normal)

(setq evil-undo-system 'undo-redo)
;; disable other modes overriding normal state
(setq evil-overriding-maps nil evil-intercept-maps nil)

;; mode dependant cursor
(setq evil-emacs-state-cursor  '("darkgreen" bar))
(setq evil-insert-state-cursor '("darkblue"  bar))
(setq evil-normal-state-cursor '("darkgreen" box))


;; --- mappings ----------------------------------------------------------------
;; scroll up doesn't seem to be binded by default (?)
(evil-define-key 'normal 'global (kbd "C-u") 'evil-scroll-up)
(evil-define-key 'visual 'global (kbd "C-u") 'evil-scroll-up)

;; TODO install evil-numbers
;; (evil-define-key 'normal 'global (kbd "C-a") 'evil-numbers/inc-at-pt)
;; (evil-define-key 'visual 'global (kbd "C-a") 'evil-numbers/inc-at-pt)
;; (evil-define-key 'normal 'global (kbd "C-x") 'evil-numbers/dec-at-pt)
;; (evil-define-key 'visual 'global (kbd "C-x") 'evil-numbers/dec-at-pt)

(defun cevil:drop-one-below ()
  (interactive)
  (call-interactively (key-binding (kbd "o")))
  (evil-change-to-previous-state (current-buffer))
  (call-interactively (key-binding (kbd "k")))
)
(evil-define-key 'normal 'global "zj" 'cevil:drop-one-below)

(defun cevil:drop-one-above ()
  (interactive)
  (call-interactively (key-binding (kbd "O")))
  (evil-change-to-previous-state (current-buffer))
  (call-interactively (key-binding (kbd "j")))
)
(evil-define-key 'normal 'global "zk" 'cevil:drop-one-above)

(defun cevil:break-line ()
  (interactive)
  (call-interactively (key-binding (kbd "i")))
  (call-interactively (key-binding (kbd "RET")))
  (evil-change-to-previous-state (current-buffer))
)
(evil-define-key 'normal 'global "zx" 'cevil:break-line)
