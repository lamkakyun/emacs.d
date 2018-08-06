(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-package)

(require 'init-env)
;;(require 'init-helm)
(require 'init-dev)
(require 'init-theme)
(require 'keyset)
(require 'init-custom)
(require 'init-w3m)

;; (defun hack-emacs ()
;;     "config file"
;;       (interactive)
;;         (find-file "~/.emacs.d/lisp/"))

(provide 'init-utils)
