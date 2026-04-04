C     Uninitialized array element, argument
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni6.f90
      PROGRAM UIN06
      INTEGER I(10)
      EXTERNAL SUB
      I(1) = 1
      CALL SUB(I)
      END
      SUBROUTINE SUB(I)
      INTEGER I(*)
      I(3) = I(2)
      PRINT *, I(3)
      END
