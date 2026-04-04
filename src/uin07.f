C     Uninitialized array element, COMMON
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni7.f90
      PROGRAM UIN07
      INTEGER I(10)
      EXTERNAL SUB
      COMMON /AAA/I
      I(1) = 1
      CALL SUB
      END
      SUBROUTINE SUB
      INTEGER I(10)
      COMMON /AAA/I
      I(3) = I(2)
      PRINT *, I(3)
      END
