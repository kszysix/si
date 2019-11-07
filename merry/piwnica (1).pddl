(define
	(domain piwnica)
	(:requirements :adl)
	(:types kulka pokoj klocek pozycja)
	(:predicates
		(kulka-w ?x - pokoj ?y - kulka )
		(kulka-w-druga ?x - pokoj ?y - kulka)
		(drzwi ?x - pokoj ?y - pokoj ?z - kulka)
		(ziomek ?x - pokoj)
		(zagadka ?x - pokoj)
		(w-plecaku ?x - kulka)
		
		(klocek-na-poz ?k - klocek ?p - pozycja)
		(puste ?k - klocek)
	)

	(:action wez-kulke
		:parameters (?k - kulka ?p - pokoj)
		:precondition
		(and
			(kulka-w ?p ?k)
			(ziomek ?p)
		)
		:effect
		(and
			(not (kulka-w ?p ?k))
			(w-plecaku ?k)
		)
	)
	
	(:action idz-przez-drzwi
		:parameters (?pDo ?pZ - pokoj ?k - kulka)
		:precondition
		(and
			(w-plecaku ?k)
			(drzwi ?pZ ?pDo ?k)
			(ziomek ?pZ)
		)
		:effect
		(and
			(ziomek ?pDo)
			(not (ziomek ?pZ))
			(not (w-plecaku ?k))
		)
	)
		
)