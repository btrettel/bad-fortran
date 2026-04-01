C     Array bound error, automatic array
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd7.f90
      PROGRAM BND07
      INTEGER I
      INTEGER II(10)
      EXTERNAL SUB
      DO 10 I = 1, 10
          II(I) = I + I
   10 CONTINUE
      CALL SUB(II, 10)
      END

      SUBROUTINE SUB(J, N)
      INTEGER N
      INTEGER J(N)
      INTEGER I
      INTEGER K(N)
      DO 10 I = 2, 11
          K(I) = J(I - 1)
          PRINT *, I, J(I - 1), K(I)
   10 CONTINUE
      END
