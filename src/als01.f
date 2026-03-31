C     Aliased dummy argument variable
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case alias1.f90
      PROGRAM ALS01
      X = 1.0
      CALL SUB(X,X)
      PRINT *,X
      END
      SUBROUTINE SUB(X,Y)
      X=2.
      Y=3.
      END
