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

(define (and1) 
    (println "
            According to the book, the 'and' function doesn't evaluate
            the second argument it is given if the first argument 
            evaluates to false.  By contrast, the 'my-and' function
            evaluates both arguments given to it, regardless of the 
            first's truthfulness.
            
            If there are side effects of the second argument the 'and'
            function will not trigger those side effects whereas the 
            'my-and' function will.  

            The following statement using the 'and' function will
            evaluate to false, and won't evaluate the second
            expression..

            > (inspect (and #f (isTrue)))

            The following statement using the 'my-and'
            function will, by contrast, evaluate the second 
            expression.

            > (inspect (my-and #f (isTrue)))

            Thus the two functions can behave differently under
            certain conditions.
            

            ")
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

(define (cym x)
    (define pi 3.14159265358979323846)
    (define (cyan) 
        (int (* (sin (+ (/ (* pi x) 200) (/ pi 2))) 255))
    )
    (define (yellow)
        (int (* (+ (sin (+ (/ (* pi x) 100) pi)) 1) 255))
    )
    (define (magenta)
        (int (* (/ (+ (sin (+ (* (/ x 100) (* (/ 3 2)  pi)) (/ pi 2))) 1) 2) 255))
    )
    (println (fmt "%02X" (cyan)))
    (println (fmt "%02X" (yellow)))
    (println (fmt "%02X" (magenta)))
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
