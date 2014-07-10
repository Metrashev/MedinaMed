<?php /* @var $this \ITTI\FP\SearchForm */ ?>

<table class="ittiSearchTable">
<tr>
<td><label for="season_type_from">Season Type between</label></td>
<td><input name="season_type_from" itti:model="season_type" itti:op="ge" /> and <input name="season_type_to" itti:model="season_type" itti:op="le" /></td>
</tr>

<tr>
<td><label for="application_type_from">Application Type between</label></td>
<td><input name="application_type_from" itti:model="application_type" itti:op="ge" /> and <input name="application_type_to" itti:model="application_type" itti:op="le" /></td>
</tr>

<tr>
<td><label for="brand"></label></td>
<td><input name="brand" /></td>
</tr>

<tr>
<td><label for="ean_code"></label></td>
<td><input name="ean_code" /></td>
</tr>

<tr>
<td><label for="size"></label></td>
<td><input name="size" /></td>
</tr>

<tr>
<td><label for="width"></label></td>
<td><input name="width" /></td>
</tr>

<tr>
<td><label for="height"></label></td>
<td><input name="height" /></td>
</tr>

<tr>
<td><label for="inc"></label></td>
<td><input name="inc" /></td>
</tr>

<tr>
<td><label for="load_index"></label></td>
<td><input name="load_index" /></td>
</tr>

<tr>
<td><label for="speed_index"></label></td>
<td><input name="speed_index" /></td>
</tr>

<tr>
<td><label for="is_runflat"></label></td>
<td><input name="is_runflat" /></td>
</tr>

<tr>
<td><label for="is_reinforced"></label></td>
<td><input name="is_reinforced" /></td>
</tr>

<tr>
<td><label for="type_of_car"></label></td>
<td><input name="type_of_car" /></td>
</tr>

<tr>
<td><label for="profile"></label></td>
<td><input name="profile" /></td>
</tr>

<tr>
<td><label for="special_mark"></label></td>
<td><input name="special_mark" /></td>
</tr>

<tr>
<td><label for="full_name"></label></td>
<td><input name="full_name" /></td>
</tr>

<tr>
<td><label for="weight_from">Weight between</label></td>
<td><input name="weight_from" itti:model="weight" itti:op="ge" /> and <input name="weight_to" itti:model="weight" itti:op="le" /></td>
</tr>

<tr>
<td><label for="fuel_eff"></label></td>
<td><input name="fuel_eff" /></td>
</tr>

<tr>
<td><label for="wet_grip"></label></td>
<td><input name="wet_grip" /></td>
</tr>

<tr>
<td><label for="noise_value_from">Noise Value between</label></td>
<td><input name="noise_value_from" itti:model="noise_value" itti:op="ge" /> and <input name="noise_value_to" itti:model="noise_value" itti:op="le" /></td>
</tr>

<tr>
<td><label for="noise_grade_from">Noise Grade between</label></td>
<td><input name="noise_grade_from" itti:model="noise_grade" itti:op="ge" /> and <input name="noise_grade_to" itti:model="noise_grade" itti:op="le" /></td>
</tr>

<tr>
<td><label for="photo"></label></td>
<td><input name="photo" /></td>
</tr>

<tr>
<td><label for="total_qty_from">Total Qty between</label></td>
<td><input name="total_qty_from" itti:model="total_qty" itti:op="ge" /> and <input name="total_qty_to" itti:model="total_qty" itti:op="le" /></td>
</tr>


<tr>
<td></td>
<td>
	<button name="do[search]" class="doSearch">Search</button>
	<button name="do[clear]" class="doClear">Clear</button>
</td>
</tr>
</table>
