C     Array bound error, dummy argument is larger than actual argument
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd10.f90
      PROGRAM BND10
      INTEGER I
      INTEGER J(10)
      EXTERNAL SUB
      DO 10 I = 1, 10
          J(I) = I
   10 CONTINUE
      CALL SUB(J, 20)
      END

      SUBROUTINE SUB(K, N)
      INTEGER N
      INTEGER K(N)
      INTEGER I
      DO 10 I = 1, 20
          PRINT *, K(I)
   10 CONTINUE
      END
