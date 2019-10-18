(define	(domain sokoban)
	(:requirements :adl)
	(:predicates
		(pionowo ?x ?y)
		(poziomo ?x ?y)
		(paczka ?x)
		(robot ?x)
		(cel ?x)
		;(na-miejscu ?x)
	)
    ;------
	(:action idz
		:parameters (?x ?y)
		:precondition
		(and
            (not (paczka ?y))
            (not (robot ?y))
            (robot ?x)
            (or
                (poziomo ?x ?y)
                (pionowo ?x ?y)
            )
		)
		:effect
		(and
            (not (robot ?x))
            (robot ?y)
            
		)
	)
    ;------
	(:action pchaj
		:parameters (?x ?y ?z)
		:precondition
		(and
		    ;(not (paczka ?d))
		    ;(not (robot ?d))
		    (not (paczka ?z))
		    (not (robot ?z))
            (paczka ?y)
            (robot ?x)
            (or
                (and
                (poziomo ?x ?y)
                (poziomo ?y ?z)
                ;(poziomo ?z ?d)
                )
                (and
                (pionowo ?x ?y)
                (pionowo ?y ?z)
                ;(pionowo ?z ?d)
                )
            )

            ;(not (cel ?x))
            
		)
		:effect
		(and
            (not (paczka ?y))
            (not (robot ?x))
            (robot ?y)
            (paczka ?z)
            
		)
	)
    ;------
)