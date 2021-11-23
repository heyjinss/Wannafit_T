# Wannafit_Team Project

## Wannafit[Health management_project] 
>워너핏 건강관리 웹 서비스는 코로나 19로 인해 이용자들이 대면으로 모여 헬스장 방문 및 대규모 모임이 어려운 현재의 환경 문제를 해결하기 위하여 
모임만들기, 펀딩신청, 건강헬스케어 멘토연계 서비스를 고안하여 만들어 낸 웹서비스 입니다. 
<img src = "https://user-images.githubusercontent.com/75897408/142980035-0840a94c-d5ea-4fea-8146-ce42f9755c30.JPG">

<details>
<summary><b> 구조도 보기 </b></summary>
<div markdown="1">
<img src = "https://user-images.githubusercontent.com/75897408/142980473-14809e41-2635-4b6c-929c-896d6ba8d418.JPG">
<div>
</details> 
  
<details>
<summary><b>권한 보기</b></summary>
-일반회원 </br>
-기업회원</br>
-헬스트레이너</br>
-헬스장 </br>
</details> 
  
## 프로젝트 선택의 이유 
>워너핏 건강관리 웹 서비스는 코로나 19로 인해 건강을 더 효율적으로 관리할 수 있도록 관리시스템을 마련하기 위해 고안한다면 위기를 기회로 삼아
사람들간의 교류를 지속적으로 확보하고, 창업자들 헬스장 및 기업들이 활동적으로 약속시간과, 물품들을 공유할 수 있을것이라고 고민한 과정을 담기에 
충분하다고 생각되어 이 프로젝트를 제작했습니다. 
## 제작기간 
> 2021.08.24 ~ 2021.9.10 

## 참여인원
> 4명 (유혜진, 김지은, 김다은, 유성근)  

## 사용기술
css, javascript, html, jsp, oracle

<details>
<summary><b>상세</b></summary>
<div markdown="1">
주어진 개발 스펙은 ajax, jquery, java script등 평소 익숙해진 문법을 활용하되, JSP와 JSTL에 조금 더 시간을 할애하고자 하였습니다.
웹 서비스에서는 다양한 권한이 상호작용할 수 있도록 권한을 다르게 설정하여 세션 및 쿠키를 관리할 수 있도록 설정하였습니다. 
JSP기반으로 POST / METHOD 방식으로 데이터의 흐름을 한눈에 볼 수 있기 때문에, 데이터의 보안 관련해서 큰 공부가 될 것이라고 판단하여 JSP기반의 건강관리 서비스를 채택하게 되었습니다. 
사용자 경험 중심을 위한 화면 및 동적 데이터 처리부분을 습득하기 위해 javascript을 이용한 UI기술 활용과 부분 데이터 호출을 위해
ajax을 처음으로 사용한 프로젝트 입니다 
<img src = "https://user-images.githubusercontent.com/75897408/141770093-2c241771-59f9-462b-8a7a-7800d2a3960f.png" width ="100%" height="50%">
<div>
</details> 

## ERD  
pms프로젝트의 경우 프로젝트 별 멤버번호가 다르다는 점이 핵심입니다. 조직구성원은 여러 프로젝트의 참여할 수 있고 사원번호는 고유하나 프로젝트에 따라 멤버번호가 할당되어
다중의 멤버번호를 가지고 있다는 점이 핵심입니다. 리스크 등록, 프로젝트 멤버 등록 시, 상위작업, 하위작업 할당 시 사원번호가 아닌 프로젝트의 member번호를 사용하여 할당하게 
되므로 다중의 조인문이 요구되는 특징을 가지고 있는 ERD 구성입니다.  

<details>
<summary><b>상세</b></summary>
<img src = "https://user-images.githubusercontent.com/75897408/142980219-81625d97-75de-4cd9-be30-533f75ec15ff.JPG">
<img src = "https://user-images.githubusercontent.com/75897408/142980223-14469697-093c-45f2-860f-3571e8912b00.JPG">
<div>
</details> 


## 구현기능 
- **일정관리기능** 
- **기업등록기능** 
- **기업상품관리기능**
- 이외의 기능은 다른 조원들이 맡았습니다.
  (로그인, 회원가입, 파트너신청, 소모임신청/등록, 예약신청/등록, 헬스장조회/신청) 
  

-기업신청 (기업등록/파일업로드) </br>
<img src = "https://user-images.githubusercontent.com/75897408/142986182-980a85c9-dcaf-4317-99a4-fcde10670263.JPG" width ="100%" height="50%"></br>
-펀딩신청 (펀딩상품조회/펀딩신청)</br>
<img src = "https://user-images.githubusercontent.com/75897408/142986188-6ce0bc0a-0652-4a13-9560-e722f7412e21.JPG" width ="100%" height="50%"></br>
-일정관리 (일정등록/상세보기/일정보기) 
<img src = "https://user-images.githubusercontent.com/75897408/142986189-4d85a086-19c9-4927-9e23-3eb6d44b4cc1.JPG" width ="100%" height="50%"></br>  

