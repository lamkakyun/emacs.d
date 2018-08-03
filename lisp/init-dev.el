;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; common lisp 开发环境
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load (expand-file-name "~/Config/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")
(require 'slime)
(slime-setup)
(require 'slime-autoloads)
(provide 'init-dev)
