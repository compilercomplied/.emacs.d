
;; using 'cevil' prefix

;; --- line operations ---------------------------------------------------------
(defun cevil:drop-one-below ()
  (interactive)
  (call-interactively (key-binding (kbd "o")))
  (evil-change-to-previous-state (current-buffer))
)

(defun cevil:drop-one-above ()
  (interactive)
  (call-interactively (key-binding (kbd "O")))
  (evil-change-to-previous-state (current-buffer))
)

(defun cevil:break-line ()
  (interactive)
  (call-interactively (key-binding (kbd "i")))
  (call-interactively (key-binding (kbd "RET")))
  (evil-change-to-previous-state (current-buffer))
)

;; --- editor ------------------------------------------------------------------
(defun cevil:reload-emacs-config ()
  (interactive) (load-file c:emacs-init-file)
)
