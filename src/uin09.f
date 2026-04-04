C     Uninitialized array element, local array in SUBROUTINE
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni9.f90
      PROGRAM UIN09
      INTEGER I, J
      EXTERNAL SUB
      INTRINSIC SQRT
      I = SQRT(2.0) - 1
      IF (I .GT. 0) THEN
          J = 1
      ELSE
          CALL SUB(I, J)
      ENDIF
      END
      SUBROUTINE SUB(I, J)
      INTEGER I, J
      I = J
      PRINT *, I
      END
