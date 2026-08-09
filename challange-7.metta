(= (converter $x)
    (+ (* 1.8 $x) 32)
)

(= (convert $list)
    (collapse (converter (superpose $list)))
)

!(
    (convert (0 20 37 100))
)