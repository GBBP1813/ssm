<%@page language="java" pageEncoding="utf-8" %>

<%@include file="../base.jsp" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
  <meta charset="UTF-8">
  <title>商品详情页</title>
  <link rel="stylesheet" href="${ctx }/staticfile/css/base.css">
  <link rel="stylesheet" href="${ctx }/staticfile/css/header.css">
  <link rel="stylesheet" href="${ctx }/staticfile/css/product-details.css">
</head>
<body>
    <!--1、页面顶部 ：#header -->
    <!-- <iframe name="content_frame"
		width="100%" height="120px"
		marginwidth=0 marginheight=0
		scrolling="no"
		frameborder="0"
		src="header.html"
	></iframe> -->
	<div height="120px">
		<c:import url="header.jsp"></c:import>
	</div>
     
  <div class="part main" style="
    width: 1024px;
    margin: 20px auto;
">
   	<div class="center">
    <!--2、面包屑导航 ：#bread-crumb -->
    <div id="bread-crumb">
      <a href="#">首页</a>
      <span>&gt;</span>
      <a href="#">学习用品</a>
      <span>&gt;</span>
      <a href="#">笔记本电脑</a>
      <span>&gt;</span>
      <span id="fname"></span>
    </div>
    <div id="product-details">
      <div id="preview">
        <div id="mediumDiv">
          <img id="mImg" src="${ctx }/staticfile/${goods.pic}">
          <div id="mask"></div>
          <div id="superMask"></div>
        </div>
        <div id="largeDiv"></div>
        <h1>
          <a class="backward disabled"></a>
          <a class="forward"></a>
        </h1>
      </div>
      <!--3.2 右上 ：文字信息 #show-details width:490px-->
      <div id="show-details">
        <h1></h1>
        <h3>
          <a href="#">${goods.title }</a>
        </h3>
        <div class="price">
          <div class="stu-price">
            <b>学员售价：</b>
            <span>¥${goods.price }</span>
          </div>
          <div class="promise">
            <b>服务承诺：</b>
            *退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货
          </div>
        </div>
        <!-- 客服 -->
        <p class="parameter">
          <b>客服：</b>
          <span>联系客服</span>
          <img src="${ctx }/staticfile/img/product_detail/kefuf.gif">
        </p>
        <!-- 规格 -->
        <div class="spec clear">
          <p>规格：</p>
          <div>
            <%-- <a href="05-product-details.html?lib=${laptop.lid}" class=${
              laptop.lid===details.lid?"active":""
            }>{laptop.spec}</a> --%>
          </div>
        </div>
        <!-- 数量 -->
        <p class="account">
          <span>数量：</span>
          <button class="number-reduce">-</button>
          <input type="text" value="1" id="count">
          <button class="number-add">+</button>
        </p>
        <!-- 购买部分 -->
        <!-- 增加一个隐藏域，用于存放goodsId -->
        <input type="hidden" value="${goods.goodsId }" id="goodsId" />
        <div class="shops">
          <a href="#" class="buy">立即购买</a>
          <a href="javascript:;" onclick="addCart();" class="cart">
            <img src="${ctx }/staticfile/img/product_detail/product_detail_img7.png" 
            alt="加入购物车">
            	 加入购物车
          </a>
          <a href="#" class="collection">
            <img src="${ctx }/staticfile/img/product_detail/product_detail_img6.png">
            <br>
            	收藏
          </a>
          <script >
          	function addCart(){
          		var goodsId = document.getElementById("goodsId").value;
          		var count = document.getElementById("count").value;
          		window.location.href="addCart?goodsId="+goodsId +"&count="+count;
          	}
          </script>
        </div>
      </div>
      <!--3.3 下 ：为你推荐 #recommend -->
      <div id="recommend">
        <p>
          为你推荐
          <span>大家都在看</span>
        </p>
        <div id="demo" class="clear">
          <div id="demo1">
            <div class="details_1 lf">
              <div class="detail_img1">
                <img src="${ctx }/staticfile/img/product_detail/product_detail_1.png">
              </div>
              <p>ThinkPad New S2 (20GUA00QCD)13.3英寸超霸</p>
            </div>
            <div class="details_1 lf">
              <div class="detail_img1">
                <img src="${ctx }/staticfile/img/product_detail/product_detail_2.png">
              </div>
              <p>戴尔 DELL燃7000 R1605S 超霸</p>
            </div>
            <div class="details_1 lf">
              <div class="detail_img1">
                <img src="${ctx }/staticfile/img/product_detail/product_detail_3.png">
              </div>
              <p>戴尔(DELL)魔方15MF Pro-R2505TSS灵</p>
            </div>
            <div class="details_1 lf">
              <div class="detail_img1">
                <img src="${ctx }/staticfile/img/product_detail/product_detail_4.png">
              </div>
              <p>联想(Lenovo) YOGA900 (YOGA4 PRO)多彩版</p>
            </div>
          </div>
        </div>
      </div>
      <div style="clear:both"></div>
    </div>
    
    <!--4、商品详情：#item-info-->
    <div id="item-info">
      <!--1、左侧：商品详情，商品评价(800px)-->
      <div id="details">
        <!-- 1、页签 -->
        <ul class="tab">
          <li class="active">
            <a href="#">商品详情</a>
          </li>
          <li>
            <a href="#">商品评价</a>
          </li>
        </ul>
        <!--2、规格参数-->
        <div id="param">
          <p>
            规格参数
            <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_1.png">
          </p>

          <ul class="args">
            
            
            <li>
              <a href="#">商品名称：AppleMacBook Air</a>
            </li>
            <li>
              <a href="#">系统：MacOS</a>
            </li>
            <li>
              <a href="#">内存容量：8GB</a>
            </li>
            <li>
              <a href="#">分辨率：1920:*1080</a>
            </li>
            <li>
              <a href="#">显卡型号：集成显卡</a>
            </li>
            <li>
              <a href="#">处理器：Intel i5低功耗版</a>
            </li>
            <li>
              <a href="#">显存容量：其他</a>
            </li>
            <li>
              <a href="#">分类：轻薄本</a>
            </li>
            <li>
              <a href="#">硬盘容量：128G固态</a>
            </li>
           
          </ul>
        </div>
        <!--3、商品介绍-->
        <div id="product-intro"></div>
        <!--4、售后保障-->
        <div id="sale-protection">
          <p>
            售后保障
            <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_3.png">
          </p>
          <div>
            <p class="title">
              <img src="${ctx }/staticfile/img/product_detail/product_detail_img16.png" alt="">
              正品保障
            </p>
            <p class="content">
              阿甲学子商城向您保证所售商品均为正品行货，阿甲自营商品开具机打发票或电子发票。
            </p>
            <p class="title">
              <img src="${ctx }/staticfile/img/product_detail/product_detail_img16.png" alt="">
              全国联保
            </p>
            <p class="content">
              凭质保证书及阿甲商城发票，可享受全国联保服务，与您亲临商场选购的商品享受相同的质量保证。阿甲商城还为您提供具有竞争力的商品价格和运费政策，请您放心购买！ 注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
            </p>
          </div>
        </div>
        <!--5、包装清单-->
        <div id="packing-list">
          <p>
            包装清单
            <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_2.png">
          </p>
          <div>
            笔记本 x1 适配器 x1 电源线 x1 电池 x1 说明书（电子版）x1 备注：笔记本电脑的背面只会标注此电脑的系列，例如： XPS 13-9360 ， 如果您需要核实此电脑的具体配置型号是否与阿甲页面相符，可电话咨询阿甲厂商：800-858-2969
          </div>
        </div>
      </div>
      <!--2、右侧：加入购物车(160px)-->
      <ul id="addCart">
        <li>
          <img src="${ctx }/staticfile/img/product_detail/product_detail_img9.png" alt="">
        </li>
        <li>
          <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_g_1.png" alt="">
          <a href="#param">规格参数</a>
        </li>
        <li>
          <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_t_1.png" alt="">
          <a href="#product-intro">商品介绍</a>
        </li>
        <li>
          <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_d_1.png" alt="">
          <a href="#sale-protection">售后保障</a>
        </li>
        <li>
          <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_bao_1.png" alt="">
          <a href="#packing-list">包装清单</a>
        </li>
        <li>
          <img src="${ctx }/staticfile/img/product_detail/product_detail_icon_up_1.png" alt="">
          <a href="#">回到顶部</a>
        </li>
      </ul>
    </div>
    </div>
  </div>
    <!--5、页面底部 ：#footer-->
    <object style="border:0px; margin-top:50px;"
		type="text/x-scriptlet"
		width=100% height=190px
		data="footer.html"
	></object>
    <!--<div height="190px">
         <c:import url="footer.jsp"></c:import>
     </div>-->
</body>
</html>