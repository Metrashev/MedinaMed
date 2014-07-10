<?php

require_once(__DIR__.'/Model.php');
$Model = new servicesModel();

\ITTI\DBForms\DBForms::renderStandartList($Model, __DIR__);