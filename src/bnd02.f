C     Array bound error, X(N), N is argument
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd2.f90
      PROGRAM BND02
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
      DO 10 I = 2, 11
          J(I) = J(I - 1)
          PRINT *, I, J(I - 1)
   10 CONTINUE
      END
