<?php /* @var $this \ITTI\FP\SearchForm */ ?>

<table class="ittiSearchTable">
<tr>
<td><label for="town_id"></label></td>
<td><input name="town_id" /></td>
</tr>

<tr>
<td><label for="keywords">Ключови думи</label></td>
<td><input name="keywords" style="width:500px;" itti:field="lng_en.name,lng_bg.name,lng_en.contact_person,lng_bg.contact_person,lng_en.address,lng_bg.address" itti:op="kw" title="Keywords" itti:desc="Име, Лице за контакти или Адрес съдържат {#value#} кл.думи" /></td>
</tr>
<tr>
<td></td>
<td>
	<button name="do[search]" class="doSearch">Search</button>
	<button name="do[clear]" class="doClear">Clear</button>
</td>
</tr>
</table>
