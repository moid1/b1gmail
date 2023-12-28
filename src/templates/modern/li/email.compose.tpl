<form name="f1" method="post" action="email.compose.php?action=sendMail&sid={$sid}" autocomplete="off" onreset="if(!askReset()) return(false);editor.reset();">


<style>

.cke_inner {
	background: none !important;
	
}

#cke_1_top {
	background: none !important;
	border: 0px 1px solid #fff;
	margin: 10px 5px;
}

iframe {
	border-radius: 6px;
	
}

#mainContent {
	border-radius: 6px;
}

.btn {
	box-shadow: none; 
	border-color: inherit !important;
}

input {
	border: 0 !important;
	box-shadow: none; 
	border-color: inherit !important;
}

tr input::-webkit-input-placeholder {
	color: inherit !important;
}

.toolbar:nth-child(4)
	{
	display: none;
	}
#contentFooter {
	padding: 20px;
	background: none !important;
	}

	#contentFooter .smallInput  {
	color: inherit !important;

	}

	#contentFooter select  {
	color: inherit !important;
	background: none !important;
	box-shadow: none !important;
	}
.__olCaption {
	padding-bottom: 30px;
}

</style>

<div id="contentHeader" class="bg-light my-1 border border-0">
	<div class="left">
		<i class="fa fa-envelope-o" aria-hidden="true"></i> {lng p="sendmail"}
	</div>
	
	<div class="right">
		<select name="newTextMode" class="btn btn-sm btn-light dropdown-toggle waves-effect border border-1" id="textMode" onchange="return editor.switchMode(this.value)">
			<option value="text"{if !$mail || $mail.textMode=='text'} selected="selected"{/if}>{lng p="plaintext"}</option>
			<option value="html"{if $mail.textMode=='html'} selected="selected"{/if}>{lng p="htmltext"}</option>
		</select>
		
		&nbsp;
		
		<i class="fa fa-flag"></i> <select name="priority" id="priority" class="btn btn-sm btn-light dropdown-toggle waves-effect border border-1 mx-1">
			<option value="1"{if $mail.priority==1} selected="selected"{/if}>{lng p="prio_1"}</option>
			<option value="0"{if !$mail || $mail.priority==0} selected="selected"{/if}>{lng p="prio_0"}</option>
			<option value="-1"{if $mail.priority==-1} selected="selected"{/if}>{lng p="prio_-1"}</option>
		</select>
	</div>
</div>

