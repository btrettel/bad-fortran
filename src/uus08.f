C     Unreachable/unused code due to GO TO #6
      PROGRAM UUS08
      INTEGER I
      PARAMETER (I = 1)
      LOGICAL L
      PARAMETER (L = .TRUE.)
      PRINT *, 'PRINTED'
      IF (L) GOTO 10
      PRINT *, 'NEVER PRINTED'
   10 CONTINUE
      END
