C     Aliased dummy argument array #2
C     Modified from:
C     https://www.ibiblio.org/pub/languages/fortran/ch1-8.html#10
      PROGRAM ALS03
      INTEGER I
      INTEGER J(5)
      EXTERNAL SUB
      DO 10 I = 1, 5
          J(I) = 2
   10 CONTINUE
      WRITE (*, FMT=*) 'BEFORE: ', J
      CALL SUB(J, J(1))
      WRITE (*, FMT=*) 'AFTER:  ', J
      END

      SUBROUTINE SUB(K, L)
      INTEGER L
      INTEGER K(5)
      INTEGER I
      DO 10 I = 1, 5
          K(I) = L*K(I)
   10 CONTINUE
      RETURN

      END
