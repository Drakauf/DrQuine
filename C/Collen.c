#include <stdio.h>

/*
  This program will print its own source when run.
*/

void print(char *s)
{
    printf(s,10,34,s);
}

int main()
{
    /*
      Oui
    */
    char *s ="#include <stdio.h>%1$c%1$c/*%1$c  This program will print its own source when run.%1$c*/%1$c%1$cvoid print(char *s)%1$c{%1$c    printf(s,10,34,s);%1$c}%1$c%1$cint main()%1$c{%1$c    /*%1$c      Oui%1$c    */%1$c    char *s =%2$c%3$s%2$c;%1$c    print(s);%1$c    return(0);%1$c}%1$c";
    print(s);
    return(0);
}
