;; user-emacs-directory is a system variable
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-utils)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

(put 'upcase-region 'disabled nil)

