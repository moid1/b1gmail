
<!-- Begin page -->
        <div id="wrapper" style=" border-radius: 8px;">   

            

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page" >


                <div class="content" >

                    <!-- Start Content-->
                    <div class="container-fluid">
                       

                        <div class="row">
                            <div class="col-12 mt-2">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row justify-content-between">
                                            <div class="col-md-3">
                                               
                                                <h4 style="font-weight: bold;">AddressBook</h4>
                                            </div>
                                            <div class="col-md-9">
                                                <div class="text-md-end mt-3 mt-md-0">
                                                    

                                                    

        <small style="display: none;">{lng p="view"}:</small>
        <select style="display: none;" class="smallInput"  onchange="document.location.href='organizer.addressbook.php?sid='+currentSID+'&group={$currentGroup}&letter='+this.value;">
            <option value="">{lng p="all"}</option>
            {foreach from=$alpha key=key item=letter}
            <option value="{$key}"{if $smarty.request.letter==$key} selected="selected"{/if}>{$letter}</option>
            {/foreach}
        </select>
        
        &nbsp;
        
        <small class="fs-5">{lng p="group"}:</small>
        <select class="smallInput btn border border-1" style="box-shadow: none;" onchange="updateCurrentGroup(this.value,'{$sid}')">
            <option value="-1"{if $currentGroup==-1} selected="selected"{/if}>------------</option>
            <optgroup label="{lng p="groups"}">
            {foreach from=$groupList key=groupID item=group}
                <option value="{$groupID}"{if $currentGroup==$groupID} selected="selected"{/if}>{text value=$group.title cut=25}</option>
            {/foreach}
            </optgroup>
        </select>
        
        &nbsp;
        
        <button class="btn" type="button" onclick="abGroups();">
            <i class="fa fa-users" aria-hidden="true"></i>
            {lng p="editgroups"}
        </button>
        
        &nbsp;
        
        <button class="btn" type="button" onclick="abImport();">
            <i class="fa fa-upload" aria-hidden="true"></i>
            {lng p="import"}
        </button>
        
        <button class="btn" type="button" onclick="abExport();">
            <i class="fa fa-download" aria-hidden="true"></i>
            {lng p="export"}
        </button>

        <button type="button" class="btn btn-primary" onclick="document.location.href='organizer.addressbook.php?action=addContact&sid={$sid}';">
                        <i class="fa fa-plus-circle"></i>
                        {lng p="add"}
                    </button>
                                                </div>
                                            </div><!-- end col-->
                                        </div> <!-- end row -->
                                    </div>
                                </div> <!-- end card -->
                            </div><!-- end col-->
                        </div>
                        <!-- end row -->        

                        <div class="row">
                        {if $addressList}
                        {foreach from=$addressList key=letter item=addresses}
                        {assign var=groupID value="addr$letter"}
                            <div class="col-lg-4">
                                <div class="text-center card">
                                    <div class="card-body">
                                        <div class="pt-2 pb-2">
                                           
    
                                            <h4 class="mt-3"><td colspan="{if $templatePrefs.showCheckboxes}2{else}1{/if}" class="folderGroup">
                        
                        </td> </h4>

                         <tbody id="group_{$letter}" style="display:{if $smarty.cookies.toggleGroup.$groupID=='closed'}none{/if};">
            
                    {foreach from=$addresses key=addressID item=address}
                    {cycle values="listTableTD,listTableTD2" assign="class"}
                    <tr id="addr_{$addressID}">
                        {if $templatePrefs.showCheckboxes}
                        <td style="text-align:center;width:24px;">
                            <input type="checkbox" id="selecTable_{$addressID}" />
                        </td>
                        {/if}
                        <td class="{$class}">
                            {if !$address.vorname&&!$address.nachname&&$address.firma}
                            <strong>{text value=$address.firma}
                            {else}
                            <p class="fs-2 my-0 py-0">{text value=$address.vorname}</p>
                            <strong class="fs-4">{text value=$address.nachname}</strong> <br>
                            <strong class="text-primary">{text value=$address.work_email}</strong>
                            {/if}
                        </td>

                    </tr>
                    {/foreach}
            
                    </tbody>
                                           
    
                                        </div> <!-- end .padding -->
                                    </div>
                                </div> <!-- end card-->
                            </div> <!-- end col -->


            
                    {/foreach}
                    {/if}

                           
                        </div>
                        <!-- end row -->

                       
                        
                    </div> <!-- container -->

                </div> <!-- content -->

               

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->





<script>
<!--
	registerLoadAction('initHSep(\'addr\')');
	initAddrSel();
//-->
</script>

</form>
