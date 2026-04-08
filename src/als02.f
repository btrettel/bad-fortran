C     Aliased dummy argument array #1
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case alias2.f90
      PROGRAM ALIAS2
      INTEGER I
      REAL X(10)
      EXTERNAL SUB
      DO 10 I = 1, 10
          X(I) = REAL(I)
   10 CONTINUE
      CALL SUB(X(1), X(5))
      PRINT *, X
      END
      SUBROUTINE SUB(X, Y)
      REAL X(*), Y(*)
      Y(1) = 0
      X(10) = 0
      END
