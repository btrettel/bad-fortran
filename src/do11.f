C     DO loop increment in COMMON
      PROGRAM DO11
      INTEGER I
      INTEGER J, K, L
      EXTERNAL SUB
      COMMON /DOCOM/L
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
      INTEGER L
      COMMON /DOCOM/L
      L = L + 1
      END
