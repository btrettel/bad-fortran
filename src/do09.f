C     DO loop lower bound in COMMON
      PROGRAM DO09
      INTEGER I
      INTEGER J, K, L
      EXTERNAL SUB
      COMMON /DOCOM/J
      J = 1
      K = 10
      L = 1
      DO 10 I = J, K, L
          PRINT *, 'BEFORE:', I, J, K, L
          CALL SUB
          PRINT *, 'AFTER:', I, J, K, L
   10 CONTINUE
      END

      SUBROUTINE SUB
      INTEGER J
      COMMON /DOCOM/J
      J = J + 1
      END
