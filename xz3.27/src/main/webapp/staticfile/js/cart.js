var totalM= 0;
/*window.onload = function() {
	
	totalM= 0;
	//计算单条记录中的总金额( price * num )
	var totals = document.getElementsByName("total");
	
	for(var i=0;i<totals.length;i++){
		var price = document.getElementById("price" + i).innerText;
		var num = document.getElementById("num" + i).innerText;
		totalM += num*price;
		//alert(totalM);
		totals[i].innerText = price * num;
	}
	document.getElementById("totalPrice").innerText = totalM;
	
}*/


function add(i){
	//alert(i);
	//1.获取当前的num的值
	var num = document.getElementById("num" + i).value;
	//2.进行+1操作,并且修改num当前值
	document.getElementById("num" + i).value = ++num;
	//3.获取goodsId
	var goodsId = document.getElementById("goodsId" + i).value;
	//4.触发请求
	window.location.href="changeNum?num=" + num + "&goodsId=" + goodsId;
}

function reduc(i){
	//alert(i);
	//1.获取当前的num的值
	var num = document.getElementById("num" + i).value;
	if(num>2){
		//2.进行-1操作,并且修改num当前值
		document.getElementById("num" + i).value = --num;
	}else{
		num = 1;
	}
	
	//3.获取goodsId
	var goodsId = document.getElementById("goodsId" + i).value;
	//4.触发请求
	window.location.href="changeNum?num=" + num + "&goodsId=" + goodsId;
}

function change(i){
	//alert(i);
	//1.获取当前的num的值
	var num = document.getElementById("num" + i).value;
	
	//3.获取goodsId
	var goodsId = document.getElementById("goodsId" + i).value;
	//4.触发请求
	window.location.href="changeNum?num=" + num + "&goodsId=" + goodsId;
}

function changeCurrentSize() {
	var currentSize = document
			.getElementById("currentSize").value;
	window.location.href = "toCart?currentSize="
			+ currentSize;
}
function del(i){
	var goodsId = document.getElementById("goodsId" + i).innerText;
	window.location.href="toDel?goodsId=" + goodsId;
	
}

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
	var x=0;
	var totals=document.getElementsByName("total");
	for(var i=0;i<totals.length;i++){
		var price=document.getElementById("price"+i).innerText;
		var num=document.getElementById("num"+i).innerText;
		totals[i].innerText=price*num;
		x=x+price*num;
		
	}
	document.getElementById("totalPrice").innerText=x;
	//3.计算所有价格

	/*document.getElementByName("tot").innerText=100;*/
	/*var totals=document.getElementsByName("total");
	var x=500;*/
/*	for(var i=0;i<totals.length;i++){
		var price=document.getElementById("price"+i).innerText;
		var num=document.getElementById("num"+i).value;
		 x+=(price*num);
		
	}*/

	
}

