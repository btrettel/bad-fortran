C     GOTO to inside block IF
      PROGRAM GOT05
      INTEGER I, J
      I = 0
      J = 0
      IF (I .LT. 10) THEN
 1        CONTINUE
          I = I + 1
          J = J + 1
      ELSE
          I = I - 1
          J = J + 2
      END IF
      PRINT *, I, J
      IF (J .LT. 10) GOTO 1
      END
