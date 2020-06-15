<?php
return array(
    'modules' => array(
        // 'ZfSnapEventDebugger',
        'BjyProfiler',
        'ZfcBase',
        'ZfcUser',
        'BjyAuthorize',
        'ZfcAdmin',
        'Jobeet',
        'Front',
        'Admin',
        'ZendDeveloperTools',
    ),
    'module_listener_options' => array(
        'config_glob_paths' => array(
            'config/autoload/{,*.}{global,local}.php'
        ),
        'module_paths' => array(
            './module',
            './vendor'
        )
    )
);
