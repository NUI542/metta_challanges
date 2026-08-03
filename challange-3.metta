(= (count-digits $number $count)
    (if (== $number 0) $count
        (count-digits (/ $number 10) (+ $count 1))))

!(count-digits 90721 0)