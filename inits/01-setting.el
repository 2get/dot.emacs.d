;; 編集時 buffer 再読み込み
(global-auto-revert-mode 1)

;; yes or now を y or n
(fset 'yes-or-no-p' y-or-n-p)

;; ファイル名大文字小文字区別しない
(setq completion-ignore-case t)

;; 自動バックアップを抑制
(setq backup-inhibited t)

;; オートセーブファイルを自動削除
(setq delete-auto-save-files t)

;; [#]のつくバックアップファイルを作らない
(setq auto-save-default nil)

;; ビープ音を抑制
(setq ring-bell-function '(lambda ()))

;; ファイル末尾の改行がなければ追加
(setq require-final-newline t)

;; 余計な空行/改行を入れない
(setq next-line-add-newlines nil)
(put 'set-goal-column 'disabled nil)

;; 選択リージョンに色付け
(setq transient-mark-mode t)

;; 括弧の範囲内を強調表示
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)

;; 強調表示
(transient-mark-mode t)

;; 選択領域の色
(set-face-background 'region "#555")

;; 選択行ハイライト
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "#555"))  ;; こっち使われる
    (((class color)
      (background light))
     (:background "#CC0066"))
    (t
     ()))
  "*Face used by hl-line.")

;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; 行末の（タブ・半角スペース）を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; タブをスペース
(setq-default indent-tabs-mode nil)

;; 行間
(setq-default line-spacing 0)

;; モードラインに行番号表示
(line-number-mode t)

;; モードラインに列番号表示
(column-number-mode t)

;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;; 1行が80桁を超えたら長すぎると判断する
(setq whitespace-line-column 80)
(setq whitespace-style '(face                ;; faceを使って視覚化
                         trailing            ;; 行末の空白を対象
                         lines-tail          ;; 長すぎる行のうち
                                             ;; whitespace-line-column以降のみを
                                             ;; 対象とする
                         space-before-tab    ;; タブの前にあるスペースを対象
                         space-after-tab))   ;; タブの後にあるスペースを対象

;; フレーム透過
(add-to-list 'default-frame-alist '(alpha . (0.75 0.75)))
