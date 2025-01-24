function CheckAddProduct() {

	let productId = document.getElementById("productId");
	let pName = document.getElementById("pName");
	let unitPrice = document.getElementById("unitPrice");
	let unitsInStock = document.getElementById("unitsInStock");

	if (!check(/^[A-D][0-9]{3,7}$/, productId,
		"[제품 코드]\nA~D와 숫자를 조합하여 4~8자까지 입력하세요\n첫 글자는 반드시 A~D로 시작하세요"))
		return false;

	if (pName.value.length < 3 || pName.value.length > 50) {
		alert("[제품명]\n최소 3자에서 최대 50자까지 입력하세요");
		pName.select();
		pName.focus();
		return false;
	}

	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[제품 가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice.value < 0) {
		alert("[제품 가격]\n음수를 입력할 수 없습니다");
		unitPrice.select();
		unitPrice.focus();
		return false;
	} else if (!check(/^\d+$/, unitPrice, "[제품 가격]\n정수값만 입력하세요")) {
		return false;
	}

	if (isNaN(unitsInStock.value)) {              
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}

	if (unitsInStock.value < 0) {
		alert("[재고 수]\n음수를 입력할 수 없습니다");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp.test(e.value)){
			return true;
		}
		alert(msg);
		e.select();
		e.focus();
		return false;
	}

	document.newProduct.submit()
}