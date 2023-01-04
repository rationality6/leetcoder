#include <stdio.h>

int add(int a, int b)
{
  a = 5;
  b = 6;

  return a + b;
}

int main(void)
{
  int foo = 9;
  printf("Hello World! %i \n", foo);

  char bar[] = "world";
  printf("Hello %s \n", bar);

  int result = add(3, 5);
  printf("%i", result);

  return 0;
}
