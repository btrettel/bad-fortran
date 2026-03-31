C     Assignment to constant argument (F77, no INTENT)
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case arg3.f90
      PROGRAM ARG03
      EXTERNAL SUB
      CALL SUB(13)
      END
      SUBROUTINE SUB(I)
      INTEGER I
      I = 99
      PRINT *, I
      END
