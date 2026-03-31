C     Unreachable/unused code due to GO TO #2
      PROGRAM UUS03
      INTEGER I
      DO 10 I = 1, 2
          PRINT *, I
          GOTO 10
          PRINT *, 'NEVER PRINTED'
   10 CONTINUE
      END
