C     Unreachable/unused code due to GO TO #1
      PROGRAM UUS02
      INTEGER I
      DO 10 I = 1, 2
          PRINT *, I
          IF (I .EQ. 1) GOTO 20
          PRINT *, 'NEVER PRINTED'
   10 CONTINUE
   20 CONTINUE
      END