<div class="bigForm withBottomBar my-3" style="overflow-y:auto">
	<input type="hidden" name="actionToken" value="{$actionToken}" />
	<input type="hidden" name="do" id="do" value="" />
	<input type="hidden" name="reference" id="reference" value="{$reference}" />
	<input type="hidden" name="baseDraftID" id="baseDraftID" value="{if array_key_exists('isAutoSavedDraft', $mail)}{$mail.baseDraftID}{/if}" />
	
	{if isset($latestDraft)}
	<div class="draftNote" id="draftNote">
		<div>
			{lng p="drafttext"}
			<ul>
				{if $latestDraft.subject}<li><label>{lng p="subject"}:</label> {text value=$latestDraft.subject cut=100}</li>{/if}
				{if $latestDraft.to}<li><label>{lng p="to"}:</label> {text value=$latestDraft.to cut=100}</li>{/if}
			</ul>
			<input type="button" class="primary" value=" {lng p="loaddraft"} " onclick="loadDraft({$latestDraft.id})" />
			<input type="button" value=" {lng p="nothanks"} " onclick="hideDraftNote(true,{$latestDraft.id})" />
			<label for="deleteDraft" style="color:#666;"><input type="checkbox" id="deleteDraft" /> {lng p="deletedraft"}</label>
		</div>
		<br class="clear" />
	</div>
	{/if}

	<div class="my-2 bg-light" id="composeHeader">
		<table class="lightTable">
			<tr>
				<th width="120"></th>
				<td><select name="from" id="from" class="form-control"  style="width:100%;" >
					{foreach from=$possibleSenders key=senderID item=sender}
						<option value="{$senderID}"{if $senderID==$mail.from} selected="selected"{/if}>From: {email value=$sender}</option>
					{/foreach}
					</select></td>
				<td width="140">&nbsp;</td>
			</tr>
			<tr>
				<th></th>
				<td><input type="text" name="to" id="to" class="form-control px-2 mt-2 mb-1" placeholder="To" value="{if isset($mail.to)}{text allowEmpty=true value=$mail.to}{/if}" style="width:100%; box-shadow: none; border-color: inherit !important;" /></td>
				<td>
					<span id="addrDiv_to">
						<button onclick="javascript:openAddressbook('{$sid}','email')" type="button" class="btn m-1">
							<i class="fa fa-users"></i>
							
						</button>
					</span>
				</td>
			</tr>
			<tr>
				<th>
					<a href="javascript:advancedOptions('fields', 'right', 'bottom', '{$tpldir}');composeSizer(true);" >{if empty($mail.replyto) && empty($mail.bcc)}<i class="fa fa-caret-right" id="advanced_fields_arrow" aria-hidden="true"></i>{else}<i class="fa fa-caret-down" id="advanced_fields_arrow" aria-hidden="true"></i>{/if}</a> &nbsp;
					</th>
				<td><input type="text" name="cc" id="cc" class="form-control px-2" placeholder="CC" value="{if isset($mail.cc)}{text allowEmpty=true value=$mail.cc}{/if}" style="width:100%; box-shadow: none; border-color: inherit !important;" /></td>
				<td>&nbsp;</td>
			</tr>
			
			<tbody id="advanced_fields_body" style="display:{if empty($mail.replyto) && empty($mail.bcc)}none{/if};">
			<tr>
				<th></th>
				<td><input type="text" name="bcc" id="bcc" class="form-control px-2" placeholder="BCC" value="{if isset($mail.bcc)}{text allowEmpty=true value=$mail.bcc}{/if}" style="width:100%; box-shadow: none; border-color: inherit !important;" /></td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<th></th>
				<td><input type="text" name="replyto" id="replyto" class="form-control px-2 mt-1" placeholder="ReplyTo" value="{if isset($mail.replyto)}{text allowEmpty=true value=$mail.replyto}{/if}" style="width:100%; box-shadow: none; border-color: inherit !important;" /></td>
				<td>&nbsp;</td>
			</tr>
			</tbody>
			
			<tr>
				<th></th>
				<td><input type="text" name="subject" id="subject" class="form-control px-2 my-1" placeholder="Subject" value="{if isset($mail.subject)}{text allowEmpty=true value=$mail.subject}{/if}" onchange="beginDraftAutoSave()" style="width:100%; box-shadow: none; border-color: inherit !important;" /></td>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<th></th>
				<td>{lng p="attachments"}:
					<input type="hidden" name="attachments"  value="{if isset($mail.attachments)}{text value=$mail.attachments allowEmpty=true}{/if}" id="attachments" />
					<div id="attachmentList" style="background: none !important; border-color: inherit !important; box-shadow: none;"></div>
				</td>
				<td >
					<button onclick="javascript:addAttachment('{$sid}')" type="button" class="btn mt-3 mx-1">
						<i class="fa fa-plus-circle" style=""></i>
						
					</button>
				</td>
			</tr>
			{hook id="email.compose.tpl:beforemailSendOptions"}
			<tr>
				<th>&nbsp;</th>
				<td class="mailSendOptions" colspan="2">
					<div><i class="fa fa-id-card-o mx-1" aria-hidden="true"></i><input type="checkbox" name="attachVCard" class="mx-1" id="attachVCard"{if $mail.attachVCard} checked="checked"{/if} /><label for="attachVCard">{lng p="attachvc"}</label></div>
					
					<div><i class="fa fa-certificate mx-1" aria-hidden="true"></i><input type="checkbox" name="certMail" class="mx-1" id="certMail"{if $mail.certMail} checked="checked"{/if} onchange="EBID('smimeEncrypt').disabled=this.checked;if(this.checked)EBID('smimeEncrypt').checked=false;" /><label for="certMail">{lng p="certmail"}</label></div>
					
					<div><i class="fa fa-bullhorn mx-1" aria-hidden="true"></i><input type="checkbox" name="mailConfirmation" class="mx-1" id="mailConfirmation"{if $mail.mailConfirmation} checked="checked"{/if} /><label for="mailConfirmation">{lng p="mailconfirmation"}</label></div>
					
					{if $smime}
					<div><i class="fa fa-map-signs mx-1" aria-hidden="true"></i><input type="checkbox" name="smimeSign" class="mx-1" id="smimeSign"{if $mail.smimeSign} checked="checked"{/if} /><label for="smimeSign">{lng p="sign"}</label></div>
					
					<div><i class="fa fa-key mx-1" aria-hidden="true"></i><input type="checkbox" name="smimeEncrypt" class="mx-1" id="smimeEncrypt"{if $mail.smimeEncrypt} checked="checked"{/if} onchange="EBID('certMail').disabled=this.checked;if(this.checked)EBID('certMail').checked=false;" /><label for="smimeEncrypt">{lng p="encrypt"}</label></div>
					{/if}
				</td>
			</tr>
			<tr>
				<th></th>
				<td><div id="" >

		<textarea class="composeTextarea{if $lineSep} lineSep{/if}"  name="emailText" id="emailText" class="border-0" style="width:100%;height:100%;{if $useCourier}font-family:courier;{/if}">{text allowEmpty=true value=$mail.text}</textarea>
		{if !$mail || $mail.textMode=='text'}
		<input type="hidden" name="textMode" value="text" />
		{else}
		<input type="hidden" name="textMode" value="html" />
		{/if}
		<script src="./clientlib/wysiwyg.js?{fileDateSig file="../../clientlib/wysiwyg.js"}"></script>
		<script type="text/javascript" src="./clientlib/ckeditor/ckeditor.js?{fileDateSig file="../../clientlib/ckeditor/ckeditor.js"}"></script>
		<script>
		<!--
			var autoSaveDrafts = {if $autoSaveDrafts}true{else}false{/if};
			var autoSaveDraftsInterval = {if $autoSaveDraftsInterval}{$autoSaveDraftsInterval}{else}0{/if};
			
			var editor = new htmlEditor('emailText', '{$tpldir}/images/editor/');
			editor.modeField = 'textMode';
			editor.onReady = function()
			{literal}{{/literal}
				editor.start();
				editor.switchMode("{if !$mail||$mail.textMode=='text'}text{else}html{/if}", true);
			{literal}}{/literal}
			{if $autoSaveDrafts}editor.onChange = beginDraftAutoSave;{/if}
			editor.init();
		//-->
		</script>


	

	</div></td>
			</tr>
		</table>
	</div>

	
	
