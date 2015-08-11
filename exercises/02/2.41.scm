(load "2.40.scm")
(define (s-triple n s)
  (filter
    (lambda (triple)
      (let ((a1 (car triple))
            (a2 (cadr triple))
            (a3 (caddr triple)))
      (and (< a3 n)
           (< a2 a3))))
    (map (lambda (p) 
           (append p (list (- s (car p) (cadr p)))))
      (unique-pairs n))))

(s-triple 10 10)
;Value: ((1 2 7) (1 3 6) (2 3 5) (1 4 5))