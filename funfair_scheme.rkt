;Bailey Blaze
;bab0091
;COMP 3220
;Project 2: Scheme
;I used the slides that the TA provided to complete this assignment, also the TA assited me with the let lines in the
;judgement function as well as the first cond line in the judgement function

#lang racket
(require (planet dyoo/simply-scheme:1:2/simply-scheme))

;Returns the value of the given ball.
(define (ball-val ball)
  (let ((R 10) (G 15) (B 20) (W 1))
               (cond ((equal? 'R ball) '10)
                     ((equal? 'G ball) '15)
                     ((equal? 'B ball) '20)
                     ((equal? 'W ball) '1))))

;Count the number of balls of given color
(define (count-balls color bucket)
	(count (keep (lambda (c) (equal? color c)) bucket)))

;Display which color have how many balls
(define (color-counts bucket)
  (let ((R (count-balls 'R bucket))
        (G (count-balls 'G bucket))
        (B (count-balls 'B bucket))
        (W (count-balls 'W bucket)))
        (display (list R G B W))))
    
;Count points of bucket
(define (bucket-val bucket)
  (let ((R (count-balls 'R bucket))
        (G (count-balls 'G bucket))
        (B (count-balls 'B bucket))
        (W (count-balls 'W bucket)))
        (display (+ (* R 10) (* G 15) (* B 20) (* W 1)))))

;Judge function
(define (judge bucket_1 bucket_2)
   (let ((bucket1 (bucket-val bucket_1)))
   (let ((bucket2 (bucket-val bucket_2)))
  

         (cond
           ((> bucket2 bucket1) (display "Bucket 2, Won .. !") (newline))
           ((> bucket1 bucket2) (display "Bucket 1, Won .. !") (newline))
           ((= bucket2 bucket1) (display "It's a Tie .. !") (newline))
         

         
   ))))