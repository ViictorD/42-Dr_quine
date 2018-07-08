#include <stdio.h>
/*
	This program will print its own source when run.
*/
void hey(){}
int main(){
/*
	This program will print its own source when run.
*/
char *c="#include <stdio.h>%c/*%c%cThis program will print its own source when run.%c*/%cvoid hey(){}%cint main(){%c/*%c%cThis program will print its own source when run.%c*/%cchar *c=%c%s%c;printf(c, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 10, 34, c, 34);hey();}";printf(c, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 10, 34, c, 34);hey();}