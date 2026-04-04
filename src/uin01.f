C     Uninitialized variable, local, INTEGER
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni1.f90
      PROGRAM UIN01
      INTEGER I, J, K, L
      K = L
      I = J
      PRINT *, K, I
      J = 1
      END
