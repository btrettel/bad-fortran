      program bnd6
      integer ii(101:110)
      do i = 101 , 110
         ii(i) = i+i
      enddo
      call sub(ii,101,110)
      end
 
      subroutine sub(x,m,n)
      integer x(m:n)
      do i = 2 , 10
         x(i) = x(100+i)
         print * , i , x(100+i)
      enddo
      end
