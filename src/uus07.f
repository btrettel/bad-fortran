C     Unreachable/unused code due to GO TO #5
      PROGRAM UUS07
      LOGICAL L
      PARAMETER (L = .TRUE.)
      INTEGER I
      DO 10 I = 1, 2
          PRINT *, I
          IF (L) GOTO 20
          PRINT *, 'NEVER PRINTED'
   10 CONTINUE
   20 CONTINUE
      END
