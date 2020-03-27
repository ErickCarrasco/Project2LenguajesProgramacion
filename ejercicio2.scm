;Ejercicio 2
(define (ocurrencias lista)
  (let loop ((lista2 lista) (res '()))
    (if (null? lista2)     
        (reverse res)
        (let ((c (car lista2)))
          (loop (cdr lista2) 
                (if (assoc c res) 
                    res 
                    (cons (cons c ( contar (lambda (e) (eq? e c)) lista)) res)))))))

(define ( contar pred lista)
  (let loop ((lista lista) (  contador 0))
    (cond ((null? lista)   contador)
          ((pred (car lista)) (loop (cdr lista) (+ 1   contador)))
          (else (loop (cdr lista)   contador)))))
        
(ocurrencias '(2 3 1 3 2 2 2 3 4 6 6 6 7 1))

;car la cabezona de la lista
;cdr la cola
