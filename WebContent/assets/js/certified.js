


var userPhone1 =$('.number_one').val();
$(document).ready(function () {
 var $userPhone2=$('.number_two').val();


$('#phone_ok').click(function() {
		
	  $.ajax({
	  	    url:
	  	    	context + "/user/UserCheckSamePhoneOk.user",
	  	    	data:  {"userId": userId, "userPhone":$('#input_number').val()},
	  	    type: "get",
	  	    dataType: "json",
	  	    success: function (phone) {
	  	      if (phone.status =="ok") {
	  	        $(".error_text").text("인증번호를 입력해주세요.");
	  	        $(".error_text").css("color", "#03c75a");
	  	        $("#fisrt_warp").css("display","none");
	  	        $("#second_warp").css("display","block");
	  	     
		       $.ajax({
		          type:"GET", 
		          url:context + "/user/UserPhoneOk.user?userPhone=" +$('#input_number').val(),
		          cache : false,
		          dataType: "json",
		          success:function(result){
		        	  code = result.verifyCode;
		          }
		       });
	  	      
	  	      
	  	      } else {
	  	        $(".error_text").text("번호없음");
	  	        $(".error_text").css("color", "red");
	  	    
	  	      }
	  	    },
	  	    error: function () {
	  	      console.log("중복검사 오류");
	  	    },
	  	  });
	
	
})

	
	
});





function checkCode(){

	var $userCode=$('.number_two').val();
	if ($userCode == code){
		$(".text_error").text("인증번호가 일치합니다.");
		$(".text_error").css("color", "#03c75a");
		$('#second_warp').css('display','none')
		$("#success_find").css("display", "block");
		
		phoneCheck = true;
	}else{
		$(".text_error").text("인증번호가 일치하지 않습니다.");
		$(".text_error").css("color", "red");
		$("input#userCode").focus();
	}
}


function showid(){
	$('.hiddenid').css('display','none');
	$('.nohiddenid').css('display','block')
	
}




