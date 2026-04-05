C     Character bound error, assign to dummy argument larger than actual
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case cbnd3.f90
C     Also see:
C     chkdiagnostics chk_mismatch_length_arg.f90
      PROGRAM BND23
      CHARACTER*10 ZZ, ZZZ
      EXTERNAL SUB
      COMMON /AAA/ZZ, ZZZ
      ZZ = '0000000000'
      ZZZ = '1111111111'

      CALL SUB(ZZ)
      PRINT *, ZZZ
      END
      SUBROUTINE SUB(ZZ)
      CHARACTER*11 ZZ
      ZZ = 'ABCDEF'
      PRINT *, ZZ
      END
