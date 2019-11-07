(define (problem p1)
    (:domain merrys)
    (:objects f_1_1 f_1_2 f_2_1 f_2_2 f_3_1 f_3_2 f_3_3 f_4_1 f_4_2
      zkula1 rkula2 pkula3 nkula4 zkula5 ckula6
      nkula7 zkula8 nkula9
       nkula10 zkula11 ckula12 pkula13 nkula14)
    (:init
      (merry f_3_2)
      ;(not (lamigowka))

      (drzwi-z-do-kolor f_1_1 f_1_2 pkula3)
      (drzwi-z-do-kolor f_1_1 f_1_2 pkula13)

      (drzwi-z-do-kolor f_1_1 f_2_1 ckula6)
      (drzwi-z-do-kolor f_1_1 f_2_1 ckula12)

      (drzwi-z-do-kolor f_1_2 f_2_2 pkula3)
      (drzwi-z-do-kolor f_1_2 f_2_2 pkula13)

      (drzwi-z-do-kolor f_2_1 f_1_1 ckula6)
      (drzwi-z-do-kolor f_2_1 f_1_1 ckula12)

      (drzwi-z-do-kolor f_2_1 f_3_1 zkula1)
      (drzwi-z-do-kolor f_2_1 f_3_1 zkula5)
      (drzwi-z-do-kolor f_2_1 f_3_1 zkula8)
      (drzwi-z-do-kolor f_2_1 f_3_1 zkula11)

      (drzwi-z-do-kolor f_2_2 f_3_2 zkula1)
      (drzwi-z-do-kolor f_2_2 f_3_2 zkula5)
      (drzwi-z-do-kolor f_2_2 f_3_2 zkula8)
      (drzwi-z-do-kolor f_2_2 f_3_2 zkula11)

      (drzwi-z-do-kolor f_3_1 f_2_1 zkula1)
      (drzwi-z-do-kolor f_3_1 f_2_1 zkula5)
      (drzwi-z-do-kolor f_3_1 f_2_1 zkula8)
      (drzwi-z-do-kolor f_3_1 f_2_1 zkula11)

      (drzwi-z-do-kolor f_3_1 f_3_2 nkula4)
      (drzwi-z-do-kolor f_3_1 f_3_2 nkula7)
      (drzwi-z-do-kolor f_3_1 f_3_2 nkula9)
      (drzwi-z-do-kolor f_3_1 f_3_2 nkula10)
      (drzwi-z-do-kolor f_3_1 f_3_2 nkula14)

      (drzwi-z-do-kolor f_3_1 f_4_1 ckula6)
      (drzwi-z-do-kolor f_3_1 f_4_1 ckula12)

      (drzwi-z-do-kolor f_3_2 f_2_2 zkula1)
      (drzwi-z-do-kolor f_3_2 f_2_2 zkula5)
      (drzwi-z-do-kolor f_3_2 f_2_2 zkula8)
      (drzwi-z-do-kolor f_3_2 f_2_2 zkula11)

      (drzwi-z-do-kolor f_3_2 f_3_1 nkula4)
      (drzwi-z-do-kolor f_3_2 f_3_1 nkula7)
      (drzwi-z-do-kolor f_3_2 f_3_1 nkula9)
      (drzwi-z-do-kolor f_3_2 f_3_1 nkula10)
      (drzwi-z-do-kolor f_3_2 f_3_1 nkula14)

      (drzwi-z-do-kolor f_3_2 f_4_2 nkula4)
      (drzwi-z-do-kolor f_3_2 f_4_2 nkula7)
      (drzwi-z-do-kolor f_3_2 f_4_2 nkula9)
      (drzwi-z-do-kolor f_3_2 f_4_2 nkula10)
      (drzwi-z-do-kolor f_3_2 f_4_2 nkula14)

      (drzwi-z-do-kolor f_3_2 f_3_3 rkula2)

      (drzwi-z-do-kolor f_4_1 f_3_1 ckula6)
      (drzwi-z-do-kolor f_4_1 f_3_1 ckula12)

      (drzwi-z-do-kolor f_4_1 f_4_2 nkula4)
      (drzwi-z-do-kolor f_4_1 f_4_2 nkula7)
      (drzwi-z-do-kolor f_4_1 f_4_2 nkula9)
      (drzwi-z-do-kolor f_4_1 f_4_2 nkula10)
      (drzwi-z-do-kolor f_4_1 f_4_2 nkula14)

      (drzwi-z-do-kolor f_4_2 f_3_2 nkula4)
      (drzwi-z-do-kolor f_4_2 f_3_2 nkula7)
      (drzwi-z-do-kolor f_4_2 f_3_2 nkula9)
      (drzwi-z-do-kolor f_4_2 f_3_2 nkula10)
      (drzwi-z-do-kolor f_4_2 f_3_2 nkula14)

      (drzwi-z-do-kolor f_4_2 f_4_1 nkula4)
      (drzwi-z-do-kolor f_4_2 f_4_1 nkula7)
      (drzwi-z-do-kolor f_4_2 f_4_1 nkula9)
      (drzwi-z-do-kolor f_4_2 f_4_1 nkula10)
      (drzwi-z-do-kolor f_4_2 f_4_1 nkula14)

      (kula-w zkula1 f_1_1);zielony)
      (kula-w rkula2 f_1_2);rozowy)
      (kula-w pkula3 f_2_1);pomaranczowy)
      (kula-w nkula4 f_2_1);niebieski)
      (kula-w zkula5 f_2_2);zielony)
      (kula-w ckula6 f_2_2);czerwony)
      (kula-w nkula7 f_3_1);niebieski)
      (kula-w zkula8 f_3_1);zielony)
      (kula-w nkula9 f_3_2);niebieski)
      (kula-w nkula10 f_3_2);niebieski)
      (kula-w zkula11 f_4_1);zielony)
      (kula-w ckula12 f_4_1);czerwony)
      (kula-w pkula13 f_4_2);pomaranczowy)
      (kula-w nkula14 f_4_2);niebieski)


    )
    (:goal
        (and
            ;(lamigowka)
            (merry f_3_3)
        )
    )
)
