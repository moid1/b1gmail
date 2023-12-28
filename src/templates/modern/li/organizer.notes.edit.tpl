<div id="contentHeader">
	<div class="left">
		<i class="fa fa-sticky-note-o" aria-hidden="true"></i>
		{if isset($note)}{lng p="editnote"}{else}{lng p="addnote"}{/if}
	</div>
</div>

<div class="scrollContainer"><div class="pad">
	<form name="f1" method="post" action="organizer.notes.php?action={if isset($note)}saveNote&id={$note.id}{else}createNote{/if}&sid={$sid}" onsubmit="return(checkNoteForm(this));">
		<table class="listTable">
			<tr>
				<th class="listTableHead" colspan="2"> {if isset($note)}{lng p="editnote"}{else}{lng p="addnote"}{/if}</th>
			</tr>
			<tr>
				<td class="listTableLeft"><label for="priority">{lng p="priority"}:</label></td>
				<td class="listTableRight"><select name="priority" id="priority">
					<option value="1"{if isset($note.priority) && $note.priority==1} selected="selected"{/if}>{lng p="prio_1"}</option>
					<option value="0"{if empty($note.id) || empty($note.priority)} selected="selected"{/if}>{lng p="prio_0"}</option>
					<option value="-1"{if isset($note.priority) && $note.priority==-1} selected="selected"{/if}>{lng p="prio_-1"}</option>
				</select></td>
			</tr>
			<tr>
				<td class="listTableLeft">* <label for="text">{lng p="text"}:</label></td>
				<td class="listTableRight">
					<textarea class="textInput" name="text" id="text" style="height:250px;">{if isset($note.text)}{text value=$note.text allowEmpty=true}{/if}</textarea>
				</td>
			</tr>
			<tr>
				<td class="listTableLeft">&nbsp;</td>
				<td class="listTableRight">
					<input type="submit" class="primary" value="{lng p="ok"}" />
					<input type="reset" value="{lng p="reset"}" />
				</td>
			</tr>
		</table>
	</form>
</div></div> 
