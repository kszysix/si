(define (problem p1)
	(:domain world-of-blocks)
	(:objects a b c d e)
	(:init
		(na-podlodze a)
		(na-podlodze d)
		(na-paczce b a)
		(na-paczce c b)
		(na-paczce e d)
		(na-gorze c)
		(na-gorze e)
		(chwytak-pusty)
	)
	(:goal
		(and
			(na-podlodze a)
			(na-podlodze b)
			(na-podlodze c)
			(na-podlodze d)
			(na-podlodze e)
			
		)
	)
)