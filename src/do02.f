C     Assignment to local DO loop variable
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case do2.f90
      PROGRAM DO02
      EXTERNAL SUB
      CALL SUB(1, 10, 1)
      END
      SUBROUTINE SUB(J, K, L)
      INTEGER J, K, L
      INTEGER I
      DO 10 I = J, K, L
          PRINT *, I
          I = I + 1
   10 CONTINUE
      END
