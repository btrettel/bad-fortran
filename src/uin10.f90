!! check whether uninitialised variables are detected
!! for automatic arrays
      program uin10
      call sub2(10)
      end
 
      subroutine sub2(n)
      integer n
      integer x(n)
      call sub1(x)
      end
 
      subroutine sub1(x)
      integer x(*)
      x(1) = 1
      x(3) = x(2)
      print * , x(3)
      end
 
