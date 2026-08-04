(= (reverse-list $list)
    (reverse-list-helper $list ())
)

(= (reverse-list-helper $list $acc)
    (if (== (size-atom $list) 0)
        $acc
        (let*
            (
                (($head $tail) (decons-atom $list))
                ($new-acc (cons-atom $head $acc))
            )
            (reverse-list-helper $tail $new-acc)
        )
    )

)

!(reverse-list (A B C D))