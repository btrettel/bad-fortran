C     Same file opened on 2 different units
C     Modified from:
C     https://www.fortran.uk/diagnose.zip case fh1.f90
      PROGRAM FH1
      EXTERNAL OPENIT
      CALL OPENIT(20, 'XXX.DAT')
      WRITE (20, FMT = *) '------------------'
      CLOSE (20)
      CALL OPENIT(21, 'XXX.DAT')
      PRINT *, 'SAME FILE MAY NOT BE OPENED ON 2 DIFFERENT UNITS'
      PRINT *, 'NEXT OPEN SHOULD FAIL'
      CALL OPENIT(22, 'XXX.DAT')
      END

      SUBROUTINE OPENIT(IUN, FNAME)
      INTEGER IUN
      CHARACTER FNAME* (*)
      INTEGER IOS
      OPEN (IUN, FILE = FNAME, STATUS = 'UNKNOWN', IOSTAT = IOS)
      IF (IOS .NE. 0) THEN
          PRINT *, 'OPEN FAILED'
      ELSE
          PRINT *, 'OPEN SUCCEEDED'
      ENDIF
      END
