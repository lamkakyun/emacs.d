
(defun key-set ()

  (interactive)
  
  ;; mac os key settings
  (if (eq system-type 'darwin)
      (progn
	(setq mac-command-modifier 'alt)
	(setq mac-control-modifier 'control)
	(setq mac-option-modifier 'meta)
	)
      )
  
  (global-set-key [f8] 'neotree-toggle)
  (global-set-key (kbd "C-c C-j") 'direx:jump-to-directory)
  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)
  (global-set-key (kbd "<f12>") 'find-file-in-project)
  (global-set-key (kbd "<f6>") 'my-prev-buffer)
  (global-set-key (kbd "<f7>") 'my-next-buffer)
  ;; 这个按键无效
  ;;  (global-set-key (kbd "C-;") 'iedit-mode)
  (global-set-key (kbd "C-c m u") 'iedit-mode)
  ;; (global-set-key (kbd "<f5") '_init_file)
  )

(key-set)

(provide 'keyset)
