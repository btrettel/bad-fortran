      program arg1
      call sub(x,y)
      print * , x,y
      end
      subroutine sub(x,y)
      double precision x,y
      x = 2.0
      y = sqrt(x)
      end
