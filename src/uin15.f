C     Uninitialized array element, saved arrays
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case uni15.f90
      PROGRAM UIN15
C Check 1 byte characters
C Check for false positive
      INTEGER I, J
      CHARACTER X(11)*1
      EXTERNAL SUB
      INTRINSIC CHAR, MOD
      X(1) = CHAR(0)
      PRINT *, 'CHECKING FOR FALSE POSITIVE.'
      PRINT *, 'NO ERROR SHOULD BE REPORTED BEFORE NEXT MESSAGE.'
      DO 10 I = 1, 255
C        PRINT *,I
          J = MOD(I, 10) + 1
          X(J) = CHAR(I)
          X(1) = X(J)
   10 CONTINUE
      PRINT *, 'BUT NOW THERE IS A GENUINE UNDEFINED VAR USAGE.'
      CALL SUB(X)
      END
      SUBROUTINE SUB(X)
      CHARACTER X(*)*1
      INTEGER I
      X(3) = X(11)
      DO 10 I = 1, 11
          PRINT *, X(I)
   10 CONTINUE
      END
