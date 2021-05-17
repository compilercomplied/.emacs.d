
(defun c:inhibit-startup-screen-always ()
  (ignore (setq inhibit-startup-screen t))
)

(add-hook 'command-line-functions #'c:inhibit-startup-screen-always)
