C     DO loop index used after DO loop ends
      PROGRAM DO07
      INTEGER I, J
      J = 0
      DO 10 I = 1, 10
          J = J + I**2
   10 CONTINUE
      PRINT *, I, J
      END
