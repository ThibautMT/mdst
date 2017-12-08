#ifndef __mdst_h__
#define __mdst_h__
  
  #include <stdio.h>
  #include <stdlib.h>
  
  #ifndef test_name
    #define test_name "undefined_test_name"
  #endif
  
  static void m_assert(const int, const char *);
  static void m_success_msg();
  
#endif
