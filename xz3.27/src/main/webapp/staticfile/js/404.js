window.onload = function() {

	var speed = -1;	//一开始图片向左滚动
	
	var ul =document.getElementById("ul");
	ul.innerHTML += ul.innerHTML;	//复制图片区域

	//通过标签名获取元素
	var li = document.getElementsByTagName("li");
	//计算ul现在的尺寸
	ul.style.width = li.length*250 + 'px';

	//图片滚动的主要方法
	//所有的left值和偏移量设置都是根据元素的定位特征来设置的
	function move() {
		if(ul.offsetLeft < -(ul.offsetWidth/2 )) {
			ul.style.left = 0;
		}
		if(ul.offsetLeft > 0) {
			ul.style.left = -(ul.offsetWidth/2) + 'px';
		}
		ul.style.left = ul.offsetLeft+speed+'px';	
	}

	var timer = setInterval(move, 41);

	/*监听事件
		addEventListener(js事件, func, 布尔值);
		布尔值： 指定事件是否在捕获或冒泡阶段执行。
	*/
	ul.addEventListener("mousemove", function() {
		//鼠标移入清除定时器
		clearInterval(timer);	
	}, false );

	//鼠标移出时再次启动定时器
	ul.addEventListener("mouseout", function() {
		timer = setInterval(move, 41);
	}, false );

}