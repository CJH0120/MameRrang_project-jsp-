
<h1>JSP TeamProject</h1>
 <h2><a href="http://www.mamerrang.kro.kr/" style="color=yellow">마미랑(Mamerrng)</a> </h2>
 <P ><strong>마미랑은?</strong> <span> 부모와 시터를 연결해주는 플랫폼 사이트 이다.</span></p>
 
 <p>제작기간 <b>약 20일</b>이 걸렸고 참여인원은 10명이지만 실제 가용인원은 <strong>6명</strong>이다.</p>
 
 <p> 서버구축까지 완료하였기에 위 마미랑 태그를 클릭하면 확인할수있다. </p>
 
 <P ><strong>프로젝트에서 맡은 역할 : </strong><br> <span>회원가입 유효성검사(blur사용)</span>, <span>AJAX를 이용한 실시간 중복검사(아이디/이메일)</span>, <span>회원 인증, </span><span>비밀번호 업데이트, </span> <span>미디어쿼리 </span> 등등 </p>
 
 <hr>
 
 ### 프로젝트를 통해 느낀점 :
 ####  생애 첫 프로젝트를 완성하였다. 팀이 해산될뻔했지만 해산되진않고 다른팀에 병합 되었다. 거기도 기존팀에 있던 상황들과 다를게 없어 아마 현재 팀으로 합류된거같다. 그로인해 나에겐 아쉬웠던점과 좋았던점이 있었지만 이를 통해 또다시 성장하게된거 같다.
 <p><b> 좋았던점</b> : 여러명의 코드를 볼수있어 내가 코딩했던 소스와 비교하며 더좋은 코드를 짤수있게 되었고, 백단과 프론트단의 기준점을 완전히 파악할수있었다. 이번 프로젝트를 통해서 백단과 프론트단을 둘다 만져봤고, 그 중 프론트단을 많이 만져서 서버에 값을 넘겨주는것과 넘겨 받는것을 구사할수 있게되었다. </p>
 
 <p><b> 아쉬웠던점</b> : 합류된 케이스라 올때 부터 UIUX 작업이 완료된걸 볼수있었지만, 그 중 css를 만지는 과정에서 다른 사람의 소스를 수정하는게 힘들어서 UIUX를 좀더 공부해봐야되겠다는 생각이 들었고, 아직은 순수 자바스크립트를 구현하지못해 아쉬웠다 jQuery가 너무편해 익숙해진게 너무 후회가 된다 다음 프로젝트에는 바닐라스크립트로 해볼 생각이다.</P> <p>AJAX라는 것을 처음 사용해봤는데 양날의 검인거같다. 왜냐하면 클라이언트에게 페이지를 이동없이 바로바로 보여줄수있는 장점을 갖고있지만, 한번꼬이면 느려지기도 하고 무엇보다 안정성에 적합하지않다는 생각이들었다.  또한,기존에 만들어놧던 사이트도 마무리못한거에 대해 아쉽게 생각한다. 시간이나면 기존 팀원들과 다시 만들어 볼 생각이다.</p>
 
 <hr> 
 
 ### 프로젝트에서 사용한 기술 : JAVA , JavaScript, jQuery, HTML , CSS ,JSTL

 
 <h3> 아래는 합류하고부터 일기형식으로 남겨두었고, 두고두고 볼 예정이다 </h3>
 
 #### 22.3.16일
 - 코드를 받았으며 하루동안 코드를 읽었다
 #### 22.3.17일
  - 회원가입 유효성검사, 이메일 중복검사가 안되었어 AJAX를 사용해 DATABASE와 연동하여 실시간으로 바꾸었다
 #### 22.3.18~19일
  - 아이디 찾기 기능을 추가하였으며 이번에도 AJAX를 사용하였다.
  - 처음으로 회원의 이름과 이메일을 작성하면 값을 Mysql로 보내어 Select를하여 값비교를 하였다.
  - AJAX를이용해 값이 null이면 없는아이디를 출력하였고, 값이있으면 get방식으로 페이지를 넘겨 아이디를 출력하였다
  - 여기서 Post가아닌 get방식을 적어서 url에 아이디가 노출이 되어 처음에 암호화를 하려했으나 세션으로 값전달을 하기로 하였다
  - 자바에서 연산하여 C:Set을 사용하여 출력되는 아이디를 1차적으로 가려놓았고 다시 핸드폰 인증을하여 아이디 찾는 방식으로 진행하였다.
  - [아이디추가.txt](https://github.com/CJH0120/TeamProject_2/files/8308835/default.txt)
  - 복잡한거같아 메모장에 기능추가에 필요한 기술들을 적어 보았다.
  - 코드는 생각한대로 잘 들어갔다.

#### 22.3.19~20일
  - 오늘은 아이디 추가를 쎅션을 완벽하게 마무리하였고 커밋까지 완료하였다. 
  - 자바연산을통해 핸드폰인증번호를 5번 틀리면 창을 막아버리는 방식으로 제작하였고
  - 인증번호를 성공하면 페이지 이동을 할때 DATABASE에 전달할 아이디값을 페이지에하였다
  - 비밀번호 정규식을써 회원가입과 동일하게 진행하였으며 정규식을 통과하면
  - 전페이지에서 전달된 아이디값으로 MySQl 쿼리문을 작성하여 비밀번호를 업데이트 해주는 방식으로 하였다.

#### 22.03.22
  - JSTL값과 체크박스의 값을 넘겨 관리자 페이지에서 인증확인을 해주었다.
  - 체크박스값이 계속 바뀌어 value=0 으로 디폴트 값을 주었지만 값이 계속 변해 이상하다고 느껴
  - 두시간을 삽질하다가 결론적으로는 체크를 안하면 값이 null로 컨트롤러에 보낸것을 알아차렸다
  - 컨드롤러 받는쪽에서 if문으로 널을 안들어오게 하였고 버려지는 값은 0으로 두어 DATABASE에 전송하였다
  - 하루에 한페이지씩 프론트단과 백단을 완성하는데 항상 부족하다고 느껴좀더 연습을 해야겠다.

#### 22.03.23
 - 새창으로 수정보다는 비동기로 전달을 하라해서 수정을했다
 - JSTL C:foreach에서 스크립트로 선언후 vlaue 값을 찍어 보니 아예 안보이거나, unfinded가 나와 곤욕을 치뤘다
 - 사실 3일전부터 안되던거라 새창을 띄웠던건대 다시 도전했다  검색을 하다보니 status 라는 함수를 발견해서 응용해서 썻다.
 - 몰랐던건대 function() 펑션 빈칸 안에 선언을하면 그 선언된것이 값이 된다는걸 알고 AJAX로 값을 전달해 해결하였다
#### 22.03.24
 - 드디어 프로젝트가 막바지에 다달았다. 처음부터 참여한게 아닌 중간부터 참여한거라 아쉽긴하지만 만족하는 결과가 나올꺼같다
 - 프론트지향하는 사람으로서 서버에 값 전달과 받기를 프로젝트하면서 혼자 처음으로 해봤는데 재미있는거 같다.
 - 물론 전달 받기만 한게 아니라 값을 DATABASE에서도 빼오기도하고 백단또한 경험해 봤다
 - 현재는 미디어쿼리와 서버구축, 컨트롤러 연동을 하고있다
#### 22.03.27
 - 마무리 작업이 거의다 끝났으며 페이지 연결 마무리와 미디어쿼리 깨지는곳을 보고있다
#### 22.03.30
 - 드디어 프로젝트가 다 끝났다. 미디어쿼리는 아이폰 12 width 390 으로 맞춰서 했으며 서버구축과 사이트배포까지 마무리하였다.
