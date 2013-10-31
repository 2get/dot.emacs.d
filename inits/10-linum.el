;; 行番号
(require 'linum)
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#666666"
                    :height 0.9)
(setq linum-format "%3d|")
