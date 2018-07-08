#include <stdio.h>
#include <stdlib.h>
int main(){
int i=5;
if(i>0){char buff[1024];sprintf(buff, "Sully_%d.c", i - 1);FILE *f=fopen(buff, "w");char *c="#include <stdio.h>%c#include <stdlib.h>%cint main(){%cint i=%d;%cif(i>0){char buff[1024];sprintf(buff, %cSully_%%d.c%c, i - 1);FILE *f=fopen(buff, %cw%c);char *c=%c%s%c;fprintf(f, c, 10, 10, 10, i - 1, 10, 34, 34, 34, 34, 34, c, 34, 34, 34);fclose(f);sprintf(buff, %cclang -Wall -Wextra -Werror ./Sully_%%d.c -o Sully_%%d;./Sully_%%d%c, i - 1, i - 1, i - 1);system(buff);}}";fprintf(f, c, 10, 10, 10, i - 1, 10, 34, 34, 34, 34, 34, c, 34, 34, 34);fclose(f);sprintf(buff, "clang -Wall -Wextra -Werror ./Sully_%d.c -o Sully_%d;./Sully_%d", i - 1, i - 1, i - 1);system(buff);}}