(require 'server)

(unless (server-running-p)
  (server-start))

(defun server-shutdown()
  "Save buffers, Quit, and Shutdown (kill) server"
  (intercative)
  (save-some-buffers)
  (kill-emacs))
