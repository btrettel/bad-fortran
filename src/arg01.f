C     Argument mismatch, same file
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case arg1.f90
      PROGRAM ARG01
      REAL X, Y
      EXTERNAL SUB
      CALL SUB(X, Y)
      PRINT *, X, Y
      END
      SUBROUTINE SUB(X, Y)
      DOUBLE PRECISION X, Y
      INTRINSIC SQRT
      X = 2.0d0
      Y = SQRT(X)
      END
