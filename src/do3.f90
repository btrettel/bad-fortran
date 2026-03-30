      program do3
      call sub(1,10,1)
      end
      subroutine sub(j,k,l)
       equivalence (i,ii)
      do i = j , k , l
         print * , i
         ii = i + 1
      enddo
      end
