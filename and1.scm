(define (my-and a b)
    (if (true? a)
        b
        #f )
    )


(define x 10)
(define a (readInt))
(inspect (and (< a x) (= (% a 2) 1)))
(inspect (my-and (< a 10) (= (% a 2) 1)))

(inspect (and (< 20 10) (/ 10 0)))

(println "  ")

(inspect (my-and (< 20 10) (/ 10 0)))
