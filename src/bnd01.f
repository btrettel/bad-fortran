C     Array bound error, X(10)
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd1.f90
      PROGRAM BND01
      INTEGER I
      INTEGER II(10)
      DO 10 I = 1, 10
          II(I) = I + I
   10 CONTINUE
      DO 20 I = 2, 11
          II(I) = II(I-1)
          PRINT *, I, II(I-1)
   20 CONTINUE
      END
