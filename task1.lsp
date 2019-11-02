(defvar lst (list 13 37 322 2 2 8))

(defun insertAt(lst i val)
    (if (< i (list-length lst))
    (setf lst (append (subseq lst 0 i) (cons val (subseq lst i))))
    (append lst val)))

(insertAt lst 1 12)

(defun removeAt(lst i)
    (append (subseq lst 0 i) (subseq lst (+ i 1))))

(removeAt lst 0)

(defun )