<?php
use \ITTI\DBForms\DBModel;


class pagesModel extends DBModel {

	function __construct(){
		parent::__construct('pages', $this->getCustomFieldsDefinitions());
	}



	function getCustomFieldsDefinitions(){

$Fields = array (
		'id'=>array(
				'title'=>'Id',
				'type'=>'int',
		),

		'cid'=>array(
				'title'=>'Page',
				'type'=>'enum',
				'options'=>getCidNom(),
		),
		'*.body' => array (
				'type' => 'text',
				'html' => true,
				'title' => 'Body',
		),
		'images' => array (
				'type' => 'managedfiles',
				'multiple' => true,
				'image' => true,
				'title' => 'Images',
				'edit' => array (
					'useimagesrc'=>true,
				),
		),
		'files' => array (
				'type' => 'managedfiles',
				'multiple' => true,
				'title' => 'Files',
		),
		'gallery' => array (
				'type' => 'managedfiles',
				'multiple' => true,
				'image' => true,
				'title' => 'Gallery',
				'edit' => array (
					'sizes'=>array(array('width'=>1920, 'height'=>1920, 'crop'=>false)),
					'UIResize' => false,
				),
		),


);

		return $Fields;
	}
}

