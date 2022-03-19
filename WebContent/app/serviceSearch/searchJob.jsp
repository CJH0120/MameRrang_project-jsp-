<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
	<head>
		<title>일자리찾기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
		
<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
<link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	   <script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
  <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
		<link href="${pageContext.request.contextPath}/assets/css/searchJob.css" rel="stylesheet" >
	
	</head>
	<body >
	
		<c:set var="jobList" value="${jobList}"/>
		<c:set var="page" value="${page}"/>
		<c:set var="startPage" value="${startPage}"/>
		<c:set var="endPage" value="${endPage}"/>
		<c:set var="realEndPage" value="${realEndPage}"/>
		<c:set var="total" value="${total}"/>
	

		
		
<!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
		
			<!-- Main -->
      <!-- Aside -->
       
        <jsp:include page="../fix/aside.jsp" flush="true"/>
         
         
         
				<div class="main">
				
				<br><br>
			<h3 style="font-family: 'GmarketSansLight';"> 일자리 찾기</h3>

				<!--돌봄지역-->
				<div class="locationFilter">
					<div class="locationImg">
						<img src="${pageContext.request.contextPath}/images/location2.png" style="width: 100%;" >
					</div>
					<span class="locationInput span openBtn3" style="margin-left: 20px;
					 font-size: 13px; cursor: pointer;  color:#626c6e;"  
					 id="searchArea">
						돌봄지역을 선택해주세요.</span>
				</div>
					<!-- 돌봄유형 -->
					<div class="locationFilter">
						<div class="locationImg baby">
							<img src="${pageContext.request.contextPath}/images/baby2.png" style="width: 100%;" >
						</div>
						<span class="locationInput span openBtn2" style="margin-left: 20px; font-size: 13px; cursor: pointer; color:#626c6e; "" id="careType">
							돌봄유형 선택하기.</span>
					</div>
	
				<!-- 상세검색 -->
				<div class="detailSearch" style="position:relative; ">
					<img src="${pageContext.request.contextPath}/images/filter.png" class="filter">
					<button class="openBtn" id="searchDetail" style="cursor: pointer;"
					> &nbsp;&nbsp;&nbsp;&nbsp;상세검색</button>
				</div>


	<button onclick="location.href='${pageContext.request.contextPath}/service/WriteMom.ser'">글쓰기</button>
	

		<section class="userInfo">
			<c:choose>
				<c:when test="${jobList != null and fn:length(jobList) > 0}">
					<c:forEach var="job" items="${jobList}">
			
						<c:if test="${job.getUserStatus() == 1}">
								<!-- 유저정보 -->
								<div class="userPf">
								<img src="${pageContext.request.contextPath}/images/heart.png" class="heart">
								
								<div class="userImg">
									<!-- 유저 사진 -->
									<img src="${pageContext.request.contextPath}/images/아이.png"class="userImgDetail">
								
								</div>
								<div class="userName">
									<!-- 게시글 제목 -->
									<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookMomProfile2.jsp" style="border:none;">
									${job.getProfileDescription()}</a></h4>
									<div class="mobileAd">
										<!-- 주소 -->
										<span class="span">${job.getLocationSido()}  ${job.getLocationSigun()} </span>&nbsp;
										<div class="line"></div>&nbsp;&nbsp;
										<!-- 아이정보 -->	
										<c:choose>
										<c:when test="${job.getBabyNewborn()==1}">
											<span class="span">신생아</span>&nbsp;
										</c:when>
										<c:when test="${job.getBabyChild()==1}">
											<span class="span">유아</span>&nbsp;
										</c:when>
										<c:when test="${job.getBabyKinder()==1}">
											<span class="span">유치원생</span>&nbsp;
										</c:when>
										<c:when test="${job.getBabyElementary()==1}">
											<span class="span">초등학생</span>&nbsp;
										</c:when>
										<c:otherwise >
											<span class="span">정보 없음</span>&nbsp;
										</c:otherwise>
										</c:choose>
										<div class="line"></div>
										<!-- 시작날짜 -->
										<span class="span">&nbsp;&nbsp;&nbsp;${job.getP_periodStartDate()}시작</span>
										&nbsp;&nbsp;
								</div>
									<div class="fontSize">
										<div class="money">
											
										<img src="${pageContext.request.contextPath}/images/money.png" style="width:100%;">
										
									
										</div>
										<!-- 희망시급, 협의가능여부 -->
										희망시급 ${job.getProfileSalary()}원</div>
										<hr style="margin: 7px 0px;width: 100%;">
									
										<!-- 돌봄가능날짜 -->
										<div class="day">
										<div class="days">
										<c:choose>
										<c:when test="${job.getP_mon()==1}">
											<img src="${pageContext.request.contextPath}/images/월1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/월.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${job.getP_tue()==1}">
											<img src="${pageContext.request.contextPath}/images/화1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/화.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${job.getP_wed()==1}">
											<img src="${pageContext.request.contextPath}/images/수1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/수.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${job.getP_thu()==1}">
											<img src="${pageContext.request.contextPath}/images/목1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/목.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${job.getP_fri()==1}">
											<img src="${pageContext.request.contextPath}/images/금1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/금.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${job.getP_sat()==1}">
											<img src="${pageContext.request.contextPath}/images/토1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/토.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
										
										<c:choose>
										<c:when test="${job.getP_sun()==1}">
											<img src="${pageContext.request.contextPath}/images/일1.png" style="width: 30px;" >
										</c:when>
										<c:otherwise >
											<img src="${pageContext.request.contextPath}/images/일.png" style="width: 30px;" >
										</c:otherwise>
										</c:choose>
								
										</div>
									</div>
								</div>	
							</div>
						</c:if>
					</c:forEach>
				</c:when>
			</c:choose>
			
			
			
			  <!-- 상세검색 모달 --> 

                <div class="modal hidden">
                 <div class="bg"></div>
                    <div class="modalBox"> 
							<!-- main -->
   
						<div class="main2">
				        <div class="header">
				        <div	style="
				           	background-color: #ffb61a9e;
					    	width: 551px;
					      	height: 83px;
					   		line-height: 5;">
					    <h3 style="color:white; margin-left: -30px; font-size:23px;padding-top: 25px; " class="media2">상세 검색</h3></div>
				      <%--  onclick="location.href='${pageContext.request.contextPath}/service/MomDetailModalOk.ser'" --%>
				        <input type="button" value="적용" class="apply" style="cursor: pointer; color: #ffb61a !important;" class="media3" id="close" >
				        </div>
  
         
				        <div class="content media4">
				        
				            <h3 style="text-align: left;" class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;아이 나이</h3>
				            
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/신생아no.png" class="gradeImgSize media6"  id="newbornBaby"></span>
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/영아no.png"  class="gradeImgSize media6"  id="baby"></span>
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/유치원no.png" class="gradeImgSize media6"  id="kinder"></span>
				            <span class="grade"><img src="${pageContext.request.contextPath}/images/초등학생no.png" class="gradeImgSize media6"   id="elementary"></span>
				    		<div style="margin-top: -11px;">
				            <span class="grade2  media7">&nbsp;&nbsp;&nbsp;신생아</span>
				            <span class="grade2 media7">&nbsp;&nbsp;영아</span>
				            <span class="grade2" >&nbsp;&nbsp;유치원</span>
				            <span class="grade2 media7">초등학생</span>
				            </div>
				        </div>
        
				        <hr>
				        <div class="content media8">
				            <h3 style="text-align: left;" class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 요일</h3>
				            <div style="     margin-bottom: 4px; margin-top: -14px;" class="media10">
				                <img src="${pageContext.request.contextPath}/images/월.png"  class="days2 media11" 
				                 id="monday">
				                <img src="${pageContext.request.contextPath}/images/화.png" class="days2 media11" 
				                 id="tuesday" >
				                <img src="${pageContext.request.contextPath}/images/수.png" class="days2 media11" 
				                id="wednesday">
				                <img src="${pageContext.request.contextPath}/images/목.png" class="days2 media11" 
				                id="thursday">
				                <img src="${pageContext.request.contextPath}/images/금.png" class="days2 media11" 
				                id="friday">
				                <img src="${pageContext.request.contextPath}/images/토.png" class="days2 media11"  
				                id="saturday">
				                <img src="${pageContext.request.contextPath}/images/일.png" class="days2 media11"  
				                id="sunday">
				            </div>
				        </div>
				        
				        <hr>
					
					        <div class="content media12">
					            <h3 style="text-align: left;" class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;돌봄 시간대</h3>
					       
					            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/아침1.png"  class="timeIcon media14" 
					                id="morning"></span>
					            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/오후1.png" class="timeIcon media14"
					                id="lunch"></span>
					            <span class="timeIcon"><img src="${pageContext.request.contextPath}/images/저녁1.png" class="timeIcon media14"
					               id="dinner"></span>
					                <div style="margin-bottom: 13px;    margin-top: -17px;" class="media16">
									<span class="time media15">오전9시~오후12시</span>
									<span class="time media15">오후12시~오후3시</span>
									<span class="time media15">오후3시~오후6시</span>
									</div>												
					        </div>
       
					        <hr>
					
					        <div class="content media17">
					            <h3 style="text-align: left;" class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 시터 나이대</h3>
					            
					            <div class="time">
					                <img src="${pageContext.request.contextPath}/images/20대1.jpg"  class="age media19"
					                id="twenty"> 
					                <img src="${pageContext.request.contextPath}/images/30대1.jpg" class="age media19"
					                id="thirty"> 
					                <img src="${pageContext.request.contextPath}/images/40대1.jpg" class="age media19"
					                id="fourty"> 
					                <img src="${pageContext.request.contextPath}/images/50대1.jpg" class="age media19"
					                id="fifty">
					                <img src="${pageContext.request.contextPath}/images/60대1.jpg"  class="age media19"
					                id="sixty">
					                
					            </div>
					        </div>
					        
					        <hr>

						        <div class="content media20">
						            <h3 style="text-align: left;" class="font-size">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 활동</h3>
						            
						            <div class="time media22" style="margin-top: 15px height: 175px; ">
						                <div style="margin-top: -16px !important;" >
						                <img src="${pageContext.request.contextPath}/images/no실내놀이.png" class="activity media23"
						                id="play">
						                <img src="${pageContext.request.contextPath}/images/no등하원.png" class="activity media23"
						                id="goingSchool" >
						                <img src="${pageContext.request.contextPath}/images/no밥챙겨주기.png"class="activity media23"
						                id="makeEat">
						                <img src="${pageContext.request.contextPath}/images/no청소.png" class="activity media23" 
						                id="cleaning">
						                <img src="${pageContext.request.contextPath}/images/no학습지도.png" class="activity media23"
						                id="study">
						                <div class="media25">
						                    <span style="margin:37.3px;" class="media24">실내놀이</span>
						                    <span style="margin: 9px;"class="media24">등하원</span>
						                    <span style="margin: 33px;"class="media24">밥 챙겨주기</span>
						                    <span style="margin: 16px;"class="media24">청소</span>
						                    <span style="margin: 34px;"class="media24">학습 지도</span>
						
						                </div>
						                </div>
						            </div>
						        </div>
						        
						        
						        <!------------------------------------------------------------------------------  -->
		                    </div>
	                    </div>
					</div>
                
		
			
			   <!-- 돌봄유형 선택 모달 --> 
	
	                <div class="modal2 hidden">
	                    <div class="bg2"></div>
	                    <div class="modalBox2">
	                     <!-- 돌봄유형 모달창 main -->
	    <div class="main3">
	   
	        <div style="    background-color: #ffb61a9e;
	    width: 477px;
	    height: 86px;
	    text-align: center;">
	        <h2 style="color:white; line-height: 3;
	    font-size: 29px;">&nbsp;돌봄유형 선택</h2></div>
	     <div style="    text-align: center;
	    width: 477px;
	    height: 683px;" class="media2">
	        <br>
	        <h3 style="margin: 1px; font-family: GmarketSansMedium;" class="media20">어떤 돌봄이 필요하세요?</h3>
	        <p style="margin: 0; color: gray;" class="media21">돌봄 유형을 선택하시면, 맞춤 시터를 보여드려요</p>
	
	        <div >
	            <div class="child media4">
	                2~10세 정기 돌봄
	            </div>
	
	            <div>
	                <img src="${pageContext.request.contextPath}/images/등하원.png" style="width: 50px; margin: 0 70px;" class="media6">
	                <img src="${pageContext.request.contextPath}/images/학습지도.png" style="width: 50px; margin: 0 70px;" class="media6">
	            </div>
	            <div style="margin: 0 auto; width: 500px; height: 45px; margin-left: -7px;" >
	                <div class="text media8">
	                   주 5일 등하원 
	                    <p class="p2 media9">기관 전/후 등하원 및 돌봄</p>
	                </div>
	                <div class="text media21">
	                    놀이/학습시터
	                    <p class="p2 media9">주 1~4일 또는 짧은시간</p>
	                </div>
	            </div>
	        </div>
	
	
	
	        <div>
	            <div class="child media10" style="margin-top:20px;">
	                신생아/영아 정기돌봄
	            </div>
	            <div>
	                <img src="${pageContext.request.contextPath}/images/풀타임.png" style="width: 55px; margin: 0 70px;" class="media11">
	                <img src="${pageContext.request.contextPath}/images/보조.png" style="width: 55px; margin: 0 70px;" class="media11">
	            </div>
	            <div style="margin: 0 auto; width: 500px; height: 45px;     margin-left: 3px;" >
	                <div class="text media13">
	                  풀타임
	                    <p class="p2 media14">주5일 평균8시간 이상</p>
	                </div>
	                <div class="text media22" style="margin-left: 74px;">
	                    보조
	                    <p class="p2 media14">주 1~4일 또는 짧은시간</p>
	                </div>
	            </div>
	        </div>
	
	
	        <div class="media15">
	            <div class="child media16" style="margin-top:20px;">
	                긴급/단기 돌봄
	            </div>
	            <div class="main">
	                <img src="${pageContext.request.contextPath}/images/긴급.png" style="width: 50px;" class=" media17">
	
	            </div>
	            <div class="main media18" style="font-weight: bold;">
	                긴급/단기
	                <p class="p2 media23">하루 또는 며칠만 급하게 필요할 때</p>
	              </div>
	        </div>
	
	            <button class="button media19">모든 돌봄유형 보기</button>
	            
			</div>
	
	
	    </div>
	                    </div>
	                </div>
			
			
				<!-- 돌봄지역 선택 모달 -->
				
				 <div class="modal3 hidden">
		                    <div class="bg3"></div>
		                    <div class="modalBox3">
		                      <div style="margin-top: 62px;">
								    <select id="sido" class="area">
								      <option value="">'시/도'를 선택해주세요</option>
								    </select>
								    <select id="sigugun" class="area">
								      <option value="">'시/군/구'를 선택해주세요</option>
								    </select>
								    <select id="dong" class="area">
								      <option value="">'동'을 선택해주세요</option>
								    </select>
								 
								  </div>
		                      
		                    </div>
		                </div>
				
					
										<!-- 페이징 처리 -->
							
											
										<table style="font-size:1.3rem">
											<tr align="center" valign="middle">
												
												<td class="web-view">
													<c:if test="${startPage > 1}">
														<a href="${pageContext.request.contextPath}/service/SearchJobOk.ser?page=${startPage - 1}">&lt;</a>
													</c:if>
												
													<c:forEach var="i" begin="${startPage}" end="${endPage}">
														<c:choose>
															<c:when test="${i eq page}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</c:when>
															<c:otherwise>
																<a href="${pageContext.request.contextPath}/service/SearchJobOk.ser?page=${i}"><c:out value="${i}"/></a>&nbsp;&nbsp;
															</c:otherwise>
														</c:choose>
													</c:forEach>
													
													<c:if test="${endPage < realEndPage}">
														<a href="${pageContext.request.contextPath}/service/SearchJobOk.ser?page=${endPage + 1}">&gt;</a>
													</c:if>
												</td>
											</tr>
										</table>
				
				
		
	
	</section>	
	
		


	
			
	

</div>
	

<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>
         
	</body>
         
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/searchJob.js"></script>
	
	
</html>