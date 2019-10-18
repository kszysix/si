(define	(domain hanoi)
	(:requirements :adl)
	(:predicates
        (na-krazku ?a ?b)
        (wiekszy-od ?a ?b)
        (na-paliku ?a ?b)
        (na-gorze ?a ?b)
        (na-dole ?a ?b)
        (pusty ?a)
	)
    ;------
	(:action przesun-na-pusty
		:parameters (?a ?b ?c ?d)
		:precondition
		(and
            (not (pusty ?a))
            (pusty ?b)
            (na-gorze ?c ?a)
            (not(na-dole ?c ?a))
            (na-paliku ?c ?a)
            (na-paliku ?d ?a)
            (na-krazku ?c ?d)
            (not (= ?a ?b))
            (not (= ?c ?d))
		)
		:effect
		(and
            (not(pusty ?b))
            (na-gorze ?c ?b)
            (na-dole ?c ?b)
            (na-paliku ?c ?b)
            (not(na-gorze ?c ?a))
            (not(na-paliku ?c ?a))
            (na-gorze ?d ?a)
            (not (na-krazku ?c ?d))
            
		)
	)
    ;------
	(:action przesun-dolny-na-pusty
		:parameters (?a ?b ?c)
		:precondition
		(and
            (not (pusty ?a))
            (pusty ?b)
            (na-gorze ?c ?a)
            (na-dole ?c ?a)
            (na-paliku ?c ?a)
            (not (= ?a ?b))
		)
		:effect
		(and
            (not(pusty ?b))
            (na-gorze ?c ?b)
            (na-dole ?c ?b)
            (na-paliku ?c ?b)
            (pusty ?a)
            (not(na-gorze ?c ?a))
            (not(na-dole ?c ?a))
            (not(na-paliku ?c ?a))
		)
	)
    ;------
    	(:action przesun
		:parameters (?a ?b ?c ?d ?e)
		:precondition
		(and
            (not (pusty ?a))
            (not (pusty ?b))
            (na-gorze ?c ?a)
            (na-gorze ?e ?b)
            
            (na-paliku ?c ?a)
            (na-paliku ?e ?b)
            
            (na-krazku ?c ?d)
            
            (wiekszy-od ?e ?c)
            (not (= ?a ?b))
            (not (= ?c ?d))
            (not (= ?c ?e))
            (not (= ?d ?e))
		)
		:effect
		(and
            (na-gorze ?c ?b)
            (na-paliku ?c ?b)
            (not(na-gorze ?c ?a))
            (not(na-paliku ?c ?a))
            (na-gorze ?d ?a)
            (not (na-krazku ?c ?d))
            (na-krazku ?c ?e)
            (not (na-gorze ?e ?b))
		)
	)
	;------
    	(:action przesun-dolny
		:parameters (?a ?b ?c ?d)
		:precondition
		(and
            (not (pusty ?a))
            (not (pusty ?b))
            (na-dole ?c ?a)
            (na-gorze ?c ?a)
            (na-gorze ?d ?b)
            (na-paliku ?c ?a)
            (na-paliku ?d ?b)
            (wiekszy-od ?d ?c)
            (not (= ?a ?b))
            (not (= ?c ?d))
		)
		:effect
		(and
            (pusty ?a)
            (not (na-dole ?c ?a))
            (not (na-gorze ?c ?a))
            (not (na-gorze ?d ?b))
            (not (na-paliku ?c ?a))
            (na-paliku ?c ?b)
            (na-gorze ?c ?b)
		)
	)
)