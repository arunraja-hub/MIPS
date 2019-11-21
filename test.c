  #include <stdio.h>
  
  
  int lower(a)
  {
    //int a = b;
    char c;

    if ((a >= 65) && (a <= 90))
    {
      a = a + 32;
       c = (char)a;
    }
    return c;
    printf("%s",c) ;
  }


void main()
{
    lower('A');
}