## 📌프로젝트를 시작하기 전 저의 목표 
- **JSP를 활용하여 post/get방식의 효율적 활용**
- **BEAN과 cookie를 활용한 데이터 흐름의 효율적 활용 및 보안 공부**
- **일정파일을 직접 만들어 알고리즘 공부하기**
   
## 이슈관리 
이 프로젝트의 핵심은 권한별로 다른 조회기능이었으며 권한이 4가지로 나누어짐에 따라 가입 프로세스를 한 가지로 통일하고자 하였으나, ERD설정에 있어서 회원으로 등록 후 4가지 회원으로
재등록하는 과정이 복잡하다는 의견과 한번에 가입해야한다는 의견이 상충되는 설계과정의 이슈가 있어 설계과정에서 시간이 더 할애되었음. 

- ajax와 json을 통한 동적 데이터 사용의 미숙함 </br>
  📌**문제** : ajax를 처음으로 활용함에 따라 JSON데이터에 대한 이해와 동적 데이터에 대한 활용방안에 대한 지식이 서로 불충분한 상태였습니다. </br>
  📌**해결**: 코드 리뷰를 통해 공통적으로 어려운 부분을 파악했습니다. </br>
 📌**효과**: 코드리뷰시간을 이전보다 더 확보하여 오류를 공유하여 개인 오류 해결시간을 좁힐 수 있었고, id값으로 다중 동적데이터를 불러오는 문제를 해결하여 class로 동적데이터를 활용하는 
 핵심문제를 해결하여 개인 간 속도차를 좁힐 수 있었습니다. </br>
 
- 4가지 권한설정에 따른 프로세스 의견 상충 </br>
 📌 **문제**: 개발기간동안 설계과정에서 짜놓았다고 할지라도 데이터의 변동사항은 지속적으로 생기는 문제를 경험했습니다. 4가지 권한의 공통 회원테이블을 구성하고, 회원가입 후 프로세스를 다르게 
 구성하여 한번 더 기업/헬스트레이너/헬스장/일반 가입으로 나누었으나 사용자 입장에서 더 빠른 접근성을 위해 가입 경로를 바꾸기로 설정하였습니다. </br>
 📌**해결** : 이후 구현과정에서의 시간적 한계와 복잡성을 깨닫고 가입 시 바로 개별 가입을 할 수 있도록 바꾸었습니다.  </br>
 📌**효과** :한정된 시간안에서 모든 계획이 이루어질 수 없다는 것을 깨닫게 되었고, 더 효율적으로 시간을 아끼고 핵심기능을 잘 구현하고자 함께 방안을 논의했으며, 이에따라 효율적으로 화면구현을 하기 위해 인터페이스를 공유하여 nav영역,
 footer영역 등 레이아웃을 서로 나누어 구현하고, include태그를 활용하여 코드의 재사용성을 높여가기 시작했습니다. 한정된 시간안에서 더 중요한것을 찾아가는 과정이었습니다. 


