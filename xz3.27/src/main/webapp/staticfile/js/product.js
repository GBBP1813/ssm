window.onload = function() {
	//判断页面中能显示的条数
	var currentNum = document.getElementById("currentNum").value;
	var currentId;
	if(currentNum == 3){
		currentId = "o1";
	}
	else if(currentNum == 5){
		currentId = "o2";
	}
	else if(currentNum == 8){
		currentId = "o3";
	}
	else if(currentNum == 10){
		currentId = "o4";
	}
	document.getElementById(currentId).selected = 'selected';
	
	//2.计算总价
		
	}
