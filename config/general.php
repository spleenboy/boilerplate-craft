<?php

$localFile = __DIR__ . "/local/" . basename(__FILE__);
if (__FILE__ !== $localFile && file_exists($localFile)) {
	return require($localFile);
}

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return [
    '*' => [
        'autoLoginAfterAccountActivation' => true,
        'csrfTokenName' => 'csrf',
        'devMode' => false,
        'enableCsrfProtection' => true,
        'environmentVariables' => [
            'baseUrl' => '',
            'basePath' => '',
        ],
        'omitScriptNameInUrls' => true,
        'useEmailAsUsername' => true,
    ],

    'vagrant.local' => [
        'devMode' => true,
        'backupDbOnUpdate' => false,
        'restoreDbOnUpdateFailure' => false,
        'environmentVariables' => [
            'baseUrl' => 'http://localhost:8080',
            'basePath' => '/vagrant/public',
        ],
    ]
];
