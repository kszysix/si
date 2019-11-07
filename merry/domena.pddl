(define	(domain merrys) (:requirements :adl)
	(:predicates
		  (kula-w ?a ?b)
		  (drzwi-z-do-kolor ?a ?b ?c)
		  (kula-kieszen ?a)
		  (merry ?a) ;tutaj jest w danym momencie
		  (lamigowka) ;rozwiazana albo nie
	)
    ;------
	(:action wez-kule
		:parameters (?a ?b);skad,nazwa kuli
		:precondition
		(and
        (merry ?a)
        (kula-w ?b ?a)
		)
		:effect
		(and
        (not (kula-w ?b ?a))
        (kula-kieszen ?b)
		)
	)
    ;------
	(:action idz
		:parameters (?a ?b ?c);skad,dokad,kula
		:precondition
		(and
				(merry ?a)
				(kula-kieszen ?c)
				(drzwi-z-do-kolor ?a ?b ?c)
				;(drzwi-z-do-kolor ?a ?b(exists ( ?x)(kula-kieszen-kolor ?y ?x)))
		)
		:effect
		(and
        (not (merry ?a))
        (merry ?b)
				(not (kula-kieszen ?c))
		)
	)
)
