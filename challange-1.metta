(= (isEven $x) (== (% $x 2) 0))

(= (iD $x) $x)

(= (sumIf $f $condition $a $b)
        (if (> $a $b)
            0
            (if ($condition $a)
                (+ ($f $a) (sumIf $f $condition (+ $a 1) $b))
                (sumIf $f $condition (+ $a 1) $b))))


!(sumIf iD isEven 1 5)
            