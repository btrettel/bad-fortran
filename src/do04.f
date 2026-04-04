C     Assignment to DO loop lower bound
      PROGRAM DO04
      INTEGER I, J, K, L
      J = 1
      K = 10
      L = 1
      DO 10 I = J, K, L
          PRINT *, I
          J = I + 1
   10 CONTINUE
      END
