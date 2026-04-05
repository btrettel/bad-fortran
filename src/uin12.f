C     Uninitialized array element, saved arrays
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni12.f90
      PROGRAM UIN12
      INTEGER I(10)
      EXTERNAL SUB1
      SAVE I
      CALL SUB1(I)
      END
      SUBROUTINE SUB1(I)
      INTEGER I(*)
      I(1) = 1
      I(3) = I(2)
      PRINT *, I(3)
      END
