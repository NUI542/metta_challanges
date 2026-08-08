(= (fold $combiner $acc $list)
    (if (== (size-atom $list) 0)
        $acc
    (let ($head $tail) (decons-atom $list)
        (fold $combiner ($combiner $acc $head) $tail)
    )
    )
)

(= (max $a $b) (if (> $a $b) $a $b))

!(fold + 0 (10.5 5.0 25.99))