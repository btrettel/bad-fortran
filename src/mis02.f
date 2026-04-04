C     FUNCTION referenced as a SUBROUTINE, same file
      PROGRAM MIS02
      REAL X, FUN
      EXTERNAL FUN
      CALL FUN(X)
      END
      FUNCTION FUN(X)
      REAL X, FUN
      FUN = 2*X
      END
