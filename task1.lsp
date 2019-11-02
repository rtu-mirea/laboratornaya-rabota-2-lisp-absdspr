(defvar lst (list 13 37 322 2 2 8))

(defun inserAt(index val lst)
    (append (subseq(lst 0 index) (cons val (subseq lst index))))
)

