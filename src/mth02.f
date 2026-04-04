C     REAL overflow
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case ofl.f90
      PROGRAM MTH02
      REAL X
      INTEGER I
      INTRINSIC SQRT
      X = SQRT(3.0)
      DO 10 I = 1, 25
          X = 1000.0*X
          PRINT *, I, X
   10 CONTINUE
      END
