#include <stdio.h>
#include <stdlib.h>

/*
  This program will print its own source when run.
*/

#define PRINT(f) fprintf(f,S,10,34,S)
#define S "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c/*%1$c  This program will print its own source when run.%1$c*/%1$c%1$c#define PRINT(f) fprintf(f,S,10,34,S)%1$c#define S %2$c%3$s%2$c%1$c#define FT(x) int main(){FILE *f= fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c);if (!f){return(0);}PRINT(f);fclose(f);return(0);}%1$cFT(x)%1$c"
#define FT(x) int main(){FILE *f= fopen("Grace_kid.c", "w");if (!f){return(0);}PRINT(f);fclose(f);return(0);}
FT(x)
