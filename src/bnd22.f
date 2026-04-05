C     Character bound error, COMMON
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case cbnd2.f90
      PROGRAM BND22
      CHARACTER ZZ*10, ZZZ*10
      EXTERNAL SUB
      COMMON /AA/ZZ, ZZZ
      CALL SUB(2, 11)
      END
      SUBROUTINE SUB(I, J)
      INTEGER I, J
      CHARACTER ZZ*10, ZZZ*10
      COMMON /AA/ZZ, ZZZ
      ZZ(I:J) = 'ABCDEF'
      PRINT *, ZZ
      END
