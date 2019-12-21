;; Функция для сжатия списка
(defun compress(lst &aux (current (car lst)) (len 1) tail)
  (cons
   (if (= current (cadr lst))
      (list (setq len (loop for i in lst when (/= i current) do (loop-finish) count t)) current) current)
   (if (setq tail (subseq lst len)) (compress tail)))
)

;; Функция для расжатия списка
(defun decompress(lst)
  (loop for element in lst
    if (integerp element) collect element
    if (listp element) nconc (make-list (car element) 
  :initial-element (cadr element))))

;; Пример сжатия списка (пример с доски)
(compress (list 1 1 1 1 0 1 0 0 0 0 0 0 1 1))

;; Пример расжатия списка (пример с доски)
(decompress (list (list 4 1) 0 1 (list 6 0) (list 2 1)))