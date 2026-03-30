!=======================================================================
!   FILE: TEST38.F90
!   DATE: 22 April 2003
!   reformatted for F77 compilers and renamed ARG7 - JRA May 04
!
!   TEST: Inconsistent scalar/array subprogram mapping.
!
!   RESULTS:
!   CVF - No compile-time or run-time message.
!
!   Lahey F95 - gives the message:
!     An attribute of argument 1 is inconsistent (actual argument no
!     name: scalar variable name, dummy argument x: array name).
!     With correct traceback.
!
!   Salford FTN95 - gives the message:
!    Attempt to call a routine with argument number one containing
!    too few array elements. With correct traceback.
!
!   Contact: Vivek Rao <vivekrao4@yahoo.com>
!=======================================================================
      real function same(x)
      implicit none
      real x(1)
      same = x(1)
      end
      program xtwice
      implicit none
      real same
      external same
      print*,same(10.0)
      print*,'Bug not caught!'
      end
