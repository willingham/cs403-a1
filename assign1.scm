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
    (define tol 0.0001)
    (define (avg x y) 
        (/ (+ x y) 2.0)
        )
   	(define (closeEnough x y)
        (< (abs (- x y)) tol)
        )
    (define (ad f) ; average damp
  		(lambda (x) (avg x (f x)))
		)
	
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
    (if (< i 3)
        (f i)
        (+ (zorp (- i 1) f) (/ (expt (- (zorp (- i 1) f) (zorp (- i 2) f)) 2)
                               (+ (- (zorp (- i 3) f) (* 2 (zorp (- i 2) f))) (zorp (- i 1) f))))
        )
    )

(define (double x)
    (+ x x)
    )

(define (halve x)
    (define (worker x c t)
        (cond
            ( (<= (- x c) 0)
                t
                )
            ( (> (double (double c)) x)
                (worker (- x (double c)) 1 (+ t c))
                )
            ( (< (double c) x)
                (worker x (double c) t)
                )
            )
        )
        (worker x 1 0)
    )

(define (egypt/ x y)
    (define (egypt a b c d e)
        (cond
            ( (and (= e 1) (< a 1))
                d
                )
            ( (and (= e 0) (< b c))
                (egypt (double a) (double b) c d e)
                )
            ( (and (= e 0) (>= b c))
                (egypt a b c d 1)
                )
            ( (and (= e 1) (<= b c))
                (egypt (halve a) (halve b) (- c b) (+ d a) e)
                )
            ( (and (= e 1) (> b c))
                (egypt (halve a) (halve b) c d e)
                )
            )
        )
        (egypt 1 y x 0 0)
    )

(define (mystery a b c d)
    )

(define (iramanujan depth curDepth)
    (if (> curDepth depth)
        0
        (sqrt (+ (+ 6 curDepth) (* (iramanujan depth (+ curDepth 1)) (+ 2 curDepth))))
        )
    )

(define (ramanujan x)
    (iramanujan x 0 )
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
    (println "    [it should be #FEF6FE]")
    (inspect (cym 25))
    (println "    [it should be #EB4AB0]")
    (inspect (cym 50))
    (println "    [it should be #B40025]")
    (inspect (cym 75))
    (println "    [it should be #614A09]")
    (inspect (cym 100))
    (println "    [it should be #00FF7F]")
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
    (inspect (egypt/ 1960 56))
    (println "    [it should be 35]")
    (inspect (egypt/ 15 3))
    (println "    [it should be 5]")
    (inspect (egypt/ 10 4))
    (println "    [it should be 2]")
 
    )

(define (run9)
    )

(define (run10)
    (inspect (ramanujan 1))
    )

(println "assignment 1 loaded!")
(set! __included_assign1.scm #f)
