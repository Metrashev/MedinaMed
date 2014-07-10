<?php /* @var $this \ITTI\FP\EditForm */ ?>


<table class="BEEditTable">

<tr>
	<td><label for="ord"></label></td>
	<td><input name="ord" /></td>
</tr>

<tr>
	<td><label for="town_id"></label></td>
	<td><input name="town_id" /></td>
</tr>

<tr itti:rep="lng" class="lng_{$k}">
	<td><label for="lng_{$k}.name"></label></td>
	<td><input name="lng_{$k}.name" /></td>
</tr>

<tr itti:rep="lng" class="lng_{$k}">
	<td><label for="lng_{$k}.address"></label></td>
	<td><input name="lng_{$k}.address" /></td>
</tr>

<tr>
	<td><label for="phone"></label></td>
	<td><input name="phone" /></td>
</tr>

<tr>
	<td><label for="gsm"></label></td>
	<td><input name="gsm" /></td>
</tr>

<tr>
	<td><label for="fax"></label></td>
	<td><input name="fax" /></td>
</tr>

<tr>
	<td><label for="email"></label></td>
	<td><input name="email" /></td>
</tr>

<tr>
	<td colspan="2" style="padding:0; text-align:left;">
		<b style="padding-left:50px;">Работно време</b>
		<table cellspacing="1" cellpadding="1" border="0" style="width:100%;">
			<tr>
				<td><label for="mf_from">От понеделник</label></td>
				<td><input id="mf_from" name="work_time_php[mf_from]" /></td>
				<td style="text-align:center;"><label for="mf_to">до петък</label></td>
				<td><input id="mf_to" name="work_time_php[mf_to]" /></td>
				<td style="text-align:right;"><label>Почивен ден <checkbox name="work_time_php[mf_not_work]" value="1" /></label></td>
			</tr>
			<tr>
				<td><label for="sat_from">Събота от</label></td>
				<td><input id="sat_from" name="work_time_php[sat_from]" /></td>
				<td style="text-align:center;"><label for="sat_to">до</label></td>
				<td><input id="sat_to" name="work_time_php[sat_to]" /></td>
				<td style="text-align:right;"><label>Почивен ден <checkbox name="work_time_php[sat_not_work]" value="1" /></label></td>
			</tr>
			<tr>
				<td><label for="sun_from">Неделя от</label></td>
				<td><input id="sun_from" name="work_time_php[sun_from]" /></td>
				<td style="text-align:center;"><label for="sun_to">до</label></td>
				<td><input id="sun_to" name="work_time_php[sun_to]" /></td>
				<td style="text-align:right;"><label>Почивен ден <checkbox name="work_time_php[sun_not_work]" value="1" /></label></td>
			</tr>
		</table>
	</td>
</tr>

<tr itti:rep="lng" class="lng_{$k}">
	<td><label for="lng_{$k}.services"></label></td>
	<td><input name="lng_{$k}.services" itti:html="false" /></td>
</tr>

<tr itti:rep="lng" class="lng_{$k}">
	<td><label for="lng_{$k}.contact_person"></label></td>
	<td><input name="lng_{$k}.contact_person" /></td>
</tr>

<tr>
	<td><label for="gallery_imgs"></label></td>
	<td><input name="gallery_imgs" /></td>
</tr>

<tr>
	<td colspan="2" style="padding-top:10px;text-align:left;">
		<div style="padding:2px;">
			<label for="gps_x">Latitude <input id="gps_x" name="gps_x" style="width:150px;" /></label>
			<label for="gps_y">Longitude <input id="gps_y" name="gps_y" style="width:150px;"/></label>
			<label for="gps_z">Zoom <input id="gps_z" name="gps_z" style="width:150px;"/></label>
		</div>
		<div id="gmap_canvas" class="" style="width:898px; height:400px; border:2px solid #FFCC00; margin:5px 0 20px;">
			<?php
			$Prefix = $this->getIDPrefix();
			\ITTI\FW::$HTMLPage->AddJSFile('http://maps.googleapis.com/maps/api/js?sensor=false&language=bg');
			\ITTI\FW::$HTMLPage->AddJSFile('/js/gmap_be.js');
			echo <<<EOD
			<script type="text/javascript">renderGMAP_Be("{$Prefix}gmap_canvas", "{$Prefix}gps_x", "{$Prefix}gps_y", "{$Prefix}gps_z");</script>
EOD;
			?>
		</div>
	</td>
</tr>
</table>
