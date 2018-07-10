<?php
/*
 42
*/
function main(){
/*
 666
*/
$str = '<?php%c/*%c 42%c*/%cfunction main(){%c/*%c 666%c*/%c%cstr = %c%s%c;%cprintf($str, 10, 10, 10, 10, 10, 10, 10, 10, 36, 39, $str, 39, 10, 10, 10, 10, 10, 10);%c}%cfunction hey(){}%cmain();%c?>%c';
printf($str, 10, 10, 10, 10, 10, 10, 10, 10, 36, 39, $str, 39, 10, 10, 10, 10, 10, 10);
}
function hey(){}
main();
?>
