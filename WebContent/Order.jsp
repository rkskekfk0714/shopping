<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String ctxPath = request.getContextPath(); %>
   
   <jsp:include page="Main.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수경이의 웹 페이지</title>
<script type="text/javascript">
	$(document).ready(function() {
		 $(".calculation1 thead input:checkbox[id=check]").click(function(){
			 var bool = $(this).prop("checked");
			 $(".calculation1 tbody input:checkbox[name=checkbox]").prop("checked",bool);
		 });
		$(".calculation1 tbody input:checkbox[name=checkbox]").click(function(){
			var flag = false;
			$(".calculation1 tbody input:checkbox[name=checkbox]").each(function(){
				var bool = $(this).prop("checked");
				
				if(!bool) {
					$(".calculation1 thead input:checkbox[id=check]").prop("checked",false);
					flag=true;
					return false;
				}
			});
			
			if(!flag) {
				$(".calculation1 thead input:checkbox[id=check]").prop("checked",true);
				
			}
		});
		
		/* 클릭이 되며 자동으로 값이 들어옴 */
		$("#emailChoice").bind("change", function(){
			$("#domainName").val($(this).val());
		});
	});
	
	function openDaumPost() {
		new daum.Postcode({
			oncomplete: function(data) {
				document.getElementById("postnum1").value = data.postcode1; //우편번호의 첫번째 값 예> 151
				document.getElementById("postnum2").value = data.postcode2; //우편번호의 두번째 값 예> 019
				document.getElementById("addr1").value = data.address; //큰 주소 예> 서울특별시 종로구 임시로 17
				document.getElementById("addr2").focus();
			}
		}).open();
	}
</script>
</head>

<style type="text/css">
	div#backbody {				/* 장바구니 body */
		background-color: #f5f5f0;
		font-size: 13pt;
		min-width: 1480px;
		width: 100%;
		padding: 50px 0;
	}
	
	#frame {					/* 전체 div */
		width: 80%;
		margin: 0 auto;
		padding: 50px 50px;
		background-color: #fff;
	}
	
	#frame2 {					/* 페이지 맨위 header 아님! 장바구니 홈>장바구니*/
		border-bottom: solid 1px #e0e0eb;
		padding: 20px 0;
	}
	
	.home {						/* 홈 > 장바구니*/
		float: right;
		clear: both;
	}
	
	table.calculation1 {		/* 계산 테이블 */
		clear: both;
		border: 1px solid #e0e0eb;
		border-collapse: collapse;
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
	}
	
	table.calculation1 th {		/* 계산 테이블 - 제목*/
		border: 1px solid #e0e0eb;
		padding: 10px 0;
		text-align: center;
	}
	
	table.calculation2 {		/* 총 결제예정금액 테이블 - 제목*/
		border: solid 1px #e0e0eb;
		border-collapse: collapse;
		backgroun-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
	}
	
	table.calculation2 th {		/* 총 결제예정금액 테이블 - 내용*/
		border: 1px solid #e0e0eb;
		text-align: center;
	}
	
	.price {					/* calculation2 테이블 - 가격 ~원*/
		font-size: 20pt;
		font-weight: bold;
	}
	
	.liFont {					/* 이용약관 ol태그 - li */
		font-size: 10pt;
		color: gray;
	}
	
	.delivery {					/* 배송정보 테이블*/
		border: 1px solid gray;
		border-collapse: collapse;
		width: 100%;
		font-size: 12pt;
	}
	
	table.delivery th, td {
		border: 1px solid #e0e0eb;
		padding: 12px 10px;
	}
	
	.deliverytd {				/* 배송정보 테이블 - td */
		font-size: 12pt;
		background-color: #f5f5f0;
	}
	
	/* 전체 카드 !! */
	.payArea {
		height: 218px;
		position: relative;
		padding: 0 245px 0 0;
		border: 1px solid #777;
		color: #353535;
		line-height: 1.5;
	}
	
	.payment {
		border-right: solid 1px gray;
		float: left;
		width: 100%;
		height: 100%;
	}
	
	.total {
		float: right;
		width: 240px;
		margin: 0 -240px 0 0;
		text-align: right;
		background: #fbfafa;
		font-size: 11pt;
	}
	
	
	/*--------------------------------------*/
		
	/* bootstrap 버튼 */
	.btn {
		border: none;
		color: white;
		padding: 5px 10px;
		font-size: 13px;
		cursor: pointer;
		border-radius: 5px;	
	}
	
	.default {
		background-color: #264d73;
		border: solid 1px gray;
		color: #fff;
	}
	
	.default:hover {
		background: #ddd;
	}
	
	.backBtn {
		background: #fff;
		border: solid 1px gray;
	}
	
	/* 선택상품 삭제, 해외배송 장바구니로 이동 float */
	.btnfloat {
		float: left;
	}
	
	/* 선택상품 장바구니, 견적서 출력 float*/
	.btnfloat2 {
		float: right;
	}
	
	/* 만약 대비 clear*/
	.clearboth {
		clear: both;
	}
	
