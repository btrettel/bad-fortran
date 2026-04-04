C     Uninitialized array element, automatic arrays
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni10.f90
      PROGRAM UIN10
      EXTERNAL SUB2
      CALL SUB2(10)
      END

      SUBROUTINE SUB2(N)
      INTEGER N
      INTEGER I(N)
      EXTERNAL SUB1
      CALL SUB1(I)
      END

      SUBROUTINE SUB1(I)
      INTEGER I(*)
      I(1) = 1
      I(3) = I(2)
      PRINT *, I(3)
      END
