(defun key-set ()
  (global-set-key [f8] 'neotree-toggle)
  (global-set-key (kbd "C-c C-j") 'direx:jump-to-directory)
  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)
  )

(key-set)

(provide 'keyset)
