(= (odd-num $acc $list)
    (if (== (size-atom $list) 0)
        $acc
    (let ($head $tail) (decons-atom $list)
        (if (== (% $head 2) 1)
            (odd-num (cons-atom $head $acc) $tail)
            (odd-num $acc $tail)
        )
    )
    )
)

(= (triple $list)
    (collapse (* (superpose $list) 3))
)

(= (total $list)
    (if (== (size-atom $list) 0)
        0
        (let ($h $t) (decons-atom $list)
            (+ $h (total $t))
        )
    )
)

(=(grand-pipeline $list)
    (let*
        (($odds (odd-num () $list))
         ($tripled (triple $odds))
         ($total (total $tripled)))
    $total
    )
)

!(grand-pipeline (2 3 4 5 6 7 8 9 10))