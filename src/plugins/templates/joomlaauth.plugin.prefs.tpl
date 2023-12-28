<fieldset>
	<legend>{lng p="prefs"}</legend>
	
	<form action="{$pageURL}&sid={$sid}&do=save" method="post" onsubmit="spin(this)">
	<table>
		<tr>
			<td align="left" rowspan="7" valign="top" width="40"><img src="../plugins/templates/images/joomla32.png" border="0" alt="" width="32" height="32" /></td>
			<td class="td1" width="160">{lng p="enable"}?</td>
			<td class="td2"><input name="enableAuth"{if $joomla_prefs.enableAuth} checked="checked"{/if} type="checkbox" /></td>
		</tr>
		<tr>
			<td class="td1">MySQL {lng p="host"}:</td>
			<td class="td2"><input type="text" name="mysqlHost" value="{if isset($joomla_prefs.mysqlHost)}{text value=$joomla_prefs.mysqlHost}{/if}" size="36" /></td>
		</tr>
		<tr>
			<td class="td1">MySQL {lng p="user"}:</td>
			<td class="td2"><input type="text" name="mysqlUser" value="{if isset($joomla_prefs.mysqlUser)}{text value=$joomla_prefs.mysqlUser}{/if}" size="36" /></td>
		</tr>
		<tr>
			<td class="td1">MySQL {lng p="password"}:</td>
			<td class="td2"><input type="password" name="mysqlPass" value="{if isset($joomla_prefs.mysqlPass)}{text value=$joomla_prefs.mysqlPass}{/if}" size="36" /></td>
		</tr>
		<tr>
			<td class="td1">MySQL {lng p="db"}:</td>
			<td class="td2"><input type="text" name="mysqlDB" value="{if isset($joomla_prefs.mysqlDB)}{text value=$joomla_prefs.mysqlDB}{/if}" size="36" /></td>
		</tr>
		<tr>
			<td class="td1">MySQL Prefix:</td>
			<td class="td2"><input type="text" name="mysqlPrefix" value="{if isset($joomla_prefs.mysqlPrefix)}{text value=$joomla_prefs.mysqlPrefix allowEmpty=true}{/if}" size="36" /></td>
		</tr>
		<tr>
			<td class="td1">{lng p="user"}-{lng p="domain"}:</td>
			<td class="td2"><select name="userDomain">
			{foreach from=$domains item=domain}
				<option value="{$domain}"{if $joomla_prefs.userDomain==$domain} selected="selected"{/if}>{$domain}</option>
			{/foreach}
			</select></td>
		</tr>
	</table>
	<p>
		<div style="float:right;">
			<input class="button" type="submit" value=" {lng p="save"} " />
		</div>
	</p>
	</form>
</fieldset>