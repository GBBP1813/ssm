/*
	方案一：
		在页面中有四张图片，但是每次只显示其中的一张图片，其他3张隐藏。
		通过定时器改变四张图片的显示、隐藏状态（可以预设置css样式）
	方案二：
		将四张图片的图片名用数组进行存储，再通过定时器，每次加载不同的图片。
*/

//保存图片名的数组
var imgArray = [
	"index_banner1.png",
	"index_banner2.png",
	"index_banner3.png",
	"index_banner4.png"
];

//当前所显示的图片的索引
var imageIndex = 1;

var imageTimer;//定义一个全局变量

function startRotate() {
	var rotateFunc = function() {//匿名函数
		var image = document.getElementById("img1");
		//通过src属性改变图片的资源（图片名）
		image.src = "/xz/staticfile/img/index/"+ imgArray[imageIndex];
		//控制下标不要超过数组的长度
		if(imageIndex ==imgArray.length -1) {
			imageIndex = 0;
		} else {
			imageIndex++;
		}
	}

	//判断定时器是否已经启动了，已经启动则无需再次启动
	if(imageTimer) {
		return ;
	}

	//周期性定时器 setInterval(func, time);
	//每次启动定时器时都会返回一个timerId
	imageTimer = window.setInterval(rotateFunc, 3000);
}

function stopRotate() {
	//判断定时器是否已经启动了，已经启动才需要移除
	if(imageTimer) {
		//移除（暂停）定时器 clearInterval(timerId);
		window.clearInterval(imageTimer);
		//移除之后设置为null，为下一次可以正常启动新的定时器
		imageTimer = null;
	}
	
}

/*
window.onload = function() {
	startRotate();
}
*/

window.onload = startRotate;