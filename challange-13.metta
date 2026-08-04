(= (reverse-Until $list $n)
   (reverse-Until-helper $list 0 $n ()))

(= (reverse-Until-helper $list $i $n $acc)
   (if (> $i $n)
       (let $rem (subtraction-atom $list $acc)
            (union-atom $acc $rem))
       (let $current (index-atom $list $i)
            (reverse-Until-helper $list (+ $i 1) $n (cons-atom $current $acc)))))

!(reverse-Until (A B C D E) 2)
