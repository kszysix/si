(define (problem gsoko1a)
    (:domain hanoi)
    (:objects a b c d e x y z)
    (:init
        (na-krazku a b)
        (na-krazku b c)
        (na-krazku c d)
        (na-krazku d e)
        (na-paliku a x)
        (na-paliku b x)
        (na-paliku c x)
        (na-paliku d x)
        (na-paliku e x)
        (wiekszy-od b a)
        (wiekszy-od c a)
        (wiekszy-od c b)
        (wiekszy-od d a)
        (wiekszy-od d b)
        (wiekszy-od d c)
        (wiekszy-od e a)
        (wiekszy-od e b)
        (wiekszy-od e c)
        (wiekszy-od e d)
        (na-gorze a x)
        (na-dole e x)
        (pusty y)
        (pusty z)
    )
    (:goal (and
        (na-paliku a z)
        (na-paliku b z)
        (na-paliku c z)
        (na-paliku d z)
        (na-paliku e z)
        )
    )
)
