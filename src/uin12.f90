!! check whether uninitialised variables are detected
!! for saved arrays
      program uin12
      integer x(10)
      save x
      call sub1(x)
      end
      subroutine sub1(x)
      integer x(*)
      x(1) = 1
      x(3) = x(2)
      print * , x(3)
      end
