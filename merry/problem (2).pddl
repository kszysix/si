(define (problem p1)
	(:domain piwnica)
	(:objects zi zi1 zi2 zi3 cze cze1 pom pom1 roz nieb nieb1 nieb2 nieb3 nieb4 - kulka
		a b c d e f g h i - pokoj)
	(:init	
		(ziomek f)
		(zagadka a)
	
		(kulka-w a zi)
		(kulka-w b roz)
		(kulka-w c pom)
		(kulka-w c nieb)
		(kulka-w d zi1)
		(kulka-w d cze)
		(kulka-w e nieb1)
		(kulka-w e zi2)
		(kulka-w f nieb2)
		(kulka-w f nieb3)
		(kulka-w h zi3)
		(kulka-w h cze1)
		(kulka-w i pom1)
		(kulka-w i nieb4)
		;-------------------
		(drzwi a b pom)
		(drzwi a b pom1)
		
		(drzwi b d pom)
		(drzwi b d pom1)
		
		(drzwi d f zi)
		(drzwi d f zi1)
		(drzwi d f zi2)
		(drzwi d f zi3)
		
		(drzwi f d zi)
		(drzwi f d zi1)
		(drzwi f d zi2)
		(drzwi f d zi3)
		
		(drzwi f g roz)
		
		(drzwi f i nieb)
		(drzwi f i nieb1)
		(drzwi f i nieb2)
		(drzwi f i nieb3)
		(drzwi f i nieb4)
		
		(drzwi i f nieb)
		(drzwi i f nieb1)
		(drzwi i f nieb2)
		(drzwi i f nieb3)
		(drzwi i f nieb4)
		
		(drzwi f e nieb)
		(drzwi f e nieb1)
		(drzwi f e nieb2)
		(drzwi f e nieb3)
		(drzwi f e nieb4)
		
		(drzwi e f nieb)
		(drzwi e f nieb1)
		(drzwi e f nieb2)
		(drzwi e f nieb3)
		(drzwi e f nieb4)
		
		(drzwi i h nieb)
		(drzwi i h nieb1)
		(drzwi i h nieb2)
		(drzwi i h nieb3)
		(drzwi i h nieb4)
		
		(drzwi h i nieb)
		(drzwi h i nieb1)
		(drzwi h i nieb2)
		(drzwi h i nieb3)
		(drzwi h i nieb4)
		
		(drzwi h e cze)
		(drzwi h e cze1)
		
		(drzwi e h cze)
		(drzwi e h cze1)
		
		(drzwi c e zi)
		(drzwi c e zi1)
		(drzwi c e zi2)
		(drzwi c e zi3)
		
		(drzwi e c zi)
		(drzwi e c zi1)
		(drzwi e c zi2)
		(drzwi e c zi3)
		
		(drzwi c a cze)
		(drzwi c a cze1)
		
		(drzwi a c cze)
		(drzwi a c cze1)
		
	)
	(:goal 
		(and
			(ziomek g)
		)
	)
)