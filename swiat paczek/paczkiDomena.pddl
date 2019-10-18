(define	(domain world-of-blocks)
	(:requirements :adl)
	(:predicates
		(na-paczce ?x ?y)
		(na-podlodze ?x)
		(na-gorze ?x)
		(chwytak-pusty)
		(chwytak ?x)
	)
    ;------
	(:action podnies-z-podlogi
		:parameters (?x)
		:precondition
		(and
			(na-podlodze ?x)
			(chwytak-pusty)
			(na-gorze ?x)
		)
		:effect
		(and
			(not (na-podlodze ?x))
			(not(chwytak-pusty))
			(not (na-gorze ?x))
			(chwytak ?x)
		)
	)
    ;------
	(:action podnies-z-paczki
		:parameters (?x ?y)
		:precondition
		(and
		    (na-paczce ?x ?y)
		    (chwytak-pusty)
			;(not(exists (?a) (chwytak ?a)))
			(na-gorze ?x)
		)
		:effect
		(and
			(not (na-paczce ?x ?y))
			(not (na-gorze ?x))
			(not (chwytak-pusty) )
			(chwytak ?x)
			(na-gorze ?y)
		)
	)
    ;------
	(:action opusc-na-podloge
		:parameters (?x)
		:precondition
		(and
			;(not (chwytak-pusty))
			(chwytak ?x)
			
		)
		:effect
		(and
			(chwytak-pusty)
			(na-podlodze ?x)
			(na-gorze ?x)
			(not (chwytak ?x))
		)
	)
    ;------
	(:action opusc-na-paczke
		:parameters (?x ?y)
		:precondition
		(and
			;(not (chwytak-pusty))
			(na-gorze ?x)
			(chwytak ?y)
		)
		:effect
		(and
			(chwytak-pusty)
			(na-gorze ?y)
			(na-paczce ?y ?x)
			(not (na-gorze ?x))
			(not (chwytak ?y))
			
		)
	)
)