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
    (define (l x y) 
        (if (< x y)
            x
            y
        )
    )
    (l (l (l a b) c) (l d e))
    )

(define (cym x)
    (define pi 3.14159265358979323846)
    (define (cyan) 
        (int (* (sin (+ (/ (* pi x) 200) (/ pi 2))) 255))
    )
    (define (yellow)
        (int (* (+ (sin (+ (/ (* pi x) 100) pi)) 1) 255.001))
    )
    (define (magenta)
        (int (* (/ (+ (sin (+ (/ (* 3 pi x) 200) (/ pi 2))) 1) 2) 255))
    )
    (string+ (fmt "%02X" (cyan)) (fmt "%02X" (yellow)) (fmt "%02X" (magenta)))
    )

(define (root5 x)
    )

(define (bico x y)
    )

(define (curry f a)
    (lambda (b) 
        (lambda (c) 
            (lambda (d)
                (f a b c d)
                )
            )
        )
    )

(define (zorp i f)
    )

(define (double x) 
    (+ x x)
    )

(define (halve x c t)
    (cond 
        ( (<= (- x c) 0)
            t
            )
        ( (> (double (double c)) x)
            (halve (- x (double c)) 1 (+ t c))
            )
        ( (< (double c) x)
            (halve x (double c) t)
            )
        )
    )

(define (egypt/ x y)
    )

(define (mystery a b c d)
    )

(define (ramanujan x)
    )




(define (run1)
    )

(define (run2)
    (inspect (min5 1 2 3 4 5))
    (inspect (min5 2 1 3 4 5))
    (inspect (min5 2 3 1 4 5))
    (inspect (min5 2 3 4 1 5))
    (inspect (min5 2 3 4 5 1))
    )

(define (run3)
    (inspect (cym 1))
    (println "[it should be ]")
    (inspect (cym 25))
    (inspect (cym 50))
    (inspect (cym 75))
    (inspect (cym 100))
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
(set! __included_assign1.scm #f)
