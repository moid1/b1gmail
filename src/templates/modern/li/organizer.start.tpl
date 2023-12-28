

<div id="" class="row pt-2" style="width: 100%; background: #fff;">
	<div class="col-6 px-2" style="">
		<i class="fa fa-tachometer" aria-hidden="true"></i> {lng p="overview"}
	</div>
	
	<div class="col-6 text-end">
		<button  class="btn fs-5  py-1 btn-secondary " onclick="document.location.href='organizer.php?action=customize&sid={$sid}';" type="button">
			<i class="fa fa-puzzle-piece" aria-hidden="true"></i>
			{lng p="customize"}
		</button>
	</div>
</div>

<div class="" style="margin-top: -4px; background: #fff; width: 98.8%; border-radius: 0px 0px 8px 8px; overflow-x: hidden;"><div class="pad row">
	<div id="startBoxes">
	</div>
	<div id="startBoxes_elems" style="display:none">
	{foreach from=$widgets item=widget key=key}
		<div title="{text value=$widget.title}" rel="{if $widget.hasPrefs}1{else}0{/if},{$widget.prefsW},{$widget.prefsH},{if $widget.icon}{$widget.icon}{else}0{/if}" id="{$key}">{include file=$widget.template}</div>
	{/foreach}
	</div>
</div></div>

<script src="./clientlib/dragcontainer.js?{fileDateSig file="../../clientlib/dragcontainer.js"}" type="text/javascript"></script>
<script>
<!--
	currentSID = '{$sid}';
	var dc = new dragContainer('startBoxes', 3, 'dc');
	dc.order = '{$widgetOrder}';
	dc.onOrderChanged = organizerBoardOrderChanged;
	dc.run();
//-->
</script>
