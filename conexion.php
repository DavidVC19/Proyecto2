<?php

function conexion(){

$host = "host=dpg-cvmpjc1r0fns73akeia0-a.oregon-postgres.render.com";
$port = "port=5432";
$dbname = "dbname=test_p7lm";
$user = "user=dvilchez";
$password = "password=2D03e3lfpPboCC2DuRKufzdVnI8E9CU7";

$db = pg_connect("$host $port $dbname $user $password");

return $db;
}
?>
