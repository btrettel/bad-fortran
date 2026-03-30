      program cbnd2
      character*10 zz,zzz
      common /aa/zz,zzz
      call sub(2,11)
      end
      subroutine sub(i,j)
      character*10 zz,zzz
      common /aa/zz,zzz
      zz(i:j) = 'abcdef'
      print * , zz
      end
