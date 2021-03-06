!
!        Copyright (C) 2000-2018 the YAMBO team
!              http://www.yambo-code.org
!
! Authors (see AUTHORS file for details): AM
!
! This file is distributed under the terms of the GNU
! General Public License. You can redistribute it and/or
! modify it under the terms of the GNU General Public
! License as published by the Free Software Foundation;
! either version 2, or (at your option) any later version.
!
! This program is distributed in the hope that it will
! be useful, but WITHOUT ANY WARRANTY; without even the
! implied warranty of MERCHANTABILITY or FITNESS FOR A
! PARTICULAR PURPOSE.  See the GNU General Public License
! for more details.
!
! You should have received a copy of the GNU General Public
! License along with this program; if not, write to the Free
! Software Foundation, Inc., 59 Temple Place - Suite 330,Boston,
! MA 02111-1307, USA or visit http://www.gnu.org/copyleft/gpl.txt.
!
subroutine errore(subname,msgin,ierr)
  use com,      ONLY : error
  implicit none
  character(*), intent(in) :: subname,msgin
  integer,      intent(in) :: ierr
  character(3)              :: merr
  !
  write(merr,'(i3)') ierr
  call error('Error in '//trim(subname)//' '//trim(msgin)//' ierr:'//trim(merr))
  stop ' ' ! not called
  !
end subroutine errore
!
subroutine mpi_abort
end subroutine mpi_abort
