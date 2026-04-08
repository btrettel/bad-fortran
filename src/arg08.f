C     Scalar constant passed to array dummy argument (assumed size)
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case arg7.f90
C     Also see:
C     chkdiagnostics chk_array_scalar_arg.f90
      PROGRAM ARG08
      REAL SAME
      EXTERNAL SAME
      PRINT *, SAME(10.0)
      PRINT *, 'BUG IS UNDETECTED'
      END
      FUNCTION SAME(X)
      REAL X(*), SAME
      SAME = X(1)
      END
