
(defun my-hello()
  (interactive)
  (message "hello emacs, this is a test" )
  (message (buffer-name))
  (message (if (my-is-user-buf) "is user buffer" "system buffer"))
;;  (message (string-equal "*" (substring (buffer-name) 0 1)))
  )

(defun my-lookup-wikipedia ()
  "查看wikipedia"
  (interactive)
  (let (word)
    (setq word
	  (if (use-region-p)
	      (buffer-substring-no-properties (region-beginning) (region-end))
	    (current-word)
	      )
	  )
    (setq word (replace-regexp-in-string " " "_" word))
    (eww (concat "https://en.wikipedia.org/wiki/" word))
    
    )
  )

(defun my-new-empty-buffer ()
  "create a new empty buffer"
  (interactive)
  (let (($buf (generate-new-buffer "untitled")))
       (switch-to-buffer $buf)
       (funcall initial-major-mode)
       (setq buffer-offer-save t)
       $buf
       )
  )


(defun my-is-user-buf ()
    (interactive)
    (if (string-equal "*" (substring (buffer-name) 0 1))
	nil
      t
      ))


(defun my-next-buffer()
  "next buffer"
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (< i 20)
      (if (not (my-is-user-buf))
	  (progn (next-buffer)
		 (setq i (1+ i))
		 )
	(progn (setq i 100))
	  )
	   )
    )
  
  )

(defun my-prev-buffer()
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (< i 20)
      (if (not (my-is-user-buf))
	  (progn (previous-buffer)
		 (setq i (1+ i))
		 )
	(progn (setq i 100))
	  )
      )
    )
  )



(provide 'my-command)
