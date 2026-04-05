C     PAUSE statement
C     Modified from:
C     chkdiagnostics chk_pause.f90
      PROGRAM OB02
      INTEGER X
      X = 0
      IF (X .GT. 1) THEN
          PAUSE
      ELSE
          PRINT *, 'THE PAUSE STATEMENT IS NOT ACTUALLY RUN'
          PRINT *, '(TO AVOID THE ACTUAL PAUSE)'
      ENDIF
      END
