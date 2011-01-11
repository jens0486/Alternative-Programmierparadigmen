(require (lib "trace.ss"))

(define (anzElemente liste)
(cond
[(null? liste) 0]
[else (+ 1 (anzElemente (cdr liste)))] ))

(define (sumElemente liste)
(cond
[(null? liste) 0]
[else (+ (car liste)
(sumElemente (cdr liste)))] ))

(define (anfuegen el liste)
(cond ((null? liste) (cons el ()))
(else (cons (car liste)
(anfuegen el (cdr liste))))))

(define (umkehr liste)
(cond ((null? liste) liste)
((null? (cdr liste)) liste)
(else (anfuegen (car liste)
(umkehr (cdr liste))))))

(define (element liste x)
   (cond
        [(empty? liste ) #f]
        [(= (car liste) x) #t]
        [else (element (cdr liste) x)]
   )
)

(define (einfuegen x liste stelle)
   (cond
        [(empty? liste) (cons x liste)] 
        [(= stelle 0) (cons x liste)]
        [else (cons (car liste) (einfuegen x (cdr liste) (- stelle 1)))]
    )
 )

(define (loeschen x liste)
   (cond
        [(empty? liste) liste]
        [(= (car liste) x) (cdr liste)]
        [else (cons (car liste) (loeschen x (cdr liste)))]
   )
)

(define (loesche_a x liste)
  (do ((equal? (element liste x) #f))
      (display(loeschen x liste))
  )
)

