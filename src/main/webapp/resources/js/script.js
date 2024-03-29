/**
 * 
 */

// 주소찾기 (우편번호 등록)
function addressSerch() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address1").value = roadAddr;
            document.getElementById("address2").value = data.jibunAddress;
            
            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open({
    	popupName:'postCode'
    });
}

function sitterser() {
	
	$('input:checkbox[name="pet_cd"]:not(:checked)').each(function(){
		 $(this).val('0');
		 $(this).prop("checked", true); 
	});
	
		
}



// sitter/sitter(펫시터찾기)
function sittingCheck(){
	
	var gSize = "";

	$("input[name=pet_cd]:checked").each(function() {

	if(gSize == ""){

	gSize = $(this).val();

	} else {

	gSize = gSize + "," + $(this).val();

	}

	});

/*	if(window.sessionStorage.getItem("cust_id") == null){
		alert("로그인이 필요한 서비스 입니다. 로그인 후 이용해 주세요");
		window.location='/tpj/cust/login';
	} else*/
	
	if(!document.sitterMatching.SV_AREA.value){
		alert("시 또는 구를 입력해 주세요.");
		document.sitterMatching.SV_AREA.focus();
		return false;
	} else if(!document.sitterMatching.WK_START.value){
		alert("서비스 시작일을 지정해 주세요.");
		document.sitterMatching.WK_START.focus();
		return false;
	}else if(!document.sitterMatching.WK_END.value){
		alert("서비스 종료일을 지정해 주세요.");
		document.sitterMatching.WK_END.focus();
		return false;
	} else if(gSize==""){
		alert("한마리 이상의 반려동물을 선택하셔야 합니다.");
		return false;
	}
	
	
}

