<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수경이의 웹 페이지</title>
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Courgette&display=swap');
  h1 {
    font-size: 60px;
    font-weight: bold;
    font-family: 'Courgette', cursive;
    cursor: pointer;
  }

  @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@500&display=swap');
  h2 {
    font-size: 30px;
    font-weight: bold;
    font-family: 'Dancing Script', cursive;
    padding: 10px;
  }

  button {
    border: none;
    background-color: white;
    font-size: 15px;
    font-weight: bold;
  }
  
  .basket {
  	border: none;
    background-color: white;
    font-size: 15px;
    font-weight: bold;
  }
  
  .cart-count {
  	display: inline-block;
  	min-width: 11px;
  	height: 15px;
  	lin-height: 15px;
  	margin: -1px 0 0 2px;
  	padding: 1px 3px;
  	text-align: center;
  	background: #d6d6d6;
  	border-radius: 15px;
  	font-family:Roboto, Arial, sans-serif;
  	font-size: 10px;
  	color: white;
  	vertical-align: middle;
  }
  
  #log {
    float: right;
  }

  .container {
    width: 960px;
    margin : 0 auto;
  }
  .navi{
    width:960px;
    height:60px;
    padding-bottom:10px;
    border-bottom:2px solid gray;
    font-weight: bold;
  }
  .navi ul{
    list-style: none;
    padding-top:10px; 
    padding-bottom:5px;
  }
  .navi ul li {
    float:left;
    width:130px;
    padding:10px;   
  }
  .navi a:link, .navi a:visited{
    display:block;
    font-size:14px;
    color: black;
    padding: 10px; 
    text-decoration: none;  
    text-align: center;
  }
  .navi a:hover,  .navi a:focus {
    background-color:#222;  
    color:white; 
  }
  .navi a:active {
    background-color:black;  
  }
	
	.slider{
	    width: 350px;
	    height: 280px;
	    position: relative;
	    margin: 0 auto;
	    overflow: hidden; /* 현재 슬라이드 오른쪽에 위치한 나머지 슬라이드 들이 보이지 않도록 가림 */
	}
	
	.slider input[type=radio]{
	    display: none;
	}
	
	ul.imgs{		
	    padding: 0;
	    margin: 0;
	    list-style: none;    
	}
	
	ul.imgs li{
	    position: absolute;
	    left: 640px;
	    transition-delay: 1s; /* 새 슬라이드가 이동해 오는 동안 이전 슬라이드 이미지가 배경이 보이도록 지연 */
	
	    padding: 0;
	    margin: 0;
	}
	
	
	.bullets{
	    position: absolute;
	    left: 50%;
	    transform: translateX(-50%);
	    bottom: 20px;
	    z-index: 2;
	}
	
	.bullets label{
	    display: inline-block;
	    border-radius: 50%;
	    background-color: rgba(0,0,0,0.55);
	    width: 20px;
	    height: 20px;
	    cursor: pointer;
	}
	
	/* 현재 선택된 불릿 배경 흰색으로 구분 표시 */
	.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
	    background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
	    background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
	    background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
	    background-color: #fff;
	}
	
	.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
	    left: 0;
	    transition: 0.5s;
	    z-index:1;
	}
	
	.h2_new {
		margin-top: 100px;
	}
	
	img {
		vertical-align: middle;
	}
	
	.best ul.prdList {
		display: table;
		width: 1240px;
		min-width: 756px;
		margin: 0px auto 0;
		font-size: 0;
		line-height: 0;
	}
	
	.best ul.column4 li.item {
		width: 25%;
	}
	
	.best ul.prdList li.item {
		display: inline-block;
		margin: 20px 0px 40px 0;
		color: gray;
		vertical-align: top;
	}	
	
	.new ul.prdList {
		display: table;
		width: 1240px;
		min-width: 756px;
		margin: 0px auto 0;
		font-size: 0;
		line-height: 0;
	}
	
	.new ul.column4 li.item {
		width: 25%;
	}
	
	.new ul.prdList li.item {
		display: inline-block;
		margin: 20px 0px 40px 0;
		color: gray;
		vertical-align: top;
	}
	
	.prdList .name {
		position: relative;
		padding: 7px 0;
		border-bottom: 1px solid #C2C2C2;
		width: 25px;
		margin: 10px auto 0;
		text-algin: left;
	}
	
	ul.prdList .name {
		position: relative;
		padding: 7px 0;
		border-bottome: 1px solid #C2C2C2;
		width: 250px;
		margin: 10px auto 0;
		text-align: left;
	}
	
	p {
		display: block;
		margin-block-start: 1em;
		margin-block-end: 1em;
		margin-inline-start: 0px;
		margin-inline-end: 0px;
	}
	
	.prdList .name a {
		color: gray;
		text-align: left;
	}
	
	a {
		text-decoration: none;
		outline: none;
	}
	
	.displaynone {
		display: none !important;
	}
	
	strong {
		font-weight: bold;
	}
	
	.box {
		position: relative;
		margin: 0 auto;
		font-size: 11px;
		line-height: 1.8em;
	}	
	
	.product-listitem {
		margin: 7px auto 0;
		padding: 0 0px;
		font-size: 11px;
		width: 250px;
		text-align: left;
	}
	
	.prdList .box .soldCount {
		color: black;
		display: none;
	}
	
	ul.prdList li.item div.box{
		position: relative;
		margin: 0 auto;
		font-size: 11px;
		line-height: 1.8em;
	}
	
	.more {    
	    text-align: center;
	    font-size: 30px;
	    background-color: white;
	    border-color: gray;
	    margin-top: 30px;	
	    cursor:pointer;    
  	}
  	
  	.more:active {
	    background-color: #a3a3a3;
	    color: white;
  	}
  	
  	.best_hide {
  		width: auto;
  		margin: 0 auto;
  	}  	
  	
  	.bestdutton {
  		text-align: center;
  	}
  	
  	.new_hide {
  		width: auto;
  		margin: 0 auto;
  	}  	
  	
  	.newdutton {
  		text-align: center;
  	}
  	
  	img {
  		padding: 4px;
  	}
  	
  	
  	
  	
  	
  	




  #content {
    position: relative;
    width: 100%;
    margin: 0 auto;
    border: 0px solid black;
    min-height: 900px;
  }

  #footer {
    margin: 60px 0 auto;
    clear: both;
    font-family: "Lato", sans-serif;
    font-weight: normal;
  }

  #footer .inner {
    overflow: hidden;
    position: relative;
    width: 1266px;
    margin: 0 auto;
  }

  .inner_box {
    overflow: hidden;
    height: 487px;
    position: relative;
  }

  .inner_box .utilMenu {
    clear: both;
    overflow: hidden;
    height: 43px;
    color: #969696;
    margin: 0 0 44px;
    border-top: 1px solid white;
    border-bottom: 1px solid white;
  }

  .inner_box .customer li h3 {
    color: #333;
    font-family: "Lato", sans-serif;
    font-weight: bold;
    margin-bottom: 23px;
    padding-left: 10px;
    width: 275px;
    text-align: left;
    height: 24px;
    line-height: 24px;
    border: 0px solid #ccc;
    font-size: 11px;
  }

  .inner_box .customer li p {
    text-transform: uppercase;
    color: #626262;
    padding-left: 10px; 
  }

  .inner_box .customer li {
    float: left;
    border-right: 1px dotted #DADADA;
    font-size: 10px;
    letter-spacing: 0.05em;
    padding: 10px;
    height: 168px;
    width: 275px;
  }

  .inner_box .customer li.cus04 {
    border-right: 0px;
    width: 275px;
  }

  li {
    list-style: none;
  }



  
  </style>
