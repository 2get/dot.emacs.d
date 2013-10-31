;; C-h をバックスペースに
(global-set-key "\C-h" 'delete-backward-char)

;; M-g で指定行へ移動
(global-set-key "\M-g" 'goto-line)

;; ウィンドウを横分割
(define-key global-map (kbd "C-x -") 'split-window-vertically)
;; ウィンドウを縦分割
(define-key global-map (kbd "C-x |") 'split-window-horizontally)
;; ウィンドウを閉じる
(define-key global-map (kbd "C-x x") 'delete-window)
;; 他のウィンドウを全て閉じる
(define-key global-map (kbd "C-x !") 'delete-other-window)
;; ウィンドウを削除
(global-set-key (kbd "C-x &") 'kill-buffer)

(define-key global-map (kbd "C-2") 'set-mark-command)
