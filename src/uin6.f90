      program uin6
      integer x(10)
      x(1) = 1
      call sub(x)
      end
      subroutine sub(x)
      integer x(*)
      x(3) = x(2)
      print * , x(3)
      end
