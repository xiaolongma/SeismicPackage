//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisTredit.hh"
#include <jni.h>

extern "C"
{
  JNIEXPORT jlong JNICALL Java_org_cpseis_wrappers_CpseisTredit_nativeCreate
    (JNIEnv *env, jobject obj)
  {
    CpseisTredit *module = new CpseisTredit();
    return (jlong)module;
  }
}