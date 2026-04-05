C     GOTO to end of nested DO loops from outer loop, common termination
      PROGRAM GOT04
      INTEGER I, J, K
      K = 0
      DO 10 I = 1, 2
          IF (K .LT. 50) GOTO 10
          DO 10 J = 1, 2
              K = K + I*J
              PRINT *, K
   10 CONTINUE
      PRINT *, I, J, K
      END