## 트러블슈팅경험/자랑하고싶은코드 
📌**ERD를 구성할 때 펀딩상품과 펀딩정보**
- 문제 : New date생성자로 java문법을 통해 DB에 입력되어있던 날짜를 비교처리하여 타이머기능을 구현하고자 하였으나, javascript단에서 Month가 비교처리되지 않아 화면에 노출되지 않는 문제 </br>
- 현상 : 상세조회화면에서 펀딩만료기간 타이머가 작동되지 않음 </br>
- 원인 : 월단위의 경우 출력 시 영문으로 출력되어 비교가 불가했습니다. </br>
- 조치방안 : javascript단으로 날짜를 호출 시 split문법을 통해 '-'단위로 날짜를 쪼개어 비교처리를 진행했습니다. </br>
- 느낀점 : 펀딩만료기간을 구현하는 과정에서 SQL을 통해 값을 구현해낼 수 있었지만, java문법을 통해 DB에서 sql에 입력된 날짜를 불러와 현재의 날짜와 비교하여 
구문을 직접 처리하면서, javascript와 java 문법, jsp문법에 더 익숙해질 수있었습니다. 쉬운방법을 따라가기보다 제가 스스로 이해할 수 있는 코드를 직접 구현해내었기때문에
더 뿌듯한 코드입니다. </br>
<details>
<summary><b>상세</b></summary>
<div markdown="1">
  
    ```jsx
  <script type="text/javascript">
$(document).ready(function(){
	$("#fundingbtn").click(function(){
		console.log(codeS);
		location.href = "FUN-UI-03-01.jpg?codeS="+codeS;
	});
var dayday = $("input[name=end_Day]").val();
console.log(dayday);
var daysplit = dayday.split("-");
var year = daysplit[0];
console.log(year);
var month = daysplit[1];
console.log(month);
var day = daysplit[2];
console.log(day);
var dday = new Date(month+" "+day+","+year+", "+"00:00:00").getTime();


setInterval(function() {
var today = new Date().getTime();
var gap = dday - today;
var day = Math.ceil(gap / (1000 * 60 * 60 * 24));
var hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
var min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
var sec = Math.ceil((gap % (1000 * 60)) / 1000);
var tot =  "D-DAY까지 " + day + "일 " + hour + "시간 " + min + "분 " + sec + "초 남았습니다."
console.log(sec);
document.querySelector("#count").innerHTML =  day + "일 " + hour + "시간 " + min + "분 " + sec+ "초";
}, 1000);
});

</script>


<div>
</details> 
    
📌 입력값이 많아 코드가 길어지는 현상 
- 문제 : 입력값을 selectbox의 옵션값을 통해 받을때 1-12월까지 나오는 등 option의 입력값이 길어지는 현상</br>
- 현상 : 코드가 길어짐에 따라 화면 로딩 속도가 늦어질 수 있는 속도 문제/ 효율성 문제 </br>
- 원인 : 배열을 사용하지 않고 작성함에 따라 코드가 길어지며, 동적 처리 시 문제가 될 수 있음 </br>
- 조치방안 : for문의 반복문 배열 문법을 사용함에 따라 속도를 늦추고 효율적인 코드활용을 할 수 있다. </br>
- 해결과정 : 학원에서 배웠던 빠른 코드 진행을 위한 배열을 활용하여 option값을 집어넣었습니다. </br>
- 느낀점 : 빠르고 효율적인 로직이 무엇일까 고민하는 과정이 즐거웠고, 나중에 사용자가 입력한 값이 selectbox로 들어올 것까지 감안하고 상상해보면서 만들다보니 더 효율적인
코드가 나올 수 있었습니다. 매 순간 더 나은 코드가 무엇인지 고민하고, 내 손으로 코드를 만드는 고민의 과정이 값지다는 것을 알 수 있었습니다. 

</br>
<details>
<summary><b>상세</b></summary>
<div markdown="1">  
  
    ```jsx
    
 			<li><p>유효기간: 	&nbsp;	&nbsp;
			<select id="checkbox1">
				
			<%for(int i =1; i<=12; i++) {  %>
				<option value ="<%=i%>" id ="period1"><%=i %></option>
			<%} %>
			</select>
			
			<select id="checkbox2">
			<%for(int i=1900; i<=2021; i++){ %>
				<option value ="<%=i%>"  id ="period2"><%=i %></option>
			<%} %>
			</select>
					
			<li><p>생년월일: 	&nbsp;	&nbsp;
			<select id="birth1">
			<%for(int i=1900; i<=2021; i++){ %>
				<option  value ="<%=i%>" id="birth1"><%=i %></option>
			<%} %>
			</select>
			
			<select id="birth2">
			<%for(int i =1; i<=12; i++) {  %>
				<option  value ="<%=i%>" id="birth1"><%=i %></option>
			<%} %>
			</select>
			
			<select id="birth3">
			<%for(int i=1; i<=31; i++) {%>
				<option  value ="<%=i%>" id="birth1"><%=i %></option>
			<%} %>
			</select>	
    ```
  -
 <div>
</details> 



## 회고/느낀점 
-최적화된 프로세스가 무엇인지 고민하는 과정과, 직접 '구현하고자 하는 기술'이 무엇인지, 그 과정을 나름대로 직접 구현할 수 있는 과정을 찾아가는 것이 의미있던 시간이었습니다. 
-설계과정에서 팀원 간 더 좋은 프로세스가 무엇이고 권한을 4가지로 나누어 구성해가는 과정, 시간이 촉박해짐에 따라 서로 문제가 발견되었지만 오히려 문제를 해결해가며 기존의 프로젝트 완성에
위험을 주고 있는 요인(화면구성 시간이 할애됨)이 무엇인지 파악함에 따라 새로운 방식을 찾아가는 과정이 즐거웠습니다. 위기를 기회로 바꾸어가는 과정이 중요하다고 생각했습니다. 
-Bean과 cookie값을 이용하여 여러 화면에서 입력값을 다중으로 받아들이고 저장하여 http로 보내는 과정에서 중요한 데이터를 식별해내고 method를 달리하여 보내는 과정이 중요함을 알게 되었고
웹서비스에서는 특히 '보안'의 취약점을 보안하기 위해 노력해야함을 알게되었습니다. 이번 프로젝트에서는 post방식을 통해 화면에 노출하지 않고 servlet으로 보내야 함을 알 수 있었지만, 
더 심화적으로 보안문제를 해결해나갈 수 있도록 공부해야함을 알게되었습니다. jsp단에서는 중요정보는 노출하지 않도록 보안을 강화하는 방식을 배웠습니다. 


