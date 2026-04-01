C     GOTO to END IF
      PROGRAM GOT06
      INTEGER I, J
      I = 0
      J = 0
      IF (I .LT. 10) THEN
          I = I + 1
          J = J + 1
      ELSE
          I = I - 1
          J = J + 2
 1    END IF
      PRINT *, I, J
      IF (I .LT. 10) THEN
          I = I + 1
          GOTO 1
      END IF
      END
