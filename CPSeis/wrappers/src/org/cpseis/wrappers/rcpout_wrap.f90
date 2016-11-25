!!------------------------ rcpout_wrap.f90 --------------------------!!
!!------------------------ rcpout_wrap.f90 --------------------------!!
!!------------------------ rcpout_wrap.f90 --------------------------!!

!!!!!!!!!! DO NOT EDIT THIS FILE - it is machine generated !!!!!!!!!!

!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!
!!------------------------------ module -----------------------------------!!

      module rcpout_wrap_module
      use rcpout_module
      implicit none
      public

      type :: rcpout_wrap_struct
        type(rcpout_struct),pointer :: obj
      end type rcpout_wrap_struct

      end module rcpout_wrap_module

!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!
!!---------------------------- create ------------------------------------!!

      subroutine rcpout_wrap_create (fpoint)  
      use rcpout_wrap_module
      implicit none
      type(rcpout_wrap_struct),intent(out)   :: fpoint
      type(rcpout_struct)     ,pointer       :: obj           ! local

      nullify (obj)               ! needed for intel compiler.
      call rcpout_create (obj)
      fpoint%obj => obj

      end subroutine rcpout_wrap_create

!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!
!!---------------------------- delete ------------------------------------!!

      subroutine rcpout_wrap_delete (fpoint)   
      use rcpout_wrap_module
      implicit none
      type(rcpout_wrap_struct),intent(inout) :: fpoint
      type(rcpout_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rcpout_delete (obj)
      fpoint%obj => obj

      end subroutine rcpout_wrap_delete

!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!
!!---------------------------- update ------------------------------------!!

      subroutine rcpout_wrap_update (fpoint)     
      use rcpout_wrap_module
      implicit none
      type(rcpout_wrap_struct),intent(inout) :: fpoint
      type(rcpout_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rcpout_update (obj)

      end subroutine rcpout_wrap_update

!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!
!!---------------------------- wrapup ------------------------------------!!

      subroutine rcpout_wrap_wrapup (fpoint)      
      use rcpout_wrap_module
      implicit none
      type(rcpout_wrap_struct),intent(inout) :: fpoint
      type(rcpout_struct)     ,pointer       :: obj           ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
      call rcpout_wrapup (obj)

      end subroutine rcpout_wrap_wrapup

!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!
!!---------------------------- oneset ------------------------------------!!

      subroutine rcpout_wrap_oneset (fpoint,ntr,  &
                                   hd,tr,lenhd,lentr,num)
      use rcpout_wrap_module
      implicit none
      type(rcpout_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd,lentr,num  ! argument
      integer               ,intent(inout) :: ntr              ! argument
      double precision      ,intent(inout) :: hd(lenhd,num)    ! argument
      real                  ,intent(inout) :: tr(lentr,num)    ! argument
      type(rcpout_struct)     ,pointer       :: obj              ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call rcpout (obj,ntr,hd,tr)                ! might be commented out.

      end subroutine rcpout_wrap_oneset

!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!
!!---------------------------- twosets ------------------------------------!!

      subroutine rcpout_wrap_twosets (fpoint,ntr,                 &
                                    hd1,tr1,lenhd1,lentr1,num1, &
                                    hd2,tr2,lenhd2,lentr2,num2)
      use rcpout_wrap_module
      implicit none
      type(rcpout_wrap_struct),intent(inout) :: fpoint
      integer               ,intent(in)    :: lenhd1,lentr1,num1 ! argument
      integer               ,intent(in)    :: lenhd2,lentr2,num2 ! argument
      integer               ,intent(inout) :: ntr                ! argument
      double precision      ,intent(inout) :: hd1(lenhd1,num1)   ! argument
      real                  ,intent(inout) :: tr1(lentr1,num1)   ! argument
      double precision      ,intent(inout) :: hd2(lenhd2,num2)   ! argument
      real                  ,intent(inout) :: tr2(lentr2,num2)   ! argument
      type(rcpout_struct)     ,pointer       :: obj                ! local

      obj => fpoint%obj
      if (.not. associated(obj)) return
!!!!  call rcpout (obj,ntr,hd1,tr1,hd2,tr2)      ! might be commented out.

      end subroutine rcpout_wrap_twosets

!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!
!!----------------------------- end ---------------------------------------!!