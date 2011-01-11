(require (lib "math.ss"))
(define (quadrat x) (* x x))
(display (quadrat 5))
(newline)

(define (kreis r) (* (quadrat r) pi))
(display (kreis 5))
(newline)

(define (oberflaeche_wuerfel x)(* (quadrat x) 6))
(define (volumen_wuerfel x) (* (quadrat x) x))
                  
(display(oberflaeche_wuerfel 5))
(newline)
(display(volumen_wuerfel 5))
(newline)

(define (volumen_zylinder r h) (* (kreis r) h))
(display(volumen_zylinder 5 1))
(newline)

(define (oberflaeche_zylinder r h) (* 2 pi r(+ r h)))
(display(oberflaeche_zylinder 2 2))
(newline)

(define (volumen_kugel r) (* 4/3 pi (* (quadrat r) r)))
(display(volumen_kugel 2))
(newline)

(define (oberflaeche_kugel r) (* 4 pi (quadrat r)))
(display(oberflaeche_kugel 2))
(newline)