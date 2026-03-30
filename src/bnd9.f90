      program bnd9
      integer ii(10,20)
      do j = 1 , 20
         do i = 1 , 10
            ii(i,j) = 1000*j+i
         enddo
      enddo
      call sub(ii,10,20)
      print '(10I7)' , ii
      end
 
      subroutine sub(x,m,n)
      integer x(m,n)
      x(1,n) = x(n,1)
      end
