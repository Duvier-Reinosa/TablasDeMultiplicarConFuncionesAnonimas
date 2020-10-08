#lang racket
(define(imprimirBase i)
  (printf "x ~a = " i)
  )

(define (imprimirMultiplicacion valor i resultado)
  (set! resultado (* valor i))
  resultado
  )


(define (tablaDeMultiplicar valor i)
  (if (= i 11)
      (void);parar el programa
      (begin
        (printf "~a " valor)
        (imprimirBase i)
        (printf "~a \n" (imprimirMultiplicacion valor i 0))
        (tablaDeMultiplicar valor (+ i 1))
        )
  ))
(tablaDeMultiplicar (read) 1)