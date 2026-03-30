      program cbnd3
      character*10 zz,zzz
      common /aaa/zz,zzz
      zz = '0000000000'
      zzz = '1111111111'
 
      call sub(zz)
      print * , zzz
      end
      subroutine sub(zz)
      character*11 zz
      zz = 'abcdef'
      print * , zz
      end
