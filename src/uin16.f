C     Uninitialized variable, local, REAL
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni1a.f90
      PROGRAM UIN16
      REAL A, B, X, Y
      X = Y
      A = B
      PRINT *, X, A
      B = 1
      END
