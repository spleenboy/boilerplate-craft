<?php

// Path to your craft/ folder
$craftPath = '../craft';

// Move plugins path to right above web root
define('CRAFT_PLUGINS_PATH', realpath(dirname(__FILE__) . "/../plugins").'/');

// Move templates path to right above web root
define('CRAFT_TEMPLATES_PATH', realpath(dirname(__FILE__) . "/../templates").'/');

// Define location of craft config dir
define('CRAFT_CONFIG_PATH', realpath(dirname(__FILE__) . "/../config").'/');

// Define location of craft translations dir
define('CRAFT_TRANSLATIONS_PATH', realpath(dirname(__FILE__) . "/../translations").'/');

// Do not edit below this line
$path = rtrim($craftPath, '/').'/app/index.php';

if (!is_file($path))
{
	if (function_exists('http_response_code'))
	{
		http_response_code(503);
	}

	exit('Could not find your craft/ folder. Please ensure that <strong><code>$craftPath</code></strong> is set correctly in '.__FILE__);
}

require_once $path;
