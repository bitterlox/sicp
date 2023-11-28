(define (good-enough prevGuess guess) (<
                                          (abs (- guess prevGuess))
                                          (* guess 0.0001))) ; 0.01% of guess
