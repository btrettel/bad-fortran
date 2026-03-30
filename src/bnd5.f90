      program bnd5
      integer ii(10)
      do i = 1 , 10
         ii(i) = i+i
      enddo
      call sub(ii)
      end
 
      subroutine sub(x)
      integer x(*)
      do i = 2 , 11
         x(i) = x(i-1)
         print * , i , x(i-1)
      enddo
      end
