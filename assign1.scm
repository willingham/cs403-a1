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

            Take the following function, isTrue, for example:

            (define (isTrue) (
                (println 'Yes, it's true!')
                #t
                )
            
            The following statement using the 'and' function will
            evaluate to false, and won't execute the above code.

            > (inspect (and #f (isTrue)))

            The following statement using the 'my-and'
            function will evaluate to #f as well, but by contrast,
            the above 'isTrue' code will be executed.

            > (inspect (my-and #f (isTrue)))

            Thus the two functions can behave differently under
            certain conditions."
            

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
