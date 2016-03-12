<?php
$configPath = realpath(dirname(__FILE__) . "/../config/local/db.php");
$settings = require $configPath;
echo "-u{$settings['user']} -p{$settings['password']} -h{$settings['server']} {$settings['database']}"; 
