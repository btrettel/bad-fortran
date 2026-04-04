C     Character bound error, CHARACTER*(*)
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case cbnd4.f90
      PROGRAM BND24
      CHARACTER*10 ZZ, ZZZ
      EXTERNAL SUB
      COMMON /AAA/ZZ, ZZZ
      ZZ = '0000000000'
      ZZZ = '1111111111'

      CALL SUB(ZZ)
      PRINT *, ZZZ
      END
      SUBROUTINE SUB(ZZ)
      CHARACTER*(*) ZZ
      ZZ(6:11) = 'ABCDEF'
      PRINT *, ZZ
      END
