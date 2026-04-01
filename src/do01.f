C     Zero increment DO loop
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case do1.f90
      PROGRAM DO01
      EXTERNAL SUB
      CALL SUB(1, 10, 0)
      END
      SUBROUTINE SUB(J, K, L)
      INTEGER J, K, L
      INTEGER I
      DO 10 I = J, K, L
          PRINT *, I
   10 CONTINUE
      END
