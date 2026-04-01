C     Array bound error, J(M:N), lower bound violated
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd6.f90
      PROGRAM BND06
      INTEGER I
      INTEGER II(101:110)
      EXTERNAL SUB
      DO 10 I = 101, 110
          II(I) = I + I
   10 CONTINUE
      CALL SUB(II, 101, 110)
      END

      SUBROUTINE SUB(J, M, N)
      INTEGER M, N
      INTEGER J(M:N)
      INTEGER I
      DO 10 I = 2, 10
          J(I) = J(100 + I)
          PRINT *, I, J(100 + I)
   10 CONTINUE
      END
