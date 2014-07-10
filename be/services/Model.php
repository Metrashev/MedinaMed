<?php
use \ITTI\DBForms\DBModel;


class servicesModel extends DBModel {

	function __construct(){
		parent::__construct('services', $this->getCustomFieldsDefinitions());
	}

	function getCustomFieldsDefinitions(){

		$Fields = array (
	'town_id' => array (
		'title' => 'Град',
		'type' => 'enum',
		'options' => getdb()->getAssoc("SELECT t.id, tl.name FROM towns AS t LEFT JOIN towns_lng AS tl ON t.id=tl.mid WHERE lng='bg'"),
	),
	'work_time_php' => array (
		'title' => 'Работно време',
		'type' => 'serialized',
	),
	'gps_x' => array (
		'title' => 'Gps X',
		'type' => 'float',
	),
	'gps_y' => array (
		'title' => 'Gps Y',
		'type' => 'float',
	),
	'gps_z' => array (
		'title' => 'Gps Z',
		'type' => 'integer',
	),
	'phone' => array (
		'title' => 'Телефон',
		'type' => 'char',
	),
	'gsm' => array (
		'title' => 'Мобилен',
		'type' => 'char',
	),
	'fax' => array (
		'title' => 'Факс',
		'type' => 'char',
	),
	'email' => array (
		'title' => 'Email',
		'type' => 'email',
	),
	'gallery_imgs' => array (
		'title' => 'Галерия',
		'type' => 'managedfiles',
		'multiple' => true,
		'image' => true,
		'edit' => array (
			'sizes'=>array(array('width'=>220, 'height'=>165, 'crop'=>true), 'l'=>array('width'=>1024, 'height'=>1024)),
			'UIResize' => false,
		),
	),
	'ord' => array (
		'title' => 'Подредба',
		'type' => 'order',
	),
	'*.name' => array (
		'title' => 'Име',
		'type' => 'char',
	),
	'*.address' => array (
		'title' => 'Адрес',
		'type' => 'text',
	),
	'*.contact_person' => array (
		'title' => 'Лице за контакти',
		'type' => 'text',
	),
	'*.services' => array (
		'title' => 'Извършвани услуги',
		'type' => 'text',
			'html'=>true,
	),
);

		return $Fields;
	}
}

