; Range guard

(= (is-adult $list $acc)
    (if (== (size-atom $list) 0)
        $acc
        (let*
            (
                (($head $tail) (decons-atom $list))
                ($new-acc (if (>  $head 18)
                               (cons-atom $head $acc)
                               $acc
                           )
                )
            )
            (is-adult $tail $new-acc)
        )
    )
)

(= (is-teen $list $acc)
    (if (== (size-atom $list) 0)
        $acc
        (let*
            (
                (($head $tail) (decons-atom $list))
                ($new-acc (if (and (>  $head 12) (< $head 20))
                               (cons-atom $head $acc)
                               $acc
                           )
                )
            )
            (is-teen $tail $new-acc)
        )
    )
)

!(is-teen (12 25 17 40) ())
; !(is-adult (12 25 17 40) ())