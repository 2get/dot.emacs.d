;; anything
(require 'anything-startup)
(require 'anything-config)
(add-to-list 'anything-sources 'anything-c-source-emacs-commands)
(define-key global-map [(super a)] 'anything)

(define-key global-map (kbd "\C-x b") 'anything)
