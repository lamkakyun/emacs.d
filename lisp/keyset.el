(defun key-set ()
  (global-set-key [f8] 'neotree-toggle)
  (global-set-key (kbd "C-c C-j") 'direx:jump-to-directory)
  )

(key-set)

(provide 'keyset)
