#include <stdio.h>
#define YOLO
#define SWAG
#define FT(x)int main(){FILE *f=fopen(x, "w");char *c="#include <stdio.h>%c#define YOLO%c#define SWAG%c#define FT(x)int main(){FILE *f=fopen(x, %cw%c);char *c=%c%s%c;fprintf(f, c, 10, 10, 10, 34, 34, 34, c, 34, 10, 10, 9, 10, 10, 34, 34);fclose(f);}%c/*%c%cThis program will print its own source when run.%c*/%cFT(%c./Grace_kid.c%c)";fprintf(f, c, 10, 10, 10, 34, 34, 34, c, 34, 10, 10, 9, 10, 10, 34, 34);fclose(f);}
/*
	This program will print its own source when run.
*/
FT("./Grace_kid.c")