</div>

{hook id="email.compose.tpl:foot"}

{if isset($captchaInfo)}
<div id="safecodeFooter"{if $captchaInfo.heightHint} style="height:{$captchaInfo.heightHint};"{/if}>
	<table cellpadding="0" style="margin-left:auto;margin-right:auto;">
		<tr>
			<td>
				<label for="safecode">{lng p="safecode"}:</label>
			</td>
			<td style="padding-left:2em;" id="captchaContainer">{$captchaHTML}</td>
			{if !$captchaInfo.hasOwnInput}
			<td style="padding-left:2em;">
				<input type="text" size="20" style="text-align:center;width:212px;" name="safecode" id="safecode" />
			</td>
			{/if}
			{if $captchaInfo.showNotReadable}<td style="padding-left:2em;"><small>{lng p="notreadable"}</small></td>{/if}
		</tr>
	</table>
</div>
{/if}

<div id="contentFooter" class="py-3 pb-4 border border-0">
	<div class="left mt-3">
		<i class="fa fa-folder-o"></i> <label for="savecopy">{lng p="savecopy"}</label> <select name="savecopy" id="savecopy">
				<option value="-128">-</option>
			{foreach from=$dropdownFolderList key=dFolderID item=dFolderTitle}
				<option value="{$dFolderID}" style="font-family:courier;"{if (!$composeDefaults.savecopy&&$composeDefaults.savecopy!=='0'&&$dFolderID==-2)||$composeDefaults.savecopy==$dFolderID} selected="selected"{/if}>{$dFolderTitle}</option>
			{/foreach}
		</select>
		
		{if $signatures}
		&nbsp;
		
		<i class="fa fa-certificate" aria-hidden="true"></i> <select name="signature" id="signature">
		{foreach from=$signatures item=signature}
			<option value="{$signature.id}">{text value=$signature.titel cut=15}</option>
		{/foreach}
		</select> <button type="button" onclick="placeSignature(EBID('signature').value)">&raquo;</button>
		{/if}
	</div>
	<div class="center" style="line-height:2em;" id="autoSaveNote">
	</div>
	<div class="text-end mb-2">
		<button type="button" class="btn btn-success waves-effect waves-light px-3 py-1 fs-5 "  onclick="EBID('do').value='saveDraft';editor.submit();document.forms.f1.submit();" />
			<i class="fa fa-save"></i>
			{lng p="savedraft"}
		</button>
		<button class="btn btn-primary px-3 py-1 fs-5 waves-effect waves-light" type="button" id="sendButton" style="" onclick="if(!checkComposeForm(document.forms.f1, {if $attCheck}true{else}false{/if}, '{lng p="att_keywords"}')) return(false); EBID('do').value='sendMail';editor.submit();checkSMIME('{if isset($captchaInfo)&&!$captchaInfo.hasOwnAJAXCheck}checkSafeCode(\'{$captchaInfo.failAction}\',\'submitComposeForm();\');{else}submitComposeForm();{/if}');">
			<i class="fa fa-send"></i>
			{lng p="sendmail2"}
		</button>
	</div>
</div>

</form>

<div id="composeLoading" style="display:none"><i class="fa fa-spinner fa-pulse fa-fw fa-3x"></i></div>

<script src="./clientlib/dndupload.js?{fileDateSig file="../../clientlib/dndupload.js"}" type="text/javascript"></script>

<script>
<!--
	registerLoadAction(initComposeAutoComplete);
	registerLoadAction(generateAttachmentList);
	registerLoadAction(composeSizer);
	initDnDUpload(EBID('mainContent'), 'email.compose.php?action=uploadDnDAttachment&sid=' + currentSID, false, dndAttachmentUploaded, dndAttachmentURLAddition);
//-->
</script>
