      program div0
      x = sqrt(3.0)
      do i = 1 , 25
         if (x.lt.1E-20) then
            x = 0.0
         else
            x = 0.001*x
         endif
         y = 1.0/x
         print * , i , x , y
      enddo
      end
