      program do1
      call sub(1,10,0)
      end
      subroutine sub(j,k,l)
      do i = j , k , l
         print * , i
      enddo
      end
