C     Assignment to local DO loop variable via EQUIVALENCE
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case do3.f90
      PROGRAM DO03
      EXTERNAL SUB
      CALL SUB(1, 10, 1)
      END
      SUBROUTINE SUB(J, K, L)
      INTEGER J, K, L
      INTEGER I, II
      EQUIVALENCE (I, II)
      DO 10 I = J, K, L
          PRINT *, I
          II = I + 1
   10 CONTINUE
      END
