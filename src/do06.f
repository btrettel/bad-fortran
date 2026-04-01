C     Assignment to DO loop increment parameter
      PROGRAM DO06
      INTEGER I, J, K, L
      J = 1
      K = 10
      L = 1
      DO 10 I = J, K, L
          PRINT *, I
          L = I + 1
   10 CONTINUE
      END
