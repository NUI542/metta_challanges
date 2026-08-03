(= (iD $x) $x)

(= (accumulate $combiner $basecase $f $a $b)
    (if (> $a $b)
        $basecase
        (accumulate $combiner ($combiner $basecase $a) $f (+ $a 1) $b)))

!(accumulate + 0 iD 1 4)