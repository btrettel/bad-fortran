C     GOTO to end of DO loop from inside
      PROGRAM GOT02
      INTEGER I, J, K
      J = 0
      K = 0
      DO 10 I = 1, 10
          J = J + I**2
          IF (J < 10) GOTO 10
          K = J + I
          PRINT *, I
   10 CONTINUE
      PRINT *, I, J, K
      END
