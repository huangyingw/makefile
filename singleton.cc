#include "stdio.h"
#include "singleton.h"
#include <memory>
int main() {
  printf("hello\n");
  Singleton* singleton= Singleton::Instance();
  return 0;
}

