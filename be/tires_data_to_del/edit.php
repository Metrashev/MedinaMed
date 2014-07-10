<?php

require_once(__DIR__.'/Model.php');
$Model = new tires_dataModel();

\ITTI\DBForms\DBForms::renderStandartEdit($Model, __DIR__);