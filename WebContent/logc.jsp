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
	
	.header {
		font-size: 60px;
		text-align: center;
		cursor: pointer;
		font-family: 'Courgette', cursive;
		cursor: pointer;
	}
	
	@import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@500&display=swap');
	  #necklace {
	    font-size: 30px;
	    font-weight: bold;
	    font-family: 'Dancing Script', cursive;
	    padding: 10px;
	  }
	  
	  button {
	  float: right;
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
    float: right;
  }
  
  .cart-count {
  	float: right;
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
  
  img {
		vertical-align: middle;
		padding: 4px;
	}
	
	.neck ul.prdList {
		display: table;
		width: 1240px;
		min-width: 756px;
		margin: 0px auto 0;
		font-size: 0;
		line-height: 0;
	}
	
	.neck ul.column4 li.item {
		width: 25%;
	}
	
	.neck ul.prdList li.item {
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
	
	li {
    list-style: none;
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
</style>
<body>
	<div class="wrap">
		<header>
			<h1 class="header" align="center" onclick="location.href='LoginComp.jsp'"> Beads Accessories</h1>
			
			<input type="button" value="장바구니" class="basket" onclick="location.href='basket.jsp'">
			<span class="cart-count">
	  		<span class="count">0</span>
	  	</span>
	  		<a href="logout.jsp"><button>Logout</button></a>
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
		  
		  <section>
		  <div class="neck">
		  	<h2 id="necklace" align="center">Ring</h2>
		  	<hr width = "40px" color = "gray" text-align= "center"><br>
		  	<ul class="prdList column4">
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
    					<span style="font-size: 12px; color: #555555;"> 소비자가 </span>
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
    					<span style="font-size: 11px; color: #ff9999;"> 심플하게 이쁜 반지<br>진주+골드 조합 팔찌와 세트로 착용하면 <br>더욱 업그레이드된 이쁨을 장착할 수 있어용 ㅎㅎ</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count">3807</strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/반지3.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logc_2.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :     						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							진주 꽃 반지
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
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">28,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">26,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">진주를 감싼 꽃 반지 ~</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count">57</strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/반지4.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logc_3.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :    						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    						진주 꽈배기 반지
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
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">36,700원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">35,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">진주 품은 꽈배기 ~~<br>"반지 호수에 따라 디자인이 다를 수 있습니다 !!"</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count">80</strong>
    				구매중
    			</span>
    			</div>
    		</li>
    		
    		<li class="item record">
    			<div class="box">
    			<img src="img/반지5.jpg" width="300" height="300">
    			<p class="name">
    				<a href="logc_4.jsp">
    					<strong class="title displaynone">
    						<span style="font-size: 12px; color: #555555;">상품명</span>
    							 :    						
    					</strong>
    					<span style="font-size: 12px; color: #555555;">
    							진주 반지
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
    				<span style="font-size: 12px; color: #555555; text-decoration: line-through;">42,000원</span>
    				</li>
    				<li class="record">
    				<strong class="title displaynone">
    					<span style="font-size: 12px; color: #000000;">판매가</span>
    					 :
    				</strong>
    				<span style="font-size: 12px; color: #000000;">40,000원</span>
    				<span id="span_product" style></span>
    				</li>
    				<li class="record">
    					<strong class="title displaynone">
    						<span style="font-size: 11px; color: #ff9999;"> 상품 요약설명</span>
    						 :
    					</strong>
    					<span style="font-size: 11px; color: #ff9999;">♡팔찌와 세트로도 팔아용♡</span>
    				</li>
    			</ul>
    			<span class="soldCount" style="display: inline;">
    				<strong class="count">7083</strong>
    				구매중
    			</span>
    			</div>
    			</li>
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
	</div>
</body>
</html>