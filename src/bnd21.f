C     Character bound error, local
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case cbnd1.f90
      PROGRAM BND21
      INTEGER I, J
      CHARACTER ZZ*10
      I = 2
      J = I + 9
      ZZ(I:J) = 'ABCDEF'
      PRINT *, ZZ
      END