<body>
  <header>
  <h1 align="center"> Beads Accessories</h1>   
  <div id="log">
  	  <a href="logout.jsp"><button>Logout</button></a>
	  <input type="button" value="장바구니" class="basket" onclick="location.href='basket.jsp'">
	  	<span class="cart-count">
	  		<span class="count">0</span>
	  	</span>
	  	<input type="button" value="주문" class="basket" onclick="location.href='Order.jsp'">
  </div>
  </header>
  <div class="container">
    <nav class="navi">
      <ul class="ul">
        <li class="li"><a href="loga.jsp">목걸이</a></li>
	        <li class="li"><a href="logb.jsp">팔찌</a></li>
	        <li class="li"><a href="logc.jsp">반지</a></li>
	        <li class="li"><a href="logd.jsp">귀걸이</a></li>
	        <li class="li"><a href="loge.jsp">브로치</a></li>
	        <li class="li"><a href="logf.jsp">기타</a></li>
      </ul>
    </nav>  
  </div>
  <br>

  <section>
  	<article>
	  	<div class="slider">
		    <input type="radio" name="slide" id="slide1" checked>
		    <input type="radio" name="slide" id="slide2">
		    <input type="radio" name="slide" id="slide3">
		    <input type="radio" name="slide" id="slide4">
		    <ul id="imgholder" class="imgs">
		        <li><img src="img/common.jpg"></li>
		        <li><img src="img/브로치2.jpg"></li>
		        <li><img src="img/목걸이2.jpg"></li>
		        <li><img src="img/목걸이3.jpg"></li>
		    </ul>
		    <div class="bullets">
		        <label for="slide1">&nbsp;</label>
		        <label for="slide2">&nbsp;</label>
		        <label for="slide3">&nbsp;</label>
		        <label for="slide4">&nbsp;</label>
		    </div>
		</div>
	</article> 
	
	
    <div class="best">
    <h2 align="center">Best</h2>
    <hr width = "40px" color = "gray"; text-align= "center">
    	<ul class="prdList column4">
    		<li class="item record">
    			<div class="box">
    			<img src="img/타이_목걸이.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loga_1.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 : 
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]타이_목걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;"> 소비자가 </span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">35,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">32,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 색다른 포인트 타이 목걸이 !</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/귀걸이4.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logd_3.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 : 
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]부채꼴 귀걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">37,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">35,700원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">♥공작새 날개 처럼 우아한 귀걸이♥ <br>착용하면 우아함이 더욱 더 Up! Up! </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/귀걸이3.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logd_2.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]크리스탈로 제작한 물방울 귀걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">38,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">37,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 세련된 그 자체 !! <br> ♥직접 실물 영접해 보세용♥</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/목걸이2.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loga_3.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]카메오 목걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">39,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">38,500원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">옷까지 고급져 보이는 효과 !!</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li> 		
    		
    		<div class="best_img">
    		<div style="display: none;" class="best_hide">
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/브로치2.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loge_2.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :   						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]꽃 브로치
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">40,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">39,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">어느 옷에 달아도 어울리는 브로치♥<br>
                														스톤으로 고급짐이 더 업그레이드~!!<br>
                														"선물용으로도 많이 합니당 ^^"</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		  		
    		<li class="item record">
    			<div class="box">
    			<img src="img/목걸이3.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loga_4.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]영롱한 십자가 목걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">40,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">39,500원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명 </span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> ♡모카 크리스탈 매혹적♡ </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/목걸이1.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loga_2.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]여인의 향기 목걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">38,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">37,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 여인의 향이 느껴진 것 같은 ~~ </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/팔찌2.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logb_2.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[BEST]진주+골드 조합 팔지❣
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">35,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">32,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 심플하게 이쁜 팔찌<br>세트인 반지도 있어요~~</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		</div>
    		<div class="bestdutton">
    			<input value="+ More" class="more button" onclick="if(this.parentNode.parentNode.getElementsByTagName('div')[0].style.display != ''){this.parentNode.parentNode.getElementsByTagName('div')[0].style.display = '';this.value = 'Hide';}else{this.parentNode.parentNode.getElementsByTagName('div')[0].style.display = 'none'; this.value = '+ More';}" type="button" />					
			</div>			
    	</ul>
    </div>
    
    <div class="new">
    <h2 class="h2_new" align="center">New</h2>
    <hr width = "40px" color = "gray"; text-align= "center">
    	<ul class="prdList column4">
    		<li class="item record">
    			<div class="box">
    			<img src="img/팔찌1.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logb_1.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 : 
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]꽃 팔찌
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;"> 소비자가 </span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">29,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">28,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 누가 꽃이 ~ 게 ~! </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/브로치3.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loge_3.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 : 
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]나비 브로치
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">38,500원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">38,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">♥착용하면 고급 업그레이드 !♥ </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/귀걸이5.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logd_4.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]빈티지 에메랄드 인어공주 롱드롭 비즈 귀걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">30,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">29,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 인어공주를 연상시키는 !<br>화려한 롱드롭 귀걸이</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/반지1.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logc_1.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]진주+골드 조합 반지
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">34,300원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">34,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">심플하게 이쁜 반지<br>진주+골드 조합 팔찌와 세트로 착용하면 <br>더욱 업그레이드된 이쁨을 장착할 수 있어용 ㅎㅎ</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li> 		
    		
    		<div class="new_img">
    		<div style="display: none;" class="new_hide">
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/목걸이4.PNG" width="300" height="300">
    			<p class="name">
    				<a href="logincomp_bag_detail.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :   						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]가방 목걸이
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">39,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">38,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">귀엽게 ~ 심플하게 ~ ♥<br> 모든 가능한 가방 목걸이 !</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		  		
    		<li class="item record">
    			<div class="box">
    			<img src="img/팔찌3.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logb_3.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]네줄 엮음 팔찌
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">40,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">39,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명 </span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> ♡고급진 팔찌♡ </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/브로치4.jpg" width="300" height="300">
    			<p class="name">
    				<a href="loge_4.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]웨스턴 브로치
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">38,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">36,500원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 심플하면서 고급진 브로치 ~ </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/귀걸이2.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logd_1.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							[New]크리스탈 물방울
    					</span>
    					<br>
    				</a>
    			</p>
    			<ul class="product-listitem">
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #555555;">소비자가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">35,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">33,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;"> 색다른 디자인 ! </span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count"></strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		</div>
    		<div class="newdutton">
    			<input value="+ More" class="more button" onclick="if(this.parentNode.parentNode.getElementsByTagName('div')[0].style.display != ''){this.parentNode.parentNode.getElementsByTagName('div')[0].style.display = '';this.value = 'Hide';}else{this.parentNode.parentNode.getElementsByTagName('div')[0].style.display = 'none'; this.value = '+ More';}" type="button" />					
			</div>			
    	</ul>
    </div>
  </section>

  <footer>
    <br>
    <br>
    <br>
    <br>
    <br>
    <hr width = "1500" color = "#a39e9e"; text-align= "center">
    <div id="content">
      <div id="footer">
        <div class="inner">
          <div class="inner_box">
            <ul class="customer">
              <li class="cus01">
                <h3>CUSTOMER CENTER</h3>
                <p class="callno">031-123-1234</p>
                <p>
                  평일 10:00am ~ 18:00pm
                </p>
                <p>(Lunch 12:00pm ~ 13:30pm)</p>
                <p>토/일/공휴일 휴무</p>
              </li>
              <li>
                <h3>BANK INFO</h3>
                <p class="bankinfo">우리은행 1234-123-123456</p>
                <p class="bankinfo">국민은행 5014-01-423175</p>
                <p class="bankinfo">농협은행 1382-02-142186</p>
                <p class="bankinfo">기업은행 030-155721-01-010</p>
                <p></p>
              </li>
              <li class="cus03">
                <h3>Company</h3>
                <p>예금주: (주)비즈 악세서리</p>
              </li>
              <li class="cus04">
                <h3>Return</h3>
                <p>경기도 용인시 처인구 용인대학로 134</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>