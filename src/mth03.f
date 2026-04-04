C     REAL division by zero
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case ufl.f90
      PROGRAM MTH03
      REAL X, Y
      INTEGER I
      INTRINSIC SQRT
      X = SQRT(3.0)
      DO 10 I = 1, 25
          IF (X.LT.1E-20) THEN
              X = 0.0
          ELSE
              X = 0.001*X
          ENDIF
          Y = 1.0/X
          PRINT *, I, X, Y
   10 CONTINUE
      END
