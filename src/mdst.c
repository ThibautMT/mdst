#include "mdst.h"

static void m_assert(const int cond, const char *msg)
{
  if(!cond)
  {
    fprintf(stderr, "error : `%s`.\n", msg);
    exit(EXIT_FAILURE);
  }
}

static void success_msg()
{
  fprintf(stdout, "success : test `%s`.\n", test_name);
}
