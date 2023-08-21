!*******************************************************************************
!>  @file vmec_state.f
!>  @brief Contains module vmec_state.f
!
!  Note separating the Doxygen comment block here so detailed decription is
!  found in the Module not the file.
!
!>  Module is part of LIBSTELL. This module contains code to define the vmec
!>  state.
!*******************************************************************************
      MODULE vmec_state
      USE stel_kinds, ONLY: rprec

      IMPLICIT NONE

!>  The vmec state variable.
      REAL (rprec), DIMENSION(:), ALLOCATABLE, TARGET :: xc

      END MODULE vmec_state
