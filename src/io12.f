C     Illegal format, parenthesis incorrect
C     Modified from:
C     chkdiagnostics chk_incorrect_format.f90
      PROGRAM IO12
      INTEGER I
      REAL X(5)
      INTRINSIC DBLE
      DO 10 I = 1, 5
          X(I) = DBLE(I)
   10 CONTINUE
      PRINT '(I5', X(1)
      END
