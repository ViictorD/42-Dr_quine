<?php
define("42", "42");
define("status", "blackhat");
define("github", "cheater");
/*
    This program will print its own source when run.
*/
$handle = fopen("Grace_kid.php", "w");
$str = '<?php%cdefine("42", "42");%cdefine("status", "blackhat");%cdefine("github", "cheater");%c/*%c    This program will print its own source when run.%c*/%c$handle = fopen("Grace_kid.php", "w");%c$str = %c%s%c;%cfprintf($handle, $str, 10, 10, 10, 10, 10, 10, 10, 10, 39, $str, 39, 10, 10, 10, 10, 10);%cfclose($handle);%c?>%c';
fprintf($handle, $str, 10, 10, 10, 10, 10, 10, 10, 10, 39, $str, 39, 10, 10, 10, 10, 10);
fclose($handle);
?>
