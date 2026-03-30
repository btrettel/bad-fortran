      program bnd1
      integer ii(10)
      do i = 1 , 10
         ii(i) = i+i
      enddo
      do i = 2 , 11
         ii(i) = ii(i-1)
         print * , i , ii(i-1)
      enddo
      end
