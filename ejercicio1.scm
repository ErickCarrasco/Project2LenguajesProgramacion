
(define validacion
    (lambda (x)
     (if (null? x)
        1
        (if (integer? (car x))
            (validacion (cdr x))
            0))))
       
(define (losGrandes L)
    (if (= 1 (validacion L))
      ( + (car(reverse(sort L))) (car(cdr(reverse(sort L)))))
      (exception)
    )
)

(define (maximo L)
   (if (null? (cdr L)) 
      (car L) 
      (if (< (car L) (maximo (cdr L)))  
          (maximo (cdr L)) 
          (car L)
      )
    )
)

(define sort 
  (lambda (L) 
   (cond ( (null? L) '() )
         ( else (cons (chiquito L (car L))   
                      (sort (quitar L (chiquito L (car L)))))
         )
   )
))

(define (quitar L A)              
  (cond ( (null? L) '() )           
        ( (= (car L) A) (cdr L))    
        (else (cons (car L)(quitar (cdr L) A))) 
  )
)

(define (chiquito L A)
  (cond ( (null? L) A)
        ( (< (car L) A) (chiquito (cdr L)(car L)))
        (else (chiquito (cdr L) A ))
  )
)


(losGrandes (list 11 5 6 4 8 34.5 12))