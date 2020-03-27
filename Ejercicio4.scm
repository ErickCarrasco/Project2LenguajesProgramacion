;ejercicio#4
(define (deri derivada)
    (if(= (length derivada) 1)
    ()
    (begin
      (if(= (length derivada) 2)
        (begin
        (display (* (car derivada) (- (length derivada) 1)))
        )
        (begin
          (display (* (car derivada) (- (length derivada) 1)))
          (if(= (length derivada) 3)
            (display "x")
            (begin
            (display "x^")
            (display (- (length derivada) 2))
            )
          )
          (display " + ")
        )
      )
      (deri (cdr derivada)))))
;MAIN
(deri (list 2 -2 5 10))
