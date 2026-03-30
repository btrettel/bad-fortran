      program bnd2
      integer ii(10)
      do i = 1 , 10
         ii(i) = i+i
      enddo
      call sub(ii,10)
      end
 
      subroutine sub(x,n)
      integer x(n)
      do i = 2 , 11
         x(i) = x(i-1)
         print * , i , x(i-1)
      enddo
      end
