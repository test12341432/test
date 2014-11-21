/**
 * seat.js
 */
/*	$(function(){
		$('.seat_one_R_left').click(function(){
		$('.seat_one_R_left').hide();
		});
		});
	*/
window.history.forward(1); //뒤로가기로의 접근을 막는다

function open_url( url, data, target ){ 
$.ajax({ 	
  type: "POST", 
  url: url, 
  data: data,
  cache:false,
  async : true,      
  success: function(data){ 
    $("#"+target).html(data); 
  } 
})}; 
