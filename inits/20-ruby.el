;; ruby-mode
(when (require 'ruby-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode)))

;; ruby-end
;; https://github.com/rejeep/ruby-end.git
(require 'ruby-end)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (abbrev-mode 1)
             (electric-pair-mode t)
             (electric-indent-mode t)
             (electric-layout-mode t)))

;; ruby-block
;; auto-install-from-emacswiki ruby-block.el
(when (require 'ruby-block nil t)
  (setq ruby-block-height-toggle t))

;; hook
(defun my-ruby-mode-hooks ()
  ;(ruby-electric-mode t)
  (ruby-block-mode t)
)

(add-hook 'ruby-mode-hook 'my-ruby-mode-hooks)

(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column)) indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))
