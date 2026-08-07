(Friend Alice Bob)
(Friend Alice Carol)
(Friend Alice Emma)
(Friend David Emma)
(Friend Frank Grace)
(Friend Helen Ian)

(Colleague Bob Carol)
(Colleague Alice Helen)
(Colleague Carol David)
(Colleague Emma Frank)
(Colleague Grace Helen)
(Colleague Ian Jack)

(Family Alice David)
(Family Alice Liam)
(Family Bob Emma)
(Family Carol Karen)
(Family Grace Helen)
(Family Jack Karen)
(Family David Noah)

(Neighbor David Grace)
(Neighbor Emma Ian)
(Neighbor Frank Jack)
(Neighbor Helen Liam) 
(Neighbor Karen Mike)
(Neighbor Tedi Yeab)

(Classmate Alice dog)
(Classmate Helen tedi)
(Classmate Bob Ian)
(Classmate Carol Jack)
(Classmate David Liam)
(Classmate Emma Mike)

(Profession Alice Engineer)
(Profession Bob Nurse)
(Profession Helen Nurse)
(Profession David Artist)
(Profession Emma Nurse)    
(Profession Frank Engineer)
(Profession Grace Doctor)
(Profession Helen Lawyer)
(Profession Ian Scientist)
(Profession Jack Pilot)
(Profession Karen Nurse)   
(Profession Liam Doctor)
(Profession Mike Teacher)    
(Profession Olivia Scientist)
(Profession yeab Nurse)    


(Hobby Alice Painting)
(Hobby Bob Hiking)
(Hobby Carol Chess)
(Hobby David Gardening)
(Hobby Emma Cooking)
(Hobby Frank Cycling)
(Hobby Grace Swimming)
(Hobby Helen Reading)
(Hobby Ian Photography)
(Hobby Jack Running)
(Hobby Karen Dancing)
(Hobby Liam Gaming)
(Hobby Mike Singing)
(Hobby Noah Coding)
(Hobby Olivia Traveling)

; Mission 1
;; 1
!(match &self (Friend Alice $x) $x)

;; 2
!(match &self (Profession $x Nurse) $x)

;; 3
!(match &self (, (Friend Alice $x) (Profession $x Nurse)) $x)

; Mission 2
;; 4
!(add-atom &self (Friend Alice Noah))

;; 5
!(add-atom &self (Profession Noah Nurse))

;; 6
!(match &self (, (Friend Alice $x) (Profession $x Nurse)) $x)

;; 7
!(remove-atom &self (Friend Alice Noah))
!(remove-atom &self (Profession Noah Nurse))

;; 8
!(match &self (, (Friend Alice $x) (Profession $x Nurse)) $x)