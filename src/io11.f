C     Illegal run-time format
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case fmt1.f90
      PROGRAM IO11
      CHARACTER*10 ZFMT
      ZFMT='(IK)'
      WRITE(6,ZFMT) 123
      END
