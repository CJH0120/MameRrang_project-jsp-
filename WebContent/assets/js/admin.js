//구글 차트 api

           function drawChart() {

          var data = new google.visualization.DataTable();
          data.addColumn('number', 'Day');
         data.addColumn('number', '글개수');
          data.addColumn('number', '댓글수');
          /*data.addColumn('number', '비회원'); */

          data.addRows([
            [1,  100 , 210, /*41.8 */],
            [2,  100 , 240, /*41.8 */],
            [3,  90 , 203, /*41.8 */],
           [4,  80, 180, /*41.8 */],
            [5,  90, 164,/* 41.8 */],
            [6,   110, 202,/* 41.8 */],
            [7,   120 , 197,/* 41.8 */],
            [8,  130, 190,/* 41.8 */],
            [9,  110, 160, /*41.8 */],
            [10, 120 , 170, /*41.8 */],
            [11,  125, 200,/* 41.8 */],
            [12,  140 , 240,/* 41.8 */],
            [13,  150 , 230,/* 41.8 */],
            [14,  170 , 260, /*41.8 */]
          ]);

          var options = {
            chart: {
/*         title: 'Box Office Earnings in First Two Weeks of Opening',
           subtitle: 'in millions of dollars (USD)' */
            },
            width: '100%',
            height: 400
          };

          var chart = new google.charts.Line(document.getElementById('linechart_material'));

          chart.draw(data, google.charts.Line.convertOptions(options));
           }
           
// 팝업창
           function winPopup() {
               var popUrl = "adminMListDtail.jsp";
               var popOption = "top=100, left=100, width=550, height=340, status=no, menubar=no, toolbar=no, resizable=no";
               window.open(popUrl, "_blank" , popOption, true);
           }
           
           
//          클릭 상세
//           $(".td1").hide(); // display 속성을 none 으로 바꾼다. 
//
//           $(".test").click(function() {
//              $(".td1").toggle();
//      });
           
           
//          클릭 상세
         const $btns = $('.test');
         const $aw = $('.td1');
           
         $.each($btns, function(index, item){
         $(item).click(function(){
             $($aw[index]).toggle();
         })
     });           
//         var test1 = document.getElementsByName('copy4');
//         
//         
//         var test1Result = test1.getAttribute("checked");
//         
//         
         
//         $('copy').prop("checked");
//         $('copy').is(":checked");
//         console.log($('copy').is(":checked"));
//         
//        $("copy").prop("checked", true);
//         
//        
//        $("dddd").click(function() {
//            if(this.checked) {
//            	alert('체크됨');
//                //Do stuff
//            }else{
//            	alert('체크풀림');
//            }
//        });
        
//         const dataForm =$(document.forms["submitform"]).serialize();
//         
//         dataForm["copy"]=$('copy').is("checked")?"0" :"1";
//         
//         
//         
//         
//         
//         
//         $('.btn').click(function() {
//		console.log(dataForm.copy);	
//		})
//         
//         
//         
//        
//    
//        	  if ($(".dddd").is(":checked")){
//        		  $('input:checkbox[name=copy3]:checked').eq(0).prop("checked", false);
//        	       
//        	     }else {
//        	    	  $('input:checkbox[name=copy3]:not(checked)').eq(0).prop("checked", true);
//        	     } 
//        	  $('input:checkbox[name=copy3]').each(function()
//        	  {
//        	   if($(this).prop("disabled")) {
//        	    $(this).prop("checked", false);
//        	   }
//        	  });    
//        	  
//         
       
//        

	   
	   
	   
	   
	   
	   
	   
//      	  var chk_len =  $(this).parent().parent().find(":checkbox:checked");
//      		  $('.certification_wrap').$(this).find(":checkbox:checked") ;
      	  
      	  
      	  
      	  

      	
      	  		

      
      	  		
      	  		
      	  	   $(".btn").click(function(){
      	  		   
      	  		   var one = $(this).parent().parent().find(":checkbox:checked").eq(0).val();
      	  		   var two = $(this).parent().parent().find(":checkbox:checked").eq(1).val();
      	  		   var three = $(this).parent().parent().find(":checkbox:checked").eq(2).val();
      	  		   var four = $(this).parent().parent().find(":checkbox:checked").eq(3).val();
      	  		   var five = $(this).parent().parent().find(":checkbox:checked").eq(4).val();
      	  		   var name = userId;
      	  		   	console.log(name);
      	  		alert(name);
      	  	  	 $.ajax({ 
      	  			 url : context+"/admin/AdminCheckOk.ad",
      	  			 type : "Post", 
      	  			 data : {"one": one,"two" :two,"three" :three,
      	  				 	"four":four,"five":five	, "userId": userId },        			 
      	  			 dataType: 'JSON', 
      	  			 success : function (data){
      	  			 
      	  				 }
      	  			         		 
      	  			 
      	  	 })
      	  	   })
	
	
	
	
	
	
	
	
	
	
	
	
//         
//         if($("input:checkbox[class='dddd']").is(":checked") == true){
//        	 console.log(ddd);
//         
//         }else{
//         
//         }
//     
//         var ck =  $('.certification_wrap').contents().find('copy').is(':checked');
//		   $('.certification_wrap').contents().find('copy').each(function() {
//			      if(this.checked){//checked 처리된 항목의 값
//		    	  $("#formDataFromIf").append("<input type='hidden' name='"+this.name+"' value='"+this.value+"'>");	
//			      }
//			 });
//         
//         
         
         
         
         
         
         
         

//         if($('copy4').is(":checked") == true){
//        	    console.log('chk ok!!');
//        	}
//         if($('copy4').is(":checked") == false){
//        	    console.log('no chk!!');
//        	}
         
//         $('checksubmit').click(function() {
//        	 if($(this).is(":checked") == true){
//         	    console.log('chk ok!!');
//         	}
//		})
       
        	 
//        	 


     
//         
//       var count =0;
//       
//       
//        	for(i=0;i<val.length;i++){
//        		$('.btn').click(function() {
//					alert('눌린갯수' +count)
//					
//					count++
//				})
//        		
//        		
//        	}
//         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
           
           
           