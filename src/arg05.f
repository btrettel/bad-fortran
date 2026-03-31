C     Assignment to DO loop variable in SUBROUTINE (F77, no INTENT)
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case arg5.f90
      PROGRAM ARG05
      INTEGER I
      EXTERNAL SUB
      DO 10 I = 1, 10
          CALL SUB(I)
   10 CONTINUE
      END
      SUBROUTINE SUB(I)
      INTEGER I
      I = I + 1
      PRINT *, I
      END
