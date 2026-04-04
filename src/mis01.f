C     SUBROUTINE referenced as a FUNCTION, same file
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case sf1.f90
      PROGRAM MIS01
      INTEGER I
      REAL SUB
      EXTERNAL SUB
      PRINT *, SUB(I)
      END
      SUBROUTINE SUB(I)
      INTEGER I
      I = 2
      END
