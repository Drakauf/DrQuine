#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i = 3;
    char *filsName;
    char *gccExec;
    char *cmdExec;

    asprintf(&filsName, "Sully_%d.c", i-1);
    if(i <=0)
    return(0);
FILE *f= fopen(filsName, "w");
    char *s="#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$cint main()%1$c{%1$c    int i = %4$d;%1$c    char *filsName;%1$c    char *gccExec;%1$c    char *cmdExec;%1$c%1$c    asprintf(&filsName, %2$cSully_%%d.c%2$c, i-1);%1$c    if(i <=0)%1$c    return(0);%1$cFILE *f= fopen(filsName, %2$cw%2$c);%1$c    char *s=%2$c%3s%2$c;%1$c    fprintf(f,s,10,34,s,i-1);%1$c    fclose(f);%1$casprintf(&gccExec, %2$cgcc -Wall -Wextra -Werror %%s -o Sully_%%d%2$c, filsName ,i-1);%1$c    asprintf(&cmdExec, %2$c./Sully_%%d%2$c, i-1);%1$c    if (i >= 0)%1$c    {%1$c    system(gccExec);%1$c    system(cmdExec);%1$c    }%1$c    return(0);%1$c}%1$c";
    fprintf(f,s,10,34,s,i-1);
    fclose(f);
asprintf(&gccExec, "gcc -Wall -Wextra -Werror %s -o Sully_%d", filsName ,i-1);
    asprintf(&cmdExec, "./Sully_%d", i-1);
    if (i >= 0)
    {
    system(gccExec);
    system(cmdExec);
    }
    return(0);
}
