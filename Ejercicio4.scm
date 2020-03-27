;Ejercicio #4
(define (derivada list1 list2)
        (if (null? list1) list2
            (cons ( * (-(length list1) 1) (car list1) ) (derivada (cdr list1) list2))))

(define (length lis)
   (cond ((null? lis)
          0)
         (else
          (+ 1 (length (cdr lis))))))

;MAIN

(derivada '(2 1 2 3) '())
