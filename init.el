(require 'cask "~/.cask/cask.el")
(cask-initialize)

(defconst user-emacs-directory (file-name-directory (file-chase-links (expand-file-name "~/.emacs.d/" ))))
;; (load-file (expand-file-name "init.el" user-emacs-directory))

;; user-emacs-directory is a system variable
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

(put 'upcase-region 'disabled nil)

