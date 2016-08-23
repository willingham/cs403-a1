(define (author)
    (println "AUTHOR: Thomas Willingham twillingham@crimson.ua.edu")
    )

(define (exprTest # $expr target)
    (define result (catch (eval $expr #)))
    (if (error? result)
        (println $expr " is EXCEPTION: " (result'value)
            " (it should be " target ")")
        (println $expr " is " result
            " (it should be " target ")")
        )
    )


(define (min5 a b c d e)
    (define (less x y) 
        (if (< x y)
            x
            y
        )
    )
    (less (less (less a b) c) (less d e))
    )





(define (run1)
    )

(define (run2)
    )

(define (run3)
    )

(define (run4)
    )

(define (run5)
    )

(define (run6)
    )

(define (run7)
    )

(define (run8)
    )

(define (run9)
    )

(define (run10)
    )

(println "assignment 1 loaded!")
