//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisRes.hh"

//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//
//------------------ fortran spelling adjustments --------------------//

#if NEED_UNDERSCORE
#define res_wrap_create             res_wrap_create_
#define res_wrap_delete             res_wrap_delete_
#define res_wrap_update             res_wrap_update_
#define res_wrap_wrapup             res_wrap_wrapup_
#define res_wrap_oneset             res_wrap_oneset_
#define res_wrap_twosets            res_wrap_twosets_
#elif NEED_CAPITALS
#define res_wrap_create             RES_WRAP_CREATE
#define res_wrap_delete             RES_WRAP_DELETE
#define res_wrap_update             RES_WRAP_UPDATE
#define res_wrap_wrapup             RES_WRAP_WRAPUP
#define res_wrap_oneset             RES_WRAP_ONESET
#define res_wrap_twosets            RES_WRAP_TWOSETS
#endif

//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//
//----------------------- fortran prototypes -------------------------//

extern "C"
    {
    CpseisBase::ModuleCreate   res_wrap_create;
    CpseisBase::ModuleDestroy  res_wrap_delete;
    CpseisBase::ModuleUpdate   res_wrap_update;
    CpseisBase::ModuleWrapup   res_wrap_wrapup;
    CpseisBase::ModuleOneset   res_wrap_oneset;
    CpseisBase::ModuleTwosets  res_wrap_twosets;
    }

//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//
//------------------------ constructor -------------------------------//

CpseisRes::CpseisRes() : CpseisBase ("RES",
                                       res_wrap_create,
                                       res_wrap_delete,
                                       res_wrap_update,
                                       res_wrap_wrapup,
                                       res_wrap_oneset,
                                       res_wrap_twosets) {}

//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//
//------------------------------ end ---------------------------------//