C     Nested DO loops with same index
      PROGRAM DO12
      INTEGER I, K
      K = 0
      DO 10 I = 1, 10
          DO 20 I = 1, 10
              K = K + I**2
   20     CONTINUE
   10 CONTINUE
      PRINT *, K
      END
