(Male Chandler)
(Female Monica)
(Male John)
(Female Pam)
(Parents (Monica Chandler) John)
(Parents (Monica Chandler) Pam)
(Parent John Bob)

; 1
;!(match &self (Parents $x John) $x) 

; 2
(= (mother $x)
    (let* (
        ($parents (match &self (Parents $z $x) $z))
        ($split (superpose $parents))
        
        )
        (match &self (Female $split) $split)
    )
)
;!(mother Pam)

; 3
(= (sibling $x)
    (let*( 
        ($sib (collapse (match &self (, (Parents $z $x) (Parents $z $y)) $y)))
        ($result (subtraction-atom $sib (collapse $x)))
        )
        $result
    )
)
;!(sibling Pam)

; 4
(= (parent-of $c $p) (match &self (Parent $p $c) $p))
(= (parent-of $c $p) (match &self (Parents ($x $y) $c) (superpose ($x $y))))


(= (predecessor $anc $c) (parent-of $c $anc))
(= (predecessor $anc $c) (let $mid (parent-of $c $mid) (predecessor $anc $mid)))
(= (predecessors $c) (collapse (predecessor $anc $c)))

!(predecessors Bob)