<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수경이의 웹 프로젝트</title>
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

  .login {
    border: none;
    background-color: white;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
  }

  .join {
    border: none;
    background-color: white;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
  }
  
  .basket {
  	border: none;
    background-color: white;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
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
  
  .order {
  	border: none;
    background-color: white;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
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
  
  .product-detail {
  	position: relative;
  	overflow: hidden;
  	padding: 30px 0 100px 0px;
  	font-family: '맑은 고딕', 돋움;
  }
  
  .product-detail .imgArea {
  	float: left;
  	width: 800px;
  	margin: 20px 25px 0px 90px;
  	text-align: center;
  }
  
  .product-detail .imgArea .keyImg {
  	width: 800px;
  	text-align: right;
  }
  
  .u, .l {
  	margin: 0px;
  	padding: 0px;  	
  }
  
  .l {
  	list-style: none;
  }
  
  img {
  	border: none;
  	vertical-align: top;
  }
  
  #buylayer .rightbt2 {
  	display: none;
  }
  
  .rightbt2 {
  	right: 250px;
  	position: fixed;
  	bottom: 0px;
  	margin-top: 0px;
  	cursor: pointer;
  }
  
  .product-detail .infoArea {
  	float: left;
  	padding: 0 0 30px;
  	width: 451px;  	
  }
  
  .product-detail .infoArea1 {
  	line-height: 20px;
  	width: 440px;
  	margin: 15px 0 0;
  	border-bottom: 1px solid #e8e8e8;
  }
  
  .product-detail .infoArea h3 {
  	margin: 0 0 10px;
  	padding: 0 0px 10px;
  	border-bottom: 1px solid white;
  	font-size: 13px;
  	text-align: left;
  }	
  
  .product-detail .infoArea1 h3 span {
  	font-weight: normal;
  	font-size: 12px;
  }
  
  .displaynone {
  	display: none !important;
  }
  
  .product-detail .infoArea1 span.simple {
  	margin: 20px 0px;
  	color: #8b8b8b;
  	display: block;
  }
  
  .product-detail .infoArea .gSoldCount {
  	display: inline-block;
  	margin: 8px 0 0;
  	background: pink;
  }
  
  .product-detail .infoArea .soldCount {
  	display: inline-block;
  	padding: 5px 6px;
  	color: white;
  }
  
  .product-detail .infoArea .soldCount .soldCount {
  	float: left;
  }
  
  strong {
  	font-weight: bold;
  }
  
  .product-detail .infoArea table {
  	border: 0;
  	font-size: 12px;
  	margin: 0px 0 0;
  }
  
  table {
  	width: 100%;
  	border-spacing: 0;
  	border-collapse: collapse;
  }
  
  caption {
  	display: none;
  }
  
  tbody {
  	display: table-row-group;
  	vertical-align: middle;
  	border-color: inherit;
  }
  
  .product-detail .infoArea th {
  	font-weight: bold;
  	color: #555555;
  	width: 100px;
  	padding: 5px 0 5px 5px;
  	text-align: left;
  	vertical-align: middle;
  }
  
  .product-detail .infoArea td {
  	padding: 5px 0;
  	color: #202020;
  	vertical-align: middle;
  }
  
  tr {
  	display: table-row;
  	vertical-align: inherit;
  	border-color: inherit;
  }
  
  .product-detail .infoArea td input {
  	width: 30px;
  	height: 14px;
  	padding: 3px 0 1px 0;
  	border: 1px solid gray;
  	color: black;
  	font-size: 13px;
  	background: gray;
  }
  
  tfoot {
  	display: table-footoer-group;
  	vertical-align: middle;
  	border-color: inherit;
  }
  
  .product-detail .infoArea .guideArea {
  	position: relative;
  }
  
  .product-detail .infoArea .guideArea .info {
  	margin: 0;
  	padding: 12px 0 0 4px;
  	color: #757575;
  }
  
  .product-detail .infoArea .minimum-limit {
  	font-size: 11px;
  }
  
  .product-detail .infoArea .minimum-limit .count{
  	font-size: 12px;
  	font-style: normal;
  	margin-left: 4px;
  	margin-right: 2px;
  	color: #555;
  }
  
  .totalPrice {
  	font-size: 11px;
  	padding: 16px 6px 10px;
  	color: black;
  	vertical-align: middle;
  	text-align: right;
  	border-top: 1px solid #e7e7e7;
  }
  
  .lang-total {
  	margin-top: -6px;
  	font-size: 12px;
  	display: inline-block;
  	vertical-align: middle;
  }
  
  .totalPrice .total {
  	color: black;
  }
  
  em {
  	font-style: normal;
  	font-size: 22px;
  }
  
  .product-detail .infoArea .product-action{
  	padding: 0 0 10px;
  }
  
  .product-action .base-button .action-button {
  	padding: 10px 0;
  	margin-left: -5px;
  }
  
  .product-action .base-button {
  	padding-bottom: 8px !important;
  }
  
  .product-action .buy.wrap {
  	float: right;
  	width: 37%;
  }
  
  .product-action .base-button.action-button .btn {
  	display: block;
  	padding: 0;
  	border-radius: 0;
  	height: 48px;
  	line-height: 48px;
  	margin: 0 0 0 5px;
  }
  
  .product-action .btn.buy {
  	background: red;
  	border-color: red;
  	color: white;
  	letter-spacing: 2px;
  	font-weight: bold;
  	text-decoration: none;
  	text-align: center;
  }
  
  .product-action .basket.wrap {
  	float: right;
  	width: 31.5%;
  }
  
  .product-action .btn.basket {
  	background: white;
  	border: 2px solid #e7e7e7;;
  	color: gray;
  	letter-spacing: 2px;
  	font-weight: bold;
  	text-decoration: none;
  	text-align: center;
  }
  
  select {
  	height: 20px;
  	border: 1px solid #d9d9d9;
  	font-size: 11px;
  	color: black;
  }
  
  option {
  	font-weight: normal;
  	display: block;
  	white-space: nowrap;
  	min-height: 1.2em;
  	padding: 0px 2px 1px;
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
		  <input type="button" value="Login" class="login" onclick="location.href='Login.jsp'">
		  <input type="button" value="Join" class="join" onclick="location.href='Join.jsp'">
		  <input type="button" value="장바구니" class="basket" onclick="location.href='basket.jsp'">
		  	<span class="cart-count">
		  		<span class="count">0</span>
		  	</span>
		  	<input type="button" value="주문" class="order" onclick="location.href='Order.jsp'">
	  </div>
	  </header>
	  <div class="container">
	    <nav class="navi">
	      <ul class="ul">
	        <li class="li"><a href="a.jsp">목걸이</a></li>
	        <li class="li"><a href="b.jsp">팔찌</a></li>
	        <li class="li"><a href="c.jsp">반지</a></li>
	        <li class="li"><a href="d.jsp">귀걸이</a></li>
	        <li class="li"><a href="e.jsp">브로치</a></li>
	        <li class="li"><a href="f.jsp">기타</a></li>
	      </ul>
	    </nav>  
	  </div>
	  <br>
	  <section>
	  <div class="product-detail">
	  	<div class="product-image imgArea">
	  		<div class="keyImg">
		  		 <ul class="u">
		  		 	<li class="l">
		  		 		<img src="img/귀걸이4.jpg" class="ThumbImage" alt>
		  		 	</li>
		  		 </ul>
	  		</div>
	  	</div>
	  	<div id="buylayer" class>
	  		<div class="rightbt2">
	  			<a href="order.jsp">바로주문하기</a>
	  		</div>
	  		<div class="infoArea">
	  			<div class="infoArea1">
	  				<h3>
	  					[BEST]부채꼴 귀걸이


	  					<span class="displaynone"></span>
	  				</h3>
	  				<span class="simple" style="display: block;">
		  				♥공작새 날개 처럼 우아한 귀걸이♥<br>
						착용하면 우아함이 더욱 더 Up! Up!
	  				</span>
	  			</div>
	  			<span class="gSoldCount">
	  				<p class="soldCount" style="display: block;">
	  					<strong class="count">3,081</strong>
	  					구매중
	  				</p>
	  			</span>
	  			<div class="product-detaildesing">
	  				<table summary>
	  					<caption>기본 정보</caption>
	  					<tbody>
	  						<tr class="displaynone">
	  							<th scope="row">
	  								<span style="font-size: 16px; color: #000000;">상품명</span>	  								
	  							</th>
	  							<td>
	  								<span style="font-size: 16px; color: #000000;">
	  									[BEST]부채꼴 귀걸이
	  							</td>
	  						</tr>
	  						<tr class="판매가 record">
	  							<th scope="row">
	  								<span style="font-size: 12px; color: #000000;">판매가</span>
	  							</th>
	  							<td>
	  								<span style="font-size: 12px; color: #000000;">
	  									<strong id="span_product_price" style="text-decoration: line-through;">37,000원</strong>
	  									<input id="product_price" name="product_price" value type="hidden">
	  								</span>
	  							</td>
	  						</tr>
	  						<tr class="할인판매가 record">
	  							<th scope="row">
	  								<span style="font-size: 12px; color:#000000;">할인판매가</span>
	  							</th>
	  							<td>
	  								<span>
	  									<span style="font-size:12px;color:#000000;">
	  										<span id="product_price_sale">
	  										35,700원
	  										<span style="font-size: 12px; color:#r555555;"></span>
	  										</span>
	  									</span>
	  								</span>
	  							</td>	  							
	  						</tr>
	  					</tbody>
	  				</table>
	  				<table summary class="detail_option">
	  					<caption>상품 옵션</caption>
	  					<tbody class="element product product-option record">
	  						<tr class="element product product-option record">
	  							<th scope="row">타입</th>
	  							<td>
	  								<select name="option1" id="option_id1" class="ProductOption0" option_style="select" required="true">
	  									<option value="*" selected link_image>- [필수] 타입 선택 -</option>
	  									<option value="부채꼴 귀걸이" link_image>부채꼴 귀걸이</option>
	  								</select>
	  							</td>
	  						</tr>
	  					</tbody>
	  				</table>
	  				<tfoot>
	  					<div class="guideArea">
	  						<p class="info">
	  							<span class="minimum-limit">
	  								최소주문수량
	  								<i class="count">0</i>
	  								개 이상
	  							</span>
	  						</p>
	  					</div>
	  					<div id="totalPirce" class="totalPrice">
	  						<strong class="lang-total">
	  							TOTAL
	  						</strong>
	  						<span class="total">
	  							<strong>
	  								<em>0원</em>
	  							</strong>
	  							<span class="total-count">
	  								(0개)
	  							</span>
	  						</span>
	  					</div>
	  					<div class="product-action">
	  						<div class="base-button action-button">
	  							<div class="buy wrap">
	  								<a class="btn buy" onclick="location.href='Order.jsp'">
	  									<span id="btnBuy" class="lang-buy">
	  										바로구매
	  									</span>
	  								</a>
	  							</div>
	  							<div class="basket wrap">
	  								<a class="btn basket" onlick="location.href='basket.jsp'">
	  									장바구니
	  								</a>
	  							</div>
	  						</div>
	  					</div>
	  				</tfoot>
	  			</div>
	  		</div>
	  	</div>
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