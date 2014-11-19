function check() {
    
    if($.trim($("#board_title").val())=="") {
		$("#warning_title").text("input title!");
		$("#board_title").val("").focus();
		return false;
    }//end of if board_title
    $("#warning_title").text("");
    
    if($("input[type='checkbox']:checked").val()==null) {
    	$("#board_private").val("0");
    } else {
    	$("#board_private").val("1");
    }//end of if else board_private
    
    if($("#board_private").val()=="1") {
		if($.trim($("#board_password").val())=="") {
		    $("#warning_password").text("input password!");
		    $("#board_password").val("").focus();
		    return false;
		}//end of if board_password
		$("#warning_password").text("");
	
		if($.trim($("#board_confirm").val())=="") {
		    $("#warning_password").text("input confirm!");
		    $("#board_confirm").val("").focus();
		    return false;
		}//end of if board_confirm
		$("#warning_password").text("");
	
		if($.trim($("#board_password").val())!=$.trim($("#board_confirm").val())) {
		    $("#warning_password").text("not same password!");
		    $("#board_confirm").val("").focus();
		    return false;
		}//end of if warning_password board_confirm
		$("#warning_password").text("");
    } else {
    	$("#board_password").val("");
    }//end of if password total
    
    if($.trim($("#board_content").val())=="") {
		$("#warning_content").text("input content!");
		$("#board_content").val("").focus();
		return false;
    }//end of if board_title
    $("#warning_content").text("");
    
}//end of function check

function handlerImage() {
    if($("#board_file").val()!="") {
    	$("#board_img").val("1");
    } else {
    	$("#board_img").val("0");
    }//end of if else
}//end of function handlerImage