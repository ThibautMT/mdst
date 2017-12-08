# mdst

**mdst** is a static library for testing.

## Installation

To install, run :
```bash
$ make && sudo make install
```

## Use

To use, simply include in your test file:
```C
#include <mdst.h>
```

### Specify test name

To specify a test name, use :
```C
#define test_name "whateveryouwant"
```

By default, test name value is `"undefined_test_name"`

### Compile

Where `main.c` is your source file and `exec` the output executable :
```shell
$ gcc -static main.c -lmdst -o exec
```

## Example

```C
// file.h
int ret_zero();

// file.c
int ret_zero()
{
  return -1; // Failing test.
}

// test_file.c

#include <stdio.h>
#include <stdlib.h>

#define test_name "test_if_eq_zero"
#include <mdst.h>
#include "file.h"

int main(int argc, char *argv[])
{
  m_assert(ret_zero == 0, "error : `" test_name "` failed.");
  return EXIT_SUCCESS;
}
```

```shell
$ gcc -static file.c test_file.c -lmdst -o exec
```