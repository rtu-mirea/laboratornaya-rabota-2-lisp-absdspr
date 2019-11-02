(defvar lst (list 13 37 322 2 2 8))

(defun insertAt(lst i val)
    (append (subseq lst 0 i) (cons val (subseq lst i))))

(insertAt lst 1 12)
