#include <stdio.h>

int main(int argc, char* argv[]) {

  float a = 1.0 + ((float) (1 << 22));
  float b = 1.0 + ((float) (1 << 23));
  float c = 1.0 + ((float) (1 << 24));

  printf("a = %f\n" , a);
  printf("b = %f\n", b);
  printf("c = %f\n", c);
   return 0;
}
