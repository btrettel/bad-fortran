C     Array bound error, X(N), N is in COMMON
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd3.f90
      PROGRAM BND03
      INTEGER N
      INTEGER I
      INTEGER II(10)
      EXTERNAL SUB
      COMMON /AAA/N
      N = 10
      DO 10 I = 1, 10
          II(I) = I + I
   10 CONTINUE
      CALL SUB(II)
      END

      SUBROUTINE SUB(J)
      INTEGER N
      COMMON /AAA/N
      INTEGER J(N)
      INTEGER I
      DO 10 I = 2, 11
          J(I) = J(I - 1)
          PRINT *, I, J(I - 1)
   10 CONTINUE
      END
