<?php

require_once(__DIR__.'/Model.php');
$Model = new servicesModel();

\ITTI\DBForms\DBForms::renderStandartEdit($Model, __DIR__);