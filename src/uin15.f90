      program uin15
! Check 1 byte characters
      character(1) x(11)
! check for false positive
      x(1) = char(0)
      print *,'Checking for false positive - no error should be reported before next message..'
      do i = 1 , 255
!	     print *,I
	     j = mod(i,10) + 1
		 x(j) = char(i)
         x(1) = x(j)
      enddo
      print *,'but NOW there is a genuine undefined var usage'
      call sub(x)
      end
      subroutine sub(x)
      character(1) x(*)
      x(3) = x(11)
      print * , x(1:11)
      end
