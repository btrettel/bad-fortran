C     Uninitialized variable, argument
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni2.f90
      PROGRAM UIN02
      INTEGER I, J
      EXTERNAL SUB
      CALL SUB(I, J)
      PRINT *, I, J
      END

      SUBROUTINE SUB(I, J)
      INTEGER I, J
      I = J
      END
