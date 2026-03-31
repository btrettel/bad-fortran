C     Unreachable/unused code due to GO TO #4
      PROGRAM UUS05
      INTEGER I
      PARAMETER (I = 1)
      PRINT *, 'PRINTED'
      IF (I .EQ. 1) GOTO 10
      PRINT *, 'NEVER PRINTED'
   10 CONTINUE
      END
