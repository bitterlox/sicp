(load "/home/angel/sicp/exercises/2.7/selectors.scm")

(define (display-interval i) 
   (newline) 
   (display "[") 
   (display (lower-bound i)) 
   (display ",") 
   (display (upper-bound i)) 
   (display "]"))
