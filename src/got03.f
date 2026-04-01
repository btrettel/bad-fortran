C     GOTO to end of nested DO loops from outer loop
      PROGRAM GOT03
      INTEGER I, J, K
      K = 0
      DO 10 I = 1, 2
          IF (K .LT. 50) GOTO 20
          DO 20 J = 1, 2
              K = K+I*J
              PRINT *, K
   20     CONTINUE
   10 CONTINUE
      PRINT *, I, J, K
      END
