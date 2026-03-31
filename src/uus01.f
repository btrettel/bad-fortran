C     Unreachable/unused code due to RETURN
C     Modified from:
C     Fortitude unreachable-statement (C191)
      PROGRAM UUS01
      INTEGER I
      EXTERNAL SUB
      I = 0
      CALL SUB(I)
      PRINT *, I
      END
      SUBROUTINE SUB(I)
      INTEGER I
      I = I + 1
      RETURN
      PRINT *, 'NEVER PRINTED'
      END
