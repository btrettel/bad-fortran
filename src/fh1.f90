      program fh1
      call openit(20,'xxx.dat')
      write(20,*) '------------------'
      close(20)
      call openit(21,'xxx.dat')
      print *,'Same file may not be opened on 2 different units'
      print *,'Next OPEN should fail'
      call openit(22,'xxx.dat')
      end

      subroutine openit(iun,fname)
      integer iun
      character*(*) fname
      open(iun,file=fname,status='unknown',iostat=ios)
      if (ios.ne.0 ) then
         print *, 'OPEN failed'
      else
         print *, 'OPEN succeeded'
      endif
      end
