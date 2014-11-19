function handlerPrivate() {
	
	
	
	/*
	if($.trim($("#board_password").val())=="") {
		$("#warning_password").text("input password!");
		$("#board_password").val("").focus();
		return false;
    }//end of if board_title
    $("#warning_password").text("");
    */
	//window.opener.handlerPassword($("#board_password").val());
	$("#password",opener.document).val($("#board_password").val());
	//$("#password",opener.document).onchange();
	opener.location.href="javascript:handler();";
	window.self.close();
	/*
	if($.trim($("#board_password").val())!=$.trim($("#origin_password").val())) {
		$("#warning_password").text("not same password!");
		$("#board_password").val("").focus();
		return false;
    }//end of if board_title
    $("#warning_password").text("");
	*/
}//end of function check