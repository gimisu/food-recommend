function CheckAddProduct() {
	
	var foodId = document.getElementById("foodId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	//상품 아이디 체크
	if (!check(/^[ㄱ-ㅎ][가-힣]$/, foodId,"[음식 분류]\n한글로 입력하세요"))
		return false;
	//상품명 체크
	if (name.value.length < 4 || name.value.length > 12) {
		alert("[상품 코드]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
		
	}
	//상품 가격 체크
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if (unitPrice.value < 0){
		alert("[가격]\n음수는 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+(?:[.]?[\d])?$/, unitPrice, "[가격]\n소수점 둘째 자리까지만 입력하세요. "))
		return false;
		
	function check(regExp, e, msg) {
		console.log(e);
		
		if (regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	
	document.newProduct.submit()
}

