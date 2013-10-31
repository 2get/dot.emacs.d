(when (require 'scss-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode)))

(defun scss-custom ()
  (setq indent-tabs-mode nil)
  (setq css-indent-offset 2)
  )

(add-hook 'scss-mode-hook
  '(lambda() (scss-custom)))
