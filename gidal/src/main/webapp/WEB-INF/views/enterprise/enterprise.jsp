<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기달</title>

<%@ include file = "/WEB-INF/views/include/head.jsp" %>

</head>
<body>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
<%@ include file = "/WEB-INF/views/include/nav.jsp" %>

<script type="text/javascript">
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);


           $("[name=enterprise_add1]").val(data.zonecode);
           $("[name=enterprise_add2]").val(fullRoadAddr);

           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

/* function DosignUp() {

    var enterprise_email = $("#enterprise_email").val();
    var enterprise_password = $("#enterprise_password").val();
    var enterprise_passwordCheck = $("#enterprise_passwordCheck").val();
    var enterprise_name = $("#enterprise_name").val();
    var enterprise_phoneNum = $("#enterprise_phoneNum").val();
    var enterprise_businessName = $("#enterprise_businessName").val();
    var enterprise_phone = $("#enterprise_phone").val();
    var enterprise_sector = $("#enterprise_sector").val();
    var enterprise_service = $("#enterprise_servic").val();
    var enterprise_add1 = $("#enterprise_add1").val();
    var enterprise_add2 = $("#enterprise_add2").val();
    var enterprise_add3 = $("#enterprise_add3").val();
    var enterprise_operaingTime = $("#enterprise_operaingTime").val();
    var enterprise_closed = $("#enterprise_closed").val();


    if(enterprise_email.length == 0){
        alert("이메일을 입력해 주세요");
        $("#enterprise_email").focus();
        return false;
    }

    if(enterprise_password.length == 0){
        alert("비밀번호를 입력해 주세요");
        $("#enterprise_password").focus();
        return false;
    }

    if(enterprise_password != enterprise_passwordCheck){
        alert("비밀번호가 서로 다릅니다. 비밀번호를 확인해 주세요.");
        $("#signUpUserPwd").focus();
        return false;
    }


    if(confirm("회원가입을 하시겠습니까?")){
        alert("회원가입을 축하합니다");
        return true;
    }

} */

</script>



	<div style="max-width: 1000px; margin-right: auto; margin-left: auto;">
		<div class="jumbotron">
			<h1>기업 회원가입</h1>

			<hr class="my-4">
			<!-- <p class="lead">This is a simple hero unit, a simple
			jumbotron-style component for calling extra attention to featured
			content or information.</p>
		<p>It uses utility classes for typography and spacing to space
			content out within the larger container.</p>
		<p class="lead">
			<a class="btn btn-primary btn-lg" href="#" role="button">Learn
				more</a>
		</p> -->

			<div class="form-group" style = "max-width : 400px; margin : auto;">
				<form action = "join" method = "post">
					<p>
						<label class="col-form-label" for="inputDefault">이메일</label>
						<input type="email" class="form-control" name = "enterprise_email" placeholder="이메일" id="inputDefault">

						<label class="col-form-label" for="inputDefault">패스워드</label>
						<input type="password" class="form-control" name = "enterprise_password"placeholder="패스워드" id="inputDefault">

						<label class="col-form-label" for="inputDefault">패스워드확인</label>
						<input type="password" class="form-control"name = "enterprise_passwordCheck" placeholder="패스워드확인" id="inputDefault">

						<label class="col-form-label" for="inputDefault">이름</label>
						<input type="text" class="form-control" name = "enterprise_name" placeholder="이름" id="inputDefault">

						<label class="col-form-label" for="inputDefault">핸드폰번호</label>
						<input type="text" class="form-control" name = "enterprise_phoneNum" placeholder="핸드폰번호" id="inputDefault">


					</p>

					<hr class="my-4">

					<p>
						<label class="col-form-label" for="inputDefault">매장명</label>
						<input type="text" class="form-control" name = "enterprise_businessName" placeholder="매장명" id="inputDefault">

						<label class="col-form-label" for="inputDefault">매장 전화번호</label>
						<input type="tel" class="form-control" name = "enterprise_phone" placeholder="매장전화번호" id="inputDefault">



						<label class="col-form-label" for="inputDefault">매장 주소</label>
						<div class="form-group">
						<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="enterprise_add1" id="add1" type="text" readonly="readonly" >
						    <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>
						</div>
						<div class="form-group">
						    <input class="form-control" style="top: 5px;" placeholder="도로명 주소" name="enterprise_add2" id="add2" type="text" readonly="readonly" />
						</div>
						<div class="form-group">
						    <input class="form-control" placeholder="상세주소" name="enterprise_add3" id="add3" type="text"  />
						</div>



						<label class="col-form-label" for="inputDefault">영업시작시간</label>
						<select class="custom-select" name = "enterprise_operatingOpenTime" id="exampleSelect1">
							<%@ include file = "/WEB-INF/views/include/time.jsp" %>
						</select>


						<label class="col-form-label" for="inputDefault" >영업종료시간</label>
						<select class="custom-select"  name = "enterprise_operatingColseTime" id="exampleSelect1">
							<%@ include file = "/WEB-INF/views/include/time.jsp" %>
						</select>

						<label class="col-form-label" for="inputDefault">브레이크타임시작시간 </label>

						<select class="custom-select"  name = "enterprise_breakStartTime" id="exampleSelect1">
							<%@ include file = "/WEB-INF/views/include/time.jsp" %>
						</select>

						<label class="col-form-label" for="inputDefault">브레이크타임종료시간 </label>
						<select class="custom-select" name = "enterprise_breakCloseTime" id="exampleSelect1">
							<%@ include file = "/WEB-INF/views/include/time.jsp" %>
						</select>

						<label class="col-form-label" for="inputDefault">업종</label>
						<input type="text" class="form-control"  name = "enterprise_sectors" placeholder="업종" id="inputDefault">

						<label class="col-form-label" for="inputDefault">대표이미지</label>
						<input type="file" class="form-control-file" name = "enterprise_mainImg" id="exampleInputFile" aria-describedby="fileHelp">

						<label class="col-form-label" for="inputDefault">서비스</label>
						<select class="custom-select" name = "enterprise_service" id="exampleSelect1">
							<option>웨이팅 서비스</option>
							<option>예약 서비스</option>
							<option>웨이팅 + 예약 서비스</option>
						</select>

						<label class="col-form-label" for="inputDefault">매장 이미지</label>
						<input type="file" class="form-control-file" name = "enterprise_img1" id="exampleInputFile" aria-describedby="fileHelp">
						<input type="file" class="form-control-file" name = "enterprise_img2" id="exampleInputFile" aria-describedby="fileHelp">
						<input type="file" class="form-control-file" name = "enterprise_img3" id="exampleInputFile" aria-describedby="fileHelp">
						<input type="file" class="form-control-file" name = "enterprise_img4" id="exampleInputFile" aria-describedby="fileHelp">
					</p>
					<p>
						<button type="submit" class="btn btn-primary btn-lg btn-block">회원가입</button>
					</p>
				</form>

			</div>

		</div>

	</div>

</body>
</html>