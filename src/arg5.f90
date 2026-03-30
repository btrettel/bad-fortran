      program arg5
      do i = 1 , 10
         call sub(i)
      enddo
      end
      subroutine sub(i)
      i=i+1
      print *,i
      end
