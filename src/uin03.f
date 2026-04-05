C     Uninitialized variable, COMMON
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni3.f90
      PROGRAM UIN03
      INTEGER I, J
      COMMON /AAA/I, J
      I = J
      PRINT *, I
      END
