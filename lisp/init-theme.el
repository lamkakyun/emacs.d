
(global-linum-mode t)
(column-number-mode t)
(setq inhibit-startup-message t) ;; hide welcome screen
(setq tab-width 4)          ; and 4 char wide for TAB

(load "~/.emacs.d/lisp/my-abbrev.el")
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
;; (electric-pair-mode t)
(load-theme 'klere t)
;; (tool-bar-mode nil)

(setq default-directory "~/.emacs.d")

;; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes
(fset 'yes-or-no-p 'y-or-n-p)
;; (setq column-number-mode t)
;; (setq line-number-mode t)

;; 设定不产生备份文件
(setq make-backup-files nil)

;; 不生成临时文件
(setq-default make-backup-files nil)


(provide 'init-theme)

