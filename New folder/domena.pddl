(define	(domain merrys)
	(:requirements :adl)
	(:predicates
        (kula-w-kolor ?a ?b ?c)
        (drzwi-z-do-kolor ?a ?b ?c)
        (kula-kieszen-kolor ?a ?b ?c)
        ;(poziomo ?a ?b)
        ;(pionowi ?a ?b)
        ;(kula-ma-kolor ?a ?b)
        (merry ?a) ;tutaj jest w danym momencie
        (lamigowka) ;rozwiazana albo nie
	)
    ;------
	(:action wez-kule
		:parameters (?a ?b ?c);skad,nazwa kuli,kolor
		:precondition
		(and
            (merry ?a)
            (kula-w-kolor ?b ?a ?c)

		)
		:effect
		(and
            (not (kula-w-kolor ?b ?a ?c))
            (kula-kieszen-kolor ?b ?c)
		)
	)
    ;------
	(:action idz
		:parameters (?a ?b);skad,dokad
		:precondition
		(and
        (drzwi-z-do-kolor( ?a ?b (exists( ?x)( kula-kieszen-kolor ?y ?x))))
        (merry ?a)
		)
		:effect
		(and
        (not (merry ?a))
        (merry ?b)
		)
	)
    ;------
    	(:action przesun
		:parameters (?a ?b ?c ?d ?e)
		:precondition
		(and
            ;(not (pusty ?a))
            ;;(not (pusty ?b))
            (na-gorze ?c)
            (na-gorze ?e)

            (na-paliku ?c ?a)
            (na-paliku ?e ?b)

            (na-krazku ?c ?d)

            (wiekszy-od ?e ?c)
            ;(not (= ?a ?b))
            ;(not (= ?c ?d))
            ;(not (= ?c ?e))
            ;(not (= ?d ?e))
		)
		:effect
		(and
            ;(na-gorze ?c ?b)
            (na-paliku ?c ?b)
            ;(not(na-gorze ?c ?a))
            (not(na-paliku ?c ?a))
            (na-gorze ?d)
            (not (na-krazku ?c ?d))
            (na-krazku ?c ?e)
            (not (na-gorze ?e))
		)
	)
	;------
    	(:action przesun-dolny
		:parameters (?a ?b ?c ?d)
		:precondition
		(and
            ;(not (pusty ?a))
            ;;(not (pusty ?b))
            (na-dole ?c)
            (na-gorze ?c)
            (na-gorze ?d)
            (na-paliku ?c ?a)
            (na-paliku ?d ?b)
            (wiekszy-od ?d ?c)
            ;(not (= ?a ?b))
            ;(not (= ?c ?d))
		)
		:effect
		(and
            (pusty ?a)
            (not (na-dole ?c))
            ;(not (na-gorze ?c ?a))
            (not (na-gorze ?d))
            (not (na-paliku ?c ?a))
            (na-paliku ?c ?b)
            (na-krazku ?c ?d)
            ;(na-gorze ?c ?b)
		)
	)
)
