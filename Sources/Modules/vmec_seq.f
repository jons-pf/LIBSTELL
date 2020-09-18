      MODULE vmec_seq
!-----------------------------------------------
!   L o c a l   P a r a m e t e r s
!-----------------------------------------------
      INTEGER, PARAMETER :: nseqmax = 100
!-----------------------------------------------
!   L o c a l   V a r i a b l e s
!-----------------------------------------------
      INTEGER :: nseq
      INTEGER, DIMENSION(nseqmax) :: nseq_select
      CHARACTER(LEN=120), DIMENSION(nseqmax) :: extension

      NAMELIST /vseq/ nseq, nseq_select, extension

      END MODULE vmec_seq
