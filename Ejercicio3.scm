;ejercicio #3
(define lista (cons 1 (cons 2 (cons 3 (cons 4 '())))))

(define aplanar (lambda (lista)
(if (null? lista)
'()
(if (list? (car lista))
(append_lista (aplanar (car lista)) (aplanar (cdr lista)))
(append_lista (list (car lista)) (aplanar (cdr lista)))))))

(define append_lista (lambda (l1 l2)
(if (and (null? l1) (null? l2))
'()
(if (not (null? l1))
(cons (car l1) (append_lista (cdr l1) l2))
(if (not (null? l2))
(cons (car l2) (append_lista l1 (cdr l2)))'())))))

(aplanar '(1,2,r,t,(4,5,t)(7,8,(a,(b,(c,d))))(9))
