      program uin7
      integer x(10)
      common /aaa/x
      x(1) = 1
      call sub
      end
      subroutine sub
      integer x(10)
      common /aaa/x
      x(3) = x(2)
      print * , x(3)
      end
