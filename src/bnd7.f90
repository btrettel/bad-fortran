      program bnd7
      integer ii(10)
      do i = 1 , 10
         ii(i) = i+i
      enddo
      call sub(ii,10)
      end
 
      subroutine sub(x,n)
      integer x(n),y(n)
      do i = 2 , 11
         y(i) = x(i-1)
         print * , i , x(i-1)
      enddo
      end
