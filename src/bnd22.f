C     Character bound error, COMMON
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case cbnd2.f90
      PROGRAM BND22
      CHARACTER*10 ZZ,ZZZ
      COMMON /AA/ZZ,ZZZ
      CALL SUB(2,11)
      END
      SUBROUTINE SUB(I,J)
      CHARACTER*10 ZZ,ZZZ
      COMMON /AA/ZZ,ZZZ
      ZZ(I:J) = 'ABCDEF'
      PRINT * , ZZ
      END
