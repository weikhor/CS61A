(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

; Some utility functions that you may find useful to implement.

(define (cons-all first rests)
	(if (null? rests) rests

    (cons (cons first (car rests))  (cons-all first (cdr rests))))
    )

(define (zip pairs)
	(list (map car pairs) (map cadr pairs))
  )

;; Problem 17
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 17
  (define a 0)
  (define (enumerate_helper a s)
  	
  	(if (null? s) s
  	(cons (list a (car s))  (enumerate_helper (+ a 1) (cdr s)))
  	)
  )
  (enumerate_helper a s)
)
  ; END PROBLEM 17

;; Problem 18
;; got see github ans get idea
;; List all ways to make change for TOTAL with DENOMS
(define (list-change total denoms)
  ; BEGIN PROBLEM 18 
  (cond
  	 ((null? denoms) nil)
   ((= 0 total) (cons nil nil))
   ((< total (car denoms)) (list-change total (cdr denoms)))
   (else
   	(define with_car  (list-change (- total (car denoms))  denoms))
   	(define without_car  (list-change total (cdr denoms)))
    (append (cons-all (car denoms) with_car) without_car)
 )
   )
  )



  ; END PROBLEM 18

;; Problem 19
;; Returns a function that checks if an expression is the special form FORM
;; dunno why have to use map?
(define (check-special form)
  (lambda (expr) (equal? form (car expr))))

(define lambda? (check-special 'lambda))
(define define? (check-special 'define))
(define quoted? (check-special 'quote))
(define let?    (check-special 'let))

;; Converts all let special forms in EXPR into equivalent forms using lambda
(define (let-to-lambda expr)
  (cond ((atom? expr)
         ; BEGIN PROBLEM 19
         expr
         ; END PROBLEM 19
         )
        ((quoted? expr)
         ; BEGIN PROBLEM 19
         expr
         ; END PROBLEM 19
         )
        ((or (lambda? expr)
             (define? expr))
         (let ((form   (car expr))
               (params (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 19
           ;(cons 'lambda (cons params (let-to-lambda body)) 
           (Append (cons form (cons params nil)) (map let-to-lambda body))
           ))
        ((let? expr)
         (let ((values (cadr expr))
               (body   (cddr expr)))
           ; BEGIN PROBLEM 19
           ;(cons 'lambda (car (zip values)) (body) (cadr (zip values)))
           (cons (cons 'lambda (cons (car (zip values)) (map let-to-lambda body))) (map let-to-lambda (cadr (zip values))))
           ;:(Append (cons (cons 'lambda (cons (car (zip values)))) nil) (cadr (zip values)))
           ; END PROBLEM 19
           ))
        (else
         ; BEGIN PROBLEM 19
     
          (cons (car expr) (map let-to-lambda (cdr expr)))
         ; END PROBLEM 19
         )))
