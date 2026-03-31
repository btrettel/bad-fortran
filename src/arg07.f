C     Scalar constant passed to array dummy argument
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case arg7.f90
      PROGRAM ARG07
      REAL SAME
      EXTERNAL SAME
      PRINT *, SAME(10.0)
      PRINT *, 'BUG IS UNDETECTED'
      END
      REAL FUNCTION SAME(X)
      REAL X(1)
      SAME = X(1)
      END
