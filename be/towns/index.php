<?php

require_once(__DIR__.'/Model.php');
$Model = new townsModel();

\ITTI\DBForms\DBForms::renderStandartList($Model, __DIR__);