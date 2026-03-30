      program bnd10
      integer i,x(10)
      do i=1,10
       x(i)=i
      end do
      call sub(x,20)
      end
 
      subroutine sub(x,n)
      integer i,x(n)
      do i=1,20
       print * , x(i)
      end do
      end
