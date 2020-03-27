# Project2LenguajesProgramacion
Ejercicios de Scheme

Ejercicio #1 
Implemente una función que reciba una lista y que: 1. Valide si la lista es de números enteros. Sino lo es, retorne una excepción 2. Si lo es retorne la suma de los dos números mas grandes de la lista  

Ejercicio #2 
Implemente una función que reciba una lista de números enteros, y que retorna una lista de asociación donde la clave es el numero en la lista y el valor es la cantidad de ocurrencias que tiene en la lista 
Por ejemplo 
(2,3,1,3,2,2,2,3,4,6,6,6,7,1)   ->   ((2,4),(3,3),(1,2),(4,1),(6,3),(7,1)) 

Ejercicio #3 
Implemente la función aplanar que recibe una lista de átomos y si la lista tiene listas anidadas, entonces crea y retorna una lista con todos los elementos de la listas y sus respectivas sublistas. 
Por ejemplo 
(1,2,r,t,(4,5,t)(7,8,(a,(b,(c,d))),9)) ->  (1,2,r,t,4,5,t,7,8,a,b,c,d,9) 

Ejercicio #4 
Implemente una función que recibe los coeficientes de un polinomio de grado n en una lista y retorne una función que es la derivada del polinomio. 

Por ejemplo

2x^3 -2x^2+5x-10 
(2,-2,5,10)  ->  df(x) = 6x^2-4x+5 
(define f (lambda (a) (lambda (x) (* a x)) )) (define df (f 2))  // df es la funcion f(x) = 2x (df 3) 


