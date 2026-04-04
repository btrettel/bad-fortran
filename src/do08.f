C     DO loop variable in COMMON
      PROGRAM DO08
      INTEGER I
      INTEGER J, K, L
      EXTERNAL SUB
      COMMON /DOCOM/I
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
      INTEGER I
      COMMON /DOCOM/I
      I = I + 1
      END
