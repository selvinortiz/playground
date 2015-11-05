;;; Returns the (nth) number in the fibonacci sequence

;;; Sequence
;;; --------
;;; n =  0  1  2  3  4  5  6   7   8   9  10  11   12   13   14...
;;; r =  0  1  1  2  3  5  8  13  21  34  55  89  144  233  377...

(defun fib (n)
  "Returns the (nth) number in the fibonacci sequence"
  (if (= n 0)
    0
    (if (or (= n 1) (= n 2))
      1
      (+ (fib (- n 1)) (fib (- n 2))))))
