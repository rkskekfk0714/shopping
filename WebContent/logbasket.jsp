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
 	body {
		font-size: 12px;
		line-height: 1.25;
		color: #333;
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
	
	#content1 .header {
		font-size: 60px;
		text-align: center;
		cursor: pointer;
		font-family: 'Courgette', cursive;
	}
  
 	#contentWrapper {
		padding-bottom: 100px;
		position: relative;
		width: 1366px;
		margin: 0 auto;
	}
  
  	#content1 {
		min-height: 440px;
		width: 100%;
		position: relative;
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
  
  
  
  #content1 .tit-page {
		position: relative;
		padding: 40px 0;
		font-size: 30px;
		text-align: center;
		color: black;
		font-weight: bold;
	}
	
	#contentWrap:after {
		content: "";
		display: block;
		clear: both;
	}
	
	.table-cart{
		margin: 10px 0;
	}
	
	table {
		width: 100%;
		border-collapse: collapse;
		border-spacing: 0;
		table-layout: fixed;
		word-wrap: break-word;
		word-brea: keep-all;
	}
	
	colgroup {
		display: table-column-group;
	}
	
	caption {
		display: none;
		text-align: -webrit-center;
	}
	
	tr {
		display: table-row;
		vertical-align: inherit;
		border-color: inherit;
	}
	
	.table-cart .opt-spin {
		font-size: 0;
	}
	
	.table-cart .opt-spin .btn-dw {
		display: inline-block;
		width: 33px;
		height: 32px;
		font-size: 12px;
		color: #666;
		line-height: 33px;
		text-align: center;
		border: 1px solid #ddd;
	}
	
	.table-cart .opt-spin .txt-spin {
		width: 33px;
		height: 32px;
		text-align: center;
		border: none;
		border:top: 1px solid #ddd;
		border: 1px solid #ddd;
	}
	
	.table-cart .opt-spin .btn-up {
		display: inline-block;
		width: 33px;
		height: 32px;
		font-size: 12px;
		color: #666;
		line-height: 33px;
		text-align: center;
		border: 1px solid #ddd;
	}
	
	.table-cart .opt-spin .CSSbuttonBlack {
		margin-left: 4px;
	}
	
	.CSSbuttonBlack {
		display: inline-block;
		padding: 8px 12px;
		font-size: 12px;
		color: white;
		border: 1px solid #333;
		background: #333;
		transition: all 0.3s ease;
	}
	
	.table-cart thead th {
		padding: 14px 0;
		font-size: 13px;
		color: black;
		font-weight: bold;
		border-top: 1px solid #b5b5b5;
		border-bottom: 1px solid #e9e9e9;
		background-color: white;
	}
	
	.table-cart thead th .tb-center, .table-cart tbody td .tb-center {
		padding: 0;
	}
	
	.table-cart tbody td .thumb {
		width: 70px;
		height: 70px;
		margin-left: auto;
		margin-right: auto;
		font-size: 0;
		line-height: 0;
	}
	
	.table-cart tbody td .thumb a, .table-cart tbody td .thumb img {
		display: block;
		width: 70px;
		height: 70px;
	}
	
	.table-cart tbody td, .table-cart tbody td {
		paddgin:18px 0;
		border-bottom: 1px solid #e9e9e9;
	}
	
	.table-cart tbody td .tb-opt {
		padding-bottom: 5px;
		color: #999;
	}
	
	.tb-left {
		text-align: left;
	}
	
	a{
		color:#333;
		text-decoration: none;
		vertical-align: middle;
	}
	
	.tb-center {
		text-align: center;
		padding: 0 10px;
	}
	
	thead {
		display: table-header-group;
		vertical-align: middle;
		border-color: inherit;
	}
	
	tbody {
		display: table-row-group;
		vertical-align: middle;
		border-color: inherit;
	}
	
	tfoot {
		display: table-footer-group;
		vertical-align: middle;
		border-color: inherit;
	}
	
	.CSSbuttonGray {
		display: inline-block;
		padding: 8px 12px;
		font-size: 12px;
		color: white;
		border: 1px solid gray;
		background: gray;
		transition: all 0.3s ease;
		text-decoration: none; <%-- a 링크=> 밑줄 없애줌 --%>
	}
	
	strong {
		font-weight: bold;
	}
	
	td {
		display: table-cell;
		vertical-align: inherit;
	}
	
	.table-cart tfoot td {
		padding: 16px 0 20px;
		font-size: 13px;
		color: gray;
		border-bottom: 1px solid #e9e9e9;
		background: white;
	}
	
	.tb-right {
		text-align: right;
	}
	
	.MS_tb_delivery {
		position: relative;
		cursor: pointer;
	}
	
	#cartWrap .btn-order-ctr12 {
		margin-top: 50px;
		text-align: center;
	}
	
	.CSSbuttonBlackB {
		display: inline-block;
		padding: 12px 30px;
		font-size: 14px;
		color: white;
		font-weight: bold;
		border: 1px solid #333;
		border-radius: 10px;
		background: #333;
		transition: all 0.3s ease;
		text-decoration: none;
	}
	
	.CSSbuttonB {
		display: inline-block;
		padding: 12px 30px;
		font-size: 14px;
		color: #333;
		font-weight: bold;
		border: 1px solid gray;
		border-radius: 10px;
		background: white;
		transition: all 0.3s ease;
		text-decoration: none;
	}
	
	#cartWrap .cart-ft2 {
		margin-top: 20px;
		text-align: center;
	}
	
	element.style {
		padding-top: 30px;
	}
	
	div {
		display: block;
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
	<div id="contentWrapper">
		<div id="contentWrap">
			<div id="content1">
				<div id="cartWrap">
				<header>
				<h1 class="header" align="center" onclick="location.href='LoginComp.jsp'"> Beads Accessories</h1>
				<div id="log">    
				  <a href="logout.jsp"><button>Logout</button></a>
				  <input type="button" value="장바구니" class="basket" onclick="location.href='basket.jsp'">
				  	<span class="cart-count">
	  					<span class="count">0</span>
	  				</span>
					<input type="button" value="주문" class="order" onclick="location.href='Order.jsp'">
				</div>
				</header>
				<div class="container">
				    <nav class="navi">
				      <ul>
				        <li class="li"><a href="loga.jsp">목걸이</a></li>
				        <li class="li"><a href="logb.jsp">팔찌</a></li>
				        <li class="li"><a href="logc.jsp">반지</a></li>
				        <li class="li"><a href="logd.jsp">귀걸이</a></li>
				        <li class="li"><a href="loge.jsp">브로치</a></li>
				        <li class="li"><a href="logf.jsp">기타</a></li>
				      </ul>
				    </nav>  
			 	 </div>
					<h2 class="tit-page">장바구니</h2>
					<div class="page-body">
						<div class="table-cart table-fill-prd">
							<table summary="번호, 사진, 제품명, 수량, 적립, 가격, 배송비, 취소">
								<caption>장바구니 담긴 상품</caption>
								<colgroup>
									<col width="60">
									<col width="130">
									<col width="*">
									<col width="160">
									<col width="110">
									<col width="165">
									<col width="110">
									<col width="130">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">
											<div class="tb-center">
												<input type="checkbox" name="_allcheck" onclick="all_basket_check(this);" class="MS_input_checkbox" checked>
											</div>
										</th>
										<th scope="col">
											<div class="tb-center">사진</div>
										</th>
										<th scope="col">
											<div class="tb-center">상품명</div>
										</th>
										<th scope="col">
											<div class="tb-center">수량</div>
										</th>
										<th scope="col">
											<div class="tb-center">적립금</div>
										</th>
										<th scope="col">
											<div class="tb-center">가격</div>
										</th>
										<th scope="col">
											<div class="tb-center">배송비</div>
										</th>
										<th scope="col">
											<div class="tb-center">선택</div>
										</th>
									</tr>
								</thead>
								<tbody>
									<form action="backet.jsp" method="post" name="forms" id="basket_form0"></form>
									<input type="hidden" name="brandcode" value="034004001579">
									<input type="hidden" name="branduid" value="79859">
									<input type="hidden" name="type">
									<input type="hidden" name="orgamount" value="1">
									<input type="hidden" name="orgspcode" value="0">
									<input type="hidden" name="orgspcode2" value="0">
									<input type="hidden" name="opts" value="0">
									<input type="hidden" name="optioncode" value="0,4">
									<input type="hidden" name="optionvalue" value>
									<input type="hidden" name="option_type" value="PS">
									<input type="hidden" name="pack_uid" value>
									<input type="hidden" name="min_add_amount" value="1">
									<tr class="nbg">
										<td>
											<div class="tb-center">
												<input type="checkbox" name="basketchks" id="basketchks" checked="checked" class="MS_input_checkbox">
												<input type="hidden" name="basket_item" value="{uid":"79859","brandcod":"034004001579","spcode":"0","spcode2":"0","optcode":"0","optioncode":"0,4","pack_uid":"","optionvalue":""}">												
											</div>
										</td>
										<td>
											<div class="tb-center">
												<div class="thumb">
													<a href="logd_2.jsp">
														<img src="img/귀걸이4.jpg" alt="[BEST]크리스탈로 제작한 물방울 귀걸이">
													</a>
												</div>
											</div>
										</td>
										<td>
											<div class="tb-center">
												<a href="logd_2.jsp">[BEST]크리스탈로 제작한 물방울 귀걸이</a>
												<span class="MK-product-icons">
													<a class="MK-product-icon-2">
												</span>
											</div>
										</td>
										<td>
											<div class="tb-center">
												<div class="opt-spin">
													<a href="javascript:count change(1, 0)" class="btn-dw">-</a>
													<input type="text" name="amount" value="1" class="txt-spin">
													<a href="javascript:count change(0,0)" class="btn-up">+</a>
													<a href="javascript:send basket(0, 'upd')" class="CSSbuttonBlack">수정</a>
												</div>
											</div>
										</td>
										<td>
											<div class="tb-center">250</div>
										</td>
										<td>
											<div class="tb-center tb-price tb-bold">
												<span>35,700</span>
												원
											</div>
										</td>
										<td>
											<div class="tb-center tb-delivery">
												<div class="MS_tb_delivery">
													
													<span class="MS_deli_desc MS_deli_block">2,500원</span>
												</div>
											</div>
										</td>
										<td>
											<div class="tb-center">
												<span class="d-block">
													<a href="javascript:send_basket(0, 'del)" class="cartDel">
														<i class="xi-close">X</i>
													</a> 
												</span>
											</div>
										</td>
									</tr>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="8">
											<div class="tb-right">
												총 구매금액:
												35,700원
												
												+ 배송료 2,500원
											=
												<strong>38,200원</strong>
											</div>
										</td>
									</tr>
								</tfoot>
							</table>
						</div>
						<div class="btn-order-ctrll">
							<a href="javascript:basket multidel(.)" class="CSSbuttonGray">선택상품 삭제</a>
						</div>
						<!-- 카트 프리 -->
						<div class="btn-order-ctr12">
							<a href="javascript:multi all order(.)" class="CSSbuttonBlackB" onmousedown="try{_CTS_CART();}catch(_e){}">전체상품 주문하기</a>
							<a href="javascript:alert('주문이 가능한 금액이 아닙니다. 고객센터에 문의 바랍니다.')" class="CSSbuttonB" onmousedown="try{_CTS_CART();}catch(_e){}">선택상품 주문하기</a>
							<a href="javascript:basket clear();" class="CSSbuttonB">장바구니 비우기</a>
							<a href="Main.jsp" class="CSSbuttonB">쇼핑 계속하기</a>
						</div>
						<div class="cart-ft2">
						</div>
						<div id="recopick_widget_gcgGgETb" data-widget_id="gcgGgETb" style="padding-top: 30px">
							<script>
								(function(w,n)
										{w[n]=w[n]||function(){(w[n].q||[].push(arguments)};}
										(window, 'recoPick'));
										recoPick('widget', 'recopick_widget_gcgGgETb');
							</script>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 	 
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