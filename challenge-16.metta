(Friend Alice Bob)
(Friend Alice Carol)
(Friend Alice Emma)
(Friend David Emma)
(Friend Frank Grace)
(Friend Helen Ian)

(Family Alice David)
(Family Alice Liam)
(Family Bob Emma)
(Family Carol Karen)
(Family David Noah)

(Profession Bob Nurse)
(Profession Emma Nurse)
(Profession Grace Doctor)
(Profession Liam Doctor)
(Profession Noah Nurse)

(= (family-nurses $person $depth) 
    (if (== $depth 1)
        (match &self (, (Family $person $next) (Profession $next Nurse)) $next)
        (match &self (Family $person $next) (family-nurses $next (- $depth 1)))
    )
)

!(family-nurses Alice 1) ; Should return ()
!(family-nurses Alice 2) ; Should return Noah