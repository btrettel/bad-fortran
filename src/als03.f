C     Aliased dummy argument array #2
C     Modified from:
C     https://www.ibiblio.org/pub/languages/fortran/ch1-8.html#10
      PROGRAM ALS03
      INTEGER I, J(5)
      EXTERNAL SUB
      DO 1 I=1,5
          J(I) = 2
 1    CONTINUE
      WRITE(*,*) 'BEFORE: ', J
      CALL SUB(J, J(1))
      WRITE(*,*) 'AFTER:  ', J
      END

      SUBROUTINE SUB(K, L)
      INTEGER I, K(5), L
      DO 2 I=1,5
          K(I) = L * K(I)
 2    CONTINUE
      RETURN
      END
