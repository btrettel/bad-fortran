C     Unreachable/unused code due to block IF
      PROGRAM UUS09
      LOGICAL L
      PARAMETER (L = .FALSE.)
      PRINT *, 'PRINTED'
      IF (L) THEN
          PRINT *, 'NEVER PRINTED'
      ENDIF
      END
