(= (find-even $list)
    (if (== (size-atom $list) 0)
        ()
        (let* 
            (
                (($head $tail) (decons-atom $list))
                ($rest (find-even $tail))
            )
            (if (==(% $head 2) 0)
                (cons-atom $head $rest)
                $rest
            )
        )
    )
)

!(find-even (3 8 5 10 7 12))