<?php /* @var $this \ITTI\FP\SearchForm */ ?>

<table class="ittiSearchTable">
<tr itti:rep="lng" class="lng_{$k}">
	<td><label for="lng_{$k}.name"></label></td>
	<td><input name="lng_{$k}.name" /></td>
</tr>

<tr>
<td></td>
<td>
	<button name="do[search]" class="doSearch">Search</button>
	<button name="do[clear]" class="doClear">Clear</button>
</td>
</tr>
</table>
