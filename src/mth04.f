C     INTEGER overflow
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case iofl.f90
      PROGRAM MTH04
      INTEGER I, J
      J = 10
      DO 10 I = 1, 25
          J = J*3
          PRINT *, I, J
   10 CONTINUE
      END
