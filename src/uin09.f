C     Uninitialized array element, local array in SUBROUTINE
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni9.f90
      PROGRAM UIN09
      REAL X, Y
      EXTERNAL SUB
      INTRINSIC SQRT
      X = SQRT(2.0) - 1.0
      IF (X .GT. 0.0) THEN
          Y = 1.0
      ELSE
          CALL SUB(X, Y)
      ENDIF
      END
      SUBROUTINE SUB(X, Y)
      REAL X, Y
      X = Y
      PRINT *, X
      END
