C     Assumed size array bound error, X(*)
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd5.f90
      PROGRAM BND05
      INTEGER I
      INTEGER II(10)
      EXTERNAL SUB
      DO 10 I = 1, 10
          II(I) = I + I
   10 CONTINUE
      CALL SUB(II)
      END

      SUBROUTINE SUB(J)
      INTEGER J(*)
      INTEGER I
      DO 10 I = 2, 11
          J(I) = J(I - 1)
          PRINT *, I, J(I - 1)
   10 CONTINUE
      END
