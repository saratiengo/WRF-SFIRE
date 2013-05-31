      SUBROUTINE STRCLN

C$$$  SUBPROGRAM DOCUMENTATION BLOCK
C
C SUBPROGRAM:    STRCLN
C   PRGMMR: WOOLLEN          ORG: NP20       DATE: 1994-01-06
C
C ABSTRACT: THIS SUBROUTINE RESETS THE MNEMONIC STRING CACHE IN THE
C   BUFR INTERFACE (ARRAYS IN COMMON BLOCK /STCACH/).  THE MNEMONIC
C   STRING CACHE IS A PERFORMANCE ENHANCING DEVICE WHICH SAVES TIME
C   WHEN THE SAME MNEMONIC STRINGS ARE ENCOUNTERED IN A PROGRAM, OVER
C   AND OVER AGAIN (THE TYPICAL SCENARIO).
C
C PROGRAM HISTORY LOG:
C 1994-01-06  J. WOOLLEN -- ORIGINAL AUTHOR
C 1998-04-02  J. WOOLLEN -- MODIFIED TO ENLARGE THE CACHE FROM 50
C                           ELEMENTS TO 1000, MAXIMUM
C 1998-07-08  J. WOOLLEN -- CORRECTED SOME MINOR ERRORS
C 2003-11-04  S. BENDER  -- ADDED REMARKS/BUFRLIB ROUTINE
C                           INTERDEPENDENCIES
C 2003-11-04  D. KEYSER  -- UNIFIED/PORTABLE FOR WRF; ADDED
C                           DOCUMENTATION (INCLUDING HISTORY)
C
C USAGE:    CALL STRCLN
C
C REMARKS:
C    THIS ROUTINE CALLS:        None
C    THIS ROUTINE IS CALLED BY: MAKESTAB
C                               Normally not called by any application
C                               programs.
C
C ATTRIBUTES:
C   LANGUAGE: FORTRAN 77
C   MACHINE:  PORTABLE TO ALL PLATFORMS
C
C$$$

      INCLUDE 'bufrlib.prm'

      COMMON /STCACH/ MSTR,NSTR,LSTR,LUNS(MXS,2),USRS(MXS),ICON(52,MXS)
      CHARACTER*80 USRS

      MSTR = MXS
      NSTR = 0
      LSTR = 0
      RETURN
      END