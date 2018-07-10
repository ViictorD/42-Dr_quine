<?php
/*
    This program will print its own source when run.
*/
function main(){
/*
    This program will print its own source when run.
*/
$str = '<?php%c/*%c    This program will print its own source when run.%c*/%cfunction main(){%c/*%c    This program will print its own source when run.%c*/%c%cstr = %c%s%c;%cprintf($str, 10, 10, 10, 10, 10, 10, 10, 10, 36, 39, $str, 39, 10, 10, 10, 10, 10, 10);%c}%cfunction hey(){}%cmain();%c?>%c';
printf($str, 10, 10, 10, 10, 10, 10, 10, 10, 36, 39, $str, 39, 10, 10, 10, 10, 10, 10);
}
function hey(){}
main();
?>
