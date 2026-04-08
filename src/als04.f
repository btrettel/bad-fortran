C     Aliased dummy argument variable due to EQUIVALENCE
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case alias1.f90
      PROGRAM ALS04
      REAL X, Y
      EXTERNAL SUB
      EQUIVALENCE (X, Y)
      X = 1.0
      CALL SUB(X, Y)
      PRINT *, X, Y
      END
      SUBROUTINE SUB(X, Y)
      REAL X, Y
      X = 2.0
      Y = 3.0
      END
