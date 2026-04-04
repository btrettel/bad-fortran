C     REAL underflow
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case div0.f90
      PROGRAM MTH01
      REAL X
      INTEGER I
      INTRINSIC SQRT
      X = SQRT(3.0)
      DO 10 I = 1, 25
          X = 0.001*X
          PRINT *, I, X
   10 CONTINUE
      END
