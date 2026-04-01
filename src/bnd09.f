C     Multi-dimensional array bound error within overall array bounds
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case bnd9.f90
      PROGRAM BND09
      INTEGER I, J
      INTEGER II(10, 20)
      EXTERNAL SUB
      DO 20 J = 1, 20
          DO 10 I = 1, 10
              II(I, J) = 1000*J + I
   10     CONTINUE
   20 CONTINUE
      CALL SUB(II, 10, 20)
      PRINT '(10I7)', II
      END

      SUBROUTINE SUB(K, M, N)
      INTEGER M, N
      INTEGER K(M, N)
      K(1, N) = K(N, 1)
      END
