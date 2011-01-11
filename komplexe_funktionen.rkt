(define (guthaben zins kapital dauer)
  (* kapital (expt (+ 1 (/ zins 100)) dauer)))

(define (guthaben_a kapital dauer)
  (case dauer
    ((0 1) (guthaben 1.25 kapital dauer))
    ((2)  (guthaben 2 kapital dauer))
    ((3 4 5) (guthaben 2.5 kapital dauer))
    ((6 7 8 9 10) (guthaben 3 kapital dauer))
    ((otherwise) (guthaben 2.5 kapital dauer))
  )  
 )
 
(define (guthaben_b kapital dauer)
  (cond [(< dauer 2) (guthaben 1.25 kapital dauer)]
        [(= dauer 2) (guthaben 2 kapital dauer)]
        [(< dauer 6) (guthaben 2.5 kapital dauer)]
        [(< dauer 11) (guthaben 3 kapital dauer)]
        [(> dauer 10) (guthaben 4 kapital dauer)]
  )
)

(define (division zaehler nenner)
  (cond [(> nenner 0) (/ zaehler nenner)]
        [else (display "Keine Division durch 0 erlaubt!")]
  )
)
(define (fak x)
  (cond [(= x 0) 1]
        [(= x 1) 1]
        [else (* x (fak (- x 1)))]
  )
)

(define (betrag x)
  (cond [(>= x 0) x]
        [(< x 0) (* x -1)]
  )
)