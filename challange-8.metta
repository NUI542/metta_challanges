(= (is-teen $x) 
        (if (and (> $x 12) (< $x 20))
            True
            False
        )
)

(= (is-adult $x) 
        (if (> $x 18)
            True
            False
        )

)

(= (filter $cond $acc $list)
    (if (== (size-atom $list) 0)
        $acc
    (let ($head $tail) (decons-atom $list)
        (if ($cond $head)
            (filter $cond (cons-atom $head $acc) $tail)
            (filter $cond $acc $tail)
        )
    )
    )
)

!(filter is-adult () (12 25 17 40))
