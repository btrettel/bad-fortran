C     GOTO into DO loop from outside
      PROGRAM GOT01
      INTEGER I, J, K
      J = 0
      K = 0
      DO 10 I = 1, 10
          J = J + I**2
   5      CONTINUE
          K = J + I
          PRINT *, I
   10 CONTINUE
      IF (K .LT. 100) GOTO 5
      PRINT *, I, J, K
      END
