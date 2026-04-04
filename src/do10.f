C     DO loop upper bound in COMMON
      PROGRAM DO10
      INTEGER I
      INTEGER J, K, L
      EXTERNAL SUB
      COMMON /DOCOM/K
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
      INTEGER K
      COMMON /DOCOM/K
      K = K + 1
      END
