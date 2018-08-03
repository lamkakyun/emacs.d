(global-linum-mode t)
(column-number-mode t)
(setq inhibit-startup-message t) ;; hide welcome screen
(setq tab-width 4)          ; and 4 char wide for TAB

(load "~/.emacs.d/lisp/my-abbrev.el")
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)
(electric-pair-mode t)
(load-theme 'klere t)

(provide 'init-theme)
