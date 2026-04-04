C     Uninitialized array element, local
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni5.f90
      PROGRAM UIN05
      INTEGER I(10)
      I(1) = 1
      I(3) = I(2)
      PRINT *, I(3)
      END
