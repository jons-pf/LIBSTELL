      SUBROUTINE svdinv2 (amat, u, vt, w, m)
!
!     Computes PSEUDO-INVERSE of AMAT, Given SVD matrices u,v and
!     weight array w
!
!     MIMICS svdinv, but uses u, vt, w computed from Lapack
!     IT IS ASSUMED THAT THE ORDERED WEIGHT ARRAY w HAS BEEN SET 
!     (EXTERNALLY) TO ZERO WHERE THE WEIGHTS ARE TO BE NEGLECTED 
!     
!
      USE stel_kinds
      IMPLICIT NONE
!-----------------------------------------------
!   D u m m y   A r g u m e n t s
!C-----------------------------------------------
      INTEGER, INTENT(in)     :: m
      REAL(rprec), DIMENSION(m,m), INTENT(out)   :: amat
      REAL(rprec), DIMENSION(m,m), INTENT(inout) :: u, vt
      REAL(rprec), DIMENSION(m)                  :: w
!-----------------------------------------------
!   L o c a l   P a r a m e t e r s
!-----------------------------------------------
      REAL(rprec) :: zero = 0
!-----------------------------------------------
!   L o c a l   V a r i a b l e s
!-----------------------------------------------
      INTEGER :: i, j
!-----------------------------------------------
!
!     APEUDO-INV = V * WINV * UT
!     RECALL, VT = TRANSPOSE(V)
!

      DO i = 1, m
         IF (w(i) .gt. zero) THEN
!divide ith row of Utr by w(i)
            u(:m,i) = u(:m,i)/w(i)
         ELSE
!zero the infinite 1/weights
            u(:m,i) = zero   !1.E-10_dp*u(:m,i)
         END IF
      END DO


      AMAT = MATMUL(TRANSPOSE(VT), TRANSPOSE(U))

      END SUBROUTINE svdinv2
