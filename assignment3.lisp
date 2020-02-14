;;;Aaron Shehan

(defun searchlist (table name)
	(find name table :key #'car)
) 

(defun add (symboltable name category type value)
	(setq temp (searchlist symboltable name))
	(cond (temp
			(return-from add nil)
	      )
	)
	(cond (symboltable
			(append symboltable (list (list name category type value)))
		  )
		  (t
			(setq symboltable (list (list name category type value)))
		  )
	)
)

(defun entry (symboltable name)
	(setq temp (searchlist symboltable name))
	(cond (temp
			(cdr temp)
		  )
		  (t
			(return-from entry nil)
		  )
	)
)

(defun category (symboltable name)
	(setq temp (searchlist symboltable name))
	(cond (temp
			(cadr temp)
		  )
		  (t
			(return-from entry nil)
		  )
	)

)

(defun type (symboltable name)
	(setq temp (searchlist symboltable name))
	(cond (temp
			(caddr temp)
		  )
		  (t
			(return-from entry nil)
		  )
	)

)

(defun value (symboltable name)
	(setq temp (searchlist symboltable name))
	(cond (temp
			(cadddr temp)
		  )
		  (t
			(return-from entry nil)
		  )
	)

)

