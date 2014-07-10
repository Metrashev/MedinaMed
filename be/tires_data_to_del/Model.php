<?php
use \ITTI\DBForms\DBModel;


class tires_dataModel extends DBModel {

	function __construct(){
		parent::__construct('tires_data', $this->getCustomFieldsDefinitions());
	}

	function getCustomFieldsDefinitions(){

		$Fields = array (
	'season_type' => array (
		'title' => 'Season Type',
		'type' => 'integer',
	),
	'application_type' => array (
		'title' => 'Application Type',
		'type' => 'integer',
	),
	'brand' => array (
		'title' => 'Brand',
		'type' => 'char',
	),
	'ean_code' => array (
		'title' => 'Ean Code',
		'type' => 'char',
	),
	'size' => array (
		'title' => 'Size',
		'type' => 'char',
	),
	'width' => array (
		'title' => 'Width',
		'type' => 'char',
	),
	'height' => array (
		'title' => 'Height',
		'type' => 'char',
	),
	'inc' => array (
		'title' => 'Inc',
		'type' => 'char',
	),
	'load_index' => array (
		'title' => 'Load Index',
		'type' => 'char',
	),
	'speed_index' => array (
		'title' => 'Speed Index',
		'type' => 'char',
	),
	'is_runflat' => array (
		'title' => 'Is Runflat',
		'type' => 'boolean',
	),
	'is_reinforced' => array (
		'title' => 'Is Reinforced',
		'type' => 'boolean',
	),
	'type_of_car' => array (
		'title' => 'Type Of Car',
		'type' => 'char',
	),
	'profile' => array (
		'title' => 'Profile',
		'type' => 'managedfiles',
	),
	'special_mark' => array (
		'title' => 'Special Mark',
		'type' => 'char',
	),
	'full_name' => array (
		'title' => 'Full Name',
		'type' => 'char',
	),
	'weight' => array (
		'title' => 'Weight',
		'type' => 'decimal',
	),
	'fuel_eff' => array (
		'title' => 'Fuel Eff',
		'type' => 'char',
	),
	'wet_grip' => array (
		'title' => 'Wet Grip',
		'type' => 'char',
	),
	'noise_value' => array (
		'title' => 'Noise Value',
		'type' => 'integer',
	),
	'noise_grade' => array (
		'title' => 'Noise Grade',
		'type' => 'integer',
	),
	'photo' => array (
		'title' => 'Photo',
		'type' => 'char',
	),
	'total_qty' => array (
		'title' => 'Total Qty',
		'type' => 'integer',
	),
);

		return $Fields;
	}
}

