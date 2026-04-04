C     Uninitialized array element, saved arrays
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni12.f90
      PROGRAM UIN12
      INTEGER X(10)
      EXTERNAL SUB1
      SAVE X
      CALL SUB1(X)
      END
      SUBROUTINE SUB1(X)
      INTEGER X(*)
      X(1) = 1
      X(3) = X(2)
      PRINT *, X(3)
      END
