<?php
if($_SERVER['REQUEST_METHOD']!='POST') return;

require_once(dirname(__FILE__).'/../lib/lib.php');
require_once(dirname(__FILE__).'/../templates/fe_lib_custom.php');

$db = getdb();
$search = $_POST;

$WHERE = getWhereFromSearchParams($search);

$opts = array();
foreach(array('width', 'height', 'inc', 'speed_index') as $k) {
	if(isset($search['changed']) && $search['changed']==$k ) continue;

	$order_field = $k=='speed_index' ? $k : "{$k} + 0";

	$tmpWHERE = $WHERE;
	unset($tmpWHERE[$k]);

	$opt = getTyreFieldValuesFromShop($k, $tmpWHERE, $order_field);

	$opts[$k] = \ITTI\ITTIHelper::RenderSelectOptions(isset($search[$k])?$search[$k]:'', array_combine($opt, $opt));
}


echo json_encode($opts);
?>