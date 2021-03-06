!!------------------------ headswap_wrap.f90 --------------------------!!
!!------------------------ headswap_wrap.f90 --------------------------!!
!!------------------------ headswap_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module headswap_wrap_module
      use headswap_module
      implicit none
      public

      type :: headswap_wrap_struct
        type(headswap_struct),pointer :: obj
      end type headswap_wrap_struct

      end module headswap_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine headswap_wrap_create (fpoint)  
      use headswap_wrap_module
      implicit none
      type(headswap_wrap_struct),intent(out)   :: fpoint
      type(headswap_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call headswap_create (obj)
      fpoint%obj => obj

      end subroutine headswap_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine headswap_wrap_delete (fpoint)   
      use headswap_wrap_module
      implicit none
      type(headswap_wrap_struct),intent(inout) :: fpoint
      type(headswap_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headswap_delete (obj)
      fpoint%obj => obj

      end subroutine headswap_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine headswap_wrap_update (fpoint)     
      use headswap_wrap_module
      implicit none
      type(headswap_wrap_struct),intent(inout) :: fpoint
      type(headswap_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headswap_update (obj)

      end subroutine headswap_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine headswap_wrap_wrapup (fpoint)      
      use headswap_wrap_module
      implicit none
      type(headswap_wrap_struct),intent(inout) :: fpoint
      type(headswap_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headswap_wrapup (obj)

      end subroutine headswap_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine headswap_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use headswap_wrap_module
      implicit none
      type(headswap_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(headswap_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call headswap (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine headswap_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine headswap_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use headswap_wrap_module
      implicit none
      type(headswap_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(headswap_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call headswap (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine headswap_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
