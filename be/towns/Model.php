<?php
use \ITTI\DBForms\DBModel;


class townsModel extends DBModel {

	function __construct(){
		parent::__construct('towns', $this->getCustomFieldsDefinitions());
	}

	function getCustomFieldsDefinitions(){

		$Fields = array (
	'*.name' => array (
		'title' => 'Name',
		'type' => 'char',
	),
	'ord' => array (
		'title' => 'Подредба',
		'type' => 'order',
	),
);

		return $Fields;
	}
}

