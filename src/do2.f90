      program do2
      call sub(1,10,1)
      end
      subroutine sub(j,k,l)
      do i = j , k , l
         print * , i
         i = i + 1
      enddo
      end
