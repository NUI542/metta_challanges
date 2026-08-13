(= (map $list)
    (let $depth (cdr-atom $list)
    (if (== (car-atom $depth) 1)
        True
        False
    )
    )
)

(= (filter $map $list)
    (if (== $list ())
    ()
    (let* (
            (($head $tail) (decons-atom $list))
            ($rest (filter $map $tail))
          )
          (if ($map $head)
                (cons-atom $head $rest)
                $rest
          )

    )
    )

)

(= (direct-match-names $list-of-pairs)
    (filter map $list-of-pairs)
)

!(direct-match-names ((Bob 1) (Emma 2) (Helen 1)) )
!(direct-match-names ((Karen 2) (Noah 2) (Liam 1)) )