;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: smex: M-x enhancement for emacs, settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'smex)
;; (smex-initialize)
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is your old M-x.
;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: yasnippet settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package yasnippet
             :config
             (yas-global-mode t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: pos-tip setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for pos-tip
;; (require 'pos-tip)
;; (setq ac-quick-help-prefer-pos-tip t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: auto-complete settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (ac-config-default)
(global-company-mode t)
(setq company-idle-delay 0.08)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)
(setq company-require-match nil)
(setq company-dabbrev-downcase nil)

(add-to-list 'company-backends '(company-keywords
                                  company-files
                                  company-abbrev
                                  company-yasnippet
                                  company-dabbrev
                                  company-gtags
                                  company-etags
                                  company-eclim
                                  company-elisp))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: company settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-hook 'after-init-hook 'global-company-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: use MACRO use-package to load plugin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package js2-mode
             :mode "\\.js\\'")
(use-package web-mode
             :mode ("\\.html\\'" . web-mode))
(use-package vue-mode
             :mode "\\.vue\\'")
(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin; super save
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package super-save
             :init
             (super-save-mode t)
             (setq super-save-auto-save-when-idle t)
             (setq auto-save-default nil)
             )


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: popwin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package popwin
             :config
             (popwin-mode t))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: neotree settings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package neotree
             :init
             (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
             (setq projectile-switch-project-action 'neotree-projectile-action)
             )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; plugin: other
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package which-key
             :init
             (which-key-mode)
             )
;; (use-package iedit)
(use-package avy)
(use-package ivy
             :init
             (ivy-mode t)
             (setq ivy-use-virtual-buffers t)
             )
(use-package editorconfig
             :config
             (editorconfig-mode t))
(use-package crux)
(use-package exec-path-from-shell
             :config
             (exec-path-from-shell-initialize))
(use-package indent-guide
             :config
             (indent-guide-global-mode))
(use-package window-numbering
             :init
             (window-numbering-mode t)
             )
(use-package ace-jump-mode)
(use-package flycheck
             :config
             (global-flycheck-mode t)
             (flycheck-ycmd-setup))
(use-package smartparens-config
             :init
             (smartparens-global-mode t))
(use-package highlight-parentheses
             :config
             (global-highlight-parentheses-mode t))
(use-package all-the-icons
             :config
             (mode-icons-mode t))
(use-package xcscope
             :config
             (cscope-minor-mode t))
(use-package ggtags
             :config
             (ggtags-mode t))
(use-package dashboard
             :init
             (dashboard-setup-startup-hook)
             (setq dashboard-banner-logo-title "Cross Emacs")
             (setq dashboard-setup-startup-banner 'logo)
             (setq dashboard-items '((recents . 5)
                                     (bookmarks . 5)
                                     (projects . 5)
                                     (agenda . 5)))
             )



(provide 'init-env)
