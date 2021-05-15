
(defun my-inhibit-startup-screen-always ()
  (ignore (setq inhibit-startup-screen t))
)

(add-hook 'command-line-functions #'my-inhibit-startup-screen-always)
