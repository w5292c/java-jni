#include "HelloJNI.h"

#include <stdio.h>

JNIEXPORT void JNICALL Java_HelloJNI_sayHello(JNIEnv *env, jobject thisObj)
{
  (void)env;
  (void)thisObj;
  printf("Hello World!\n");
}
