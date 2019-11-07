(define (problem gsoko1a)
    (:domain merrys)
    (:objects f_1_1, f_1_2, f_2_1, f_2_2, f_3_1, f_3_2, f_3_3, f_4_1, f_4_2,
      p_1_1, p_1_2, p_1_3, p_2_1, p_2_2, p_2_3, p_3_1, p_3_2, p_3_3 ,
      kula1, kula2, kula3, kula4, kula5, kula6, kula7, kula8, kula9, kula10, kula11, kula12, kula13, kula14,
      zielony, czerwony, pomaranczowy, rozowy, niebieski )
    (:init
      (drzwi-z-do-kolor f_1_1 f_1_2 pomaranczowy)
      (drzwi-z-do-kolor f_1_1 f_2_1 czerwony)
      (drzwi-z-do-kolor f_1_2 f_2_2 pomaranczowy)
      (drzwi-z-do-kolor f_2_1 f_1_1 czerwony)
      (drzwi-z-do-kolor f_2_1 f_3_1 zielony)
      (drzwi-z-do-kolor f_2_2 f_3_2 zielony)
      (drzwi-z-do-kolor f_3_1 f_2_1 zielony)
      (drzwi-z-do-kolor f_3_1 f_3_2 niebieski)
      (drzwi-z-do-kolor f_3_1 f_4_1 czerwony)
      (drzwi-z-do-kolor f_3_2 f_2_2 zielony)
      (drzwi-z-do-kolor f_3_2 f_3_1 niebieski)
      (drzwi-z-do-kolor f_3_2 f_4_2 niebieski)
      (drzwi-z-do-kolor f_3_2 f_3_3 rozowy)
      (drzwi-z-do-kolor f_4_1 f_3_1 czerwony)
      (drzwi-z-do-kolor f_4_1 f_4_2 niebieski)
      (drzwi-z-do-kolor f_4_2 f_3_2 niebieski)
      (drzwi-z-do-kolor f_4_2 f_4_1 niebieski)

      (kula-w kula1 f_1_1 zielony)
      (kula-w kula2 f_1_2 rozowy)
      (kula-w kula3 f_2_1 pomaranczowy)
      (kula-w kula4 f_2_1 niebieski)
      (kula-w kula5 f_2_2 zielony)
      (kula-w kula6 f_2_2 czerwony)
      (kula-w kula7 f_3_1 niebieski)
      (kula-w kula8 f_3_1 zielony)
      (kula-w kula9 f_3_2 niebieski)
      (kula-w kula10 f_3_2 niebieski)
      (kula-w kula11 f_4_1 zielony)
      (kula-w kula12 f_4_1 czerwony)
      (kula-w kula13 f_4_2 pomaranczowy)
      (kula-w kula14 f_4_2 niebieski)

      (merry f_3_2)
      (not (lamigowka))

    )
    (:goal (and
            (lamigowka)
            (merry f_3_3)
        )
    )
)
