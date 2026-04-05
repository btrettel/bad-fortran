C     Illegal format, type mismatch
C     Modified from:
C     chkdiagnostics chk_mismatch_format_data.f90
      PROGRAM IO15
      INTEGER I
      REAL X(5)
      INTRINSIC DBLE
      DO 10 I = 1, 5
          X(I) = DBLE(I)
   10 CONTINUE
      PRINT '(I5)', X(1)
      END