</style>
<body>
	<header>
	
	</header>
	<section>
		<div id="backbody">
			<div id="fram">
				<form>
					<div id="fram2">
						<span style="font-size: 16pt; font-weight: bold;">장바구니</span>
						<span class="home">홈 > 장바구니</span>
						
						
						<span> </span>
					</div>
					<br>
					
					<%--상품정보 테이블 --%>
					<div>
						<table class="calculation1">
						<thead>
							<tr>
								<th colspan="10" style="text-align: left; padding-left: 10px;">일반상품(1)</th>
							</tr>
							
							<tr>
								<th><input type="checkbox" name="checkbox" id="check"></th>
								<th><span>이미지</span></th>
								<th style="width: 550px;"><span>상품정보</span></th>
								<th>판매가</th>
								<th>수량</th>
								<th>배송구분</th>
								<th>배송비</th>
								<th>합계</th>
							</tr>
						</thead>
						
						<tbody>
							<tr style="height: 90px; background-color: #fff;">
								<td style="text-align: left; text-align: center; border-right: none;">
									<input type="checkbox" name="checkbox">
								</td>
								<td style="border-left: none; border-right: none;"><img style="width: 45;" src=""></td>
								
								<td style="text-align: left; padding-left: 10px; border-left: none; font-weight: bold;">JOYMENT-COTT</td>
								
								
								<td><span style="padding-left: 10px;">0</span>원</td>
								
								<td style="width: 80px;">
									<span>1</span>
								</td>
								
								<td>-</td>
								<td>기본배송</td>
								<td>고정</td>
								<td><span>0</span>원</td>
							</tr>
						</tbody>
						
						<tfoot>
							<tr style="height: 60px;">
								<td colspan="5" style="border-right: none; text-align: left; padding-left: 10px;">
									<span>[기본배송]</span>
								</td>
								<td colspan="5" style="border-left: none; text-align: right; padding-right: 10px;">
									상품금액 <span>0</span> + <span>배송비 2,500 = 합계</span>&nbsp;<span style="font-weight: bold; font-size: 10px;"></span>
								</td>
							</tr>
						</tfoot>
						</table>
						
						<div style="border:solid 1px #e0e0eb; border-right: none; border-left: none; padding: 11px 0;">
							<img src="img/주의.png" style="margin-left: 5px; position: relative; top: 4.5px;">
							<span style="font-size: 10pt; color: red;">상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</span>
						</div>
					</div>
					
					
					<div style="margin: 10px 0; padding-bottom: 50px; border-bottom: solid 1px gray;">
						<span style="margin: 0 10px; class="btnfloat">선택상품을</span>
						<button type="button" class="btn default btnfloat" style="background-color: gray; color: #fff;">x 삭제하기</button>
						
						<button type="button" class="btn default btnfloat2" onclick="javascript:history.back()">이전페이지 ></button>
						<span class="clearboth"></span>
					</div>
					<br><br>
					
					
					<%--배송정보 --%>
					<span style="font-size: 12px; display: inline-block; padding-bottom: 10px; "> &nbsp;배송정보</span>
					<table class="delivery">
						<thead>
							<tr>
								<td class="deliverytd">배송지 선택</td>
								<td>
									<input type="radio" name="bb">
									<label>회원정보와 동일</label>
									
									<input type="radio" name="bb">
									<label>새로운배송지</label>&nbsp;
									<button type="button" style="background-color: #fff; cursor: pointer; border-width: 0px"></button>
								</td>
							</tr>
							
							<tr>
								<td class="deliverytd">주소&nbsp;<span style="color: red">*</span></td>
								
								<td>
									<input type="text" id="postnum1" size="10" maxlength="5">
									&nbsp;
									<button type="button" style="cursor: pointer; margin-bottom: 10px; background-color: #fff;"></button>
									<input style="margin-bottom: 10px;" type="text" id="addr1" size="50"><br>
									<input type="text" id="addr2" size="50">
								</td>
							</tr>				
							
							<tr>
								<td class="deliverytd">휴대전화&nbsp;<span style="color: red">*</span></td>
								<td><input type="text" size="5">*<input type="text" size="5">-<input type="text" size="5"></td>
							</tr>
							<tr>
								<td class="deliverytd">이메일&nbsp;<span style="color: red">*</span></td>
								<td><input type="text">@<input id="domainName" type="text">&nbsp;
									<select id="emailChoice" style="height: 20px;">
										<option>-이메일 선택-</option>
										<option>daum.net</option>
										<option>naver.com</option>
										<option>nate.com</option>
										<option>korea.com</option>
										<option>gmail.com</option>
									</select>
									<span style="font-size: 10pt; color: gray;">
										<p>이메일을 통해 주문처리과정을 보내드립니다.<br>
										   이메일 주소란에는 반드시 수신가능한 이메일주소를 입력해 주세요.</p>
									</span>
								</td>
							</tr>
							
							<tr>
								<td class="deliverytd">배송메세지</td>
								<td><textarea rows="5" cols="100"></textarea></td>
							</tr>
						</thead>
					</table>
					<br><br>
					
					
					
					<%--결제예정금액 테이블 --%>
					
					<table class="calculation2">
						<tr>
							<th>총 상품금액</th>
							<th>총 배송비</th>
							<th style="width: 750px; padding: 22px 0;"><span>결제예정금액</span></th>
						</tr>
						
						<tr style="background-color: #fff;">
							<td style="padding: 23px 0;"><span class="price">0</span>원</td>
							<td>+<span class="price">0</span>원</td>
							<td>=<span class="price">0</span>원</td>
						</tr>
					</table>
					<br><br>
					
					
					<%--결제하기 --%>
					<div class="payArea">
						<div class="payment">
							<div style="padding: 18px 10px; font-size: 10pt; border-bottom: solid 1px #e0e0eb;">
								<input type="radio" name="cardradio" checked><label>카드결제</label>&nbsp;&nbsp;
								
								<input type="radio" name="cardraio"><label>실시간 계좌이체</label>&nbsp;&nbsp;
								<input type="radio" name="cardraio"><label>무통장 입금</label>&nbsp;							
							</div>
							
							<div align="left">
								<img src="img/주의.png" style="margin-left: 5px; position: relative; top: 6px;">
								<span style="font-size: 10px; color: gray;">최소 결제 가능 금액은 결제금액에서 배송비를 제외한 금액입니다.</span><br>
								<img src="img/주의.png" style="margin-left: 5px; position: relative; top: 6px;">
								<span style="font-size: 10pt; color: gray;">소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.</span>
							</div>
						</div>
						
						<div class="total">
							<span style="display: inline-block; padding: 20px 10px;">카드결제 최종결제 금액</span><br>
							<span style="font-size: 25px; font-weight: bold; padding: 0px 10px;">0</span><br><br>
							<button type="button" class="btn default" style="width: 90%; height: 60px; margin-right: 10px; font-size:10px;"></button>
						</div>
					</div>			
				</form>
			</div>
		</div>
		
		<jsp:include page="Main.jsp">
	</section>
</body>
</html>