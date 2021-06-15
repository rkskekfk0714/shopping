<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수경이의 웹 페이지</title>
  <link rel="stylesheet" href="css/styles.css">
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	function checkValue()
	{
	    var form = document.userInfo;
	
	    if(!form.id.value){
	        alert("아이디를 입력하세요.");
	        return false;
	    }
	    
	    if(form.idDuplication.value != "idCheck"){
	        alert("아이디 중복체크를 해주세요.");
	        return false;
	    }
	    
	    if(!form.pwd.value){
	        alert("비밀번호를 입력하세요.");
	        return false;
	    }
	    
	    // 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
	    if(form.pwd.value != form.pwdcheck.value ){
	        alert("비밀번호를 동일하게 입력하세요.");
	        return false;
	    }    
	    
	    if(!form.name.value){
	        alert("이름을 입력하세요.");
	        return false;
	    }
	    
	    if(!form.sample4_postcode.value){
	        alert("우편번호를 입력하세요.");
	        return false;
	    }
	    
	    if(!form.sample4_detailAddress.value){
	        alert("상세주소를 입력하세요.");
	        return false;
	    }
	    
	    if(isNaN(form.birthyear.value == "0000")){
	        alert("년도를 선택하세요.");
	        return false;
	    }
	    
	    if(form.birthmonth.value == "00"){
	        alert("월을 선택하세요.");
	        return false;
	    }
	    
	    if(!form.birthdate.value == "00"){
	        alert("일을 입력하세요.");
	        return false;
	    }
	    
	    if(!form.MS_radio.value){
	        alert("성별을 선택해주세요.");
	        return false;
	    }
	    
	    if(!form.phone.value){
	        alert("전화번호를 입력하세요.");
	        return false;
	    }
	    
	    if(isNaN(form.phone.value)){
	        alert("전화번호는 - 제외한 숫자만 입력해주세요.");
	        return false;
	    }
	}   
	
	function goFirstForm() {
        location.href="Main.do";
    }  


출처: https://all-record.tistory.com/147 [세상의 모든 기록]
	
	// 아이디 중복체크 화면open
	function openIdChk(){
	
	    window.name = "parentForm";
	    window.open("IdCheckForm.jsp",
	            "chkForm", "width=500, height=300, resizable = no, scrollbars = no");    
	}
	
	// 아이디 입력창에 값 입력시 hidden에 idUncheck를 세팅한다.
	// 이렇게 하는 이유는 중복체크 후 다시 아이디 창이 새로운 아이디를 입력했을 때
	// 다시 중복체크를 하도록 한다.
	function inputIdChk(){
	    document.userInfo.idDuplication.value ="idUncheck";
	}
	
	
	
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
         
                document.getElementById("sample4_engAddress").value = data.addressEnglish;
                       
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
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

  .jo_in {
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
  
	.login-form {
	  width: 400px;
	  margin-right: auto;
	    margin-left: auto;
	    margin-top: 50px;
	    padding: 20px;
	  text-align: center;
	    border: none;
	}
	
	.id {
	      font-size: 14px;
	      padding: 10px;
	      border: none;
	      width: 190px;
	      margin-bottom: 10px;
	 
	}
	
	.idcheck {
		  font-size: 12px;
		  background-color: white;
		  border-color: gray;
		  cursor:pointer;
	}
	
	.pwd {
	      font-size: 14px;
	      padding: 10px;
	      border: none;
	      width: 260px;
	      margin-bottom: 10px;
	 
	}
	
	.pwdCheck {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 260px;
	  margin-bottom: 10px;  
	}
	
	.name {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 260px;
	  margin-bottom: 10px;
	}
	
	#sample4_postcode {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 220px;
	  margin-bottom: 10px;
	}
	
	#sample4_roadAddress {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 260px;
	  margin-bottom: 10px;
	}
	
	#sample4_jibunAddress {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 260px;
	  margin-bottom: 10px;
	}
	
	#sample4_detailAddress {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 260px;
	  margin-bottom: 10px;
	}
	
	.addresscheck {
	  font-size: 12px;
	  background-color: white;
	  border-color: gray;
	  cursor:pointer;
	}
	
	.phone {
	  font-size: 14px;
	  padding: 10px;
	  border: none;
	  width: 260px;
	  margin-bottom: 10px;
	}
	
	.join {
	  font-size: 14px;
	  border: 3px solid gray;
	  padding: 10px;
	  width: 260px;
	  background-color: white;
	  margin-bottom: 30px;
	  color: black;
	  cursor:pointer;
	}
	
	.Administrator_Login {
	  background-color: white;
	  font-size: 15px;
	  border: none;
	}
	
	.title {
	  color: gray;
	}
	
	p {
	  font-size: 13px;
	  color: gray;
	
	}
	
	.gen {
		float: left;
		width: 250px;
	}
	
	.MS_radio {
		margin-top: 17px;
		
		text-align: left;
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
		  <input type="button" value="Join" class="jo_in" onclick="location.href='Join.jsp'">
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
  		<div class="login-form">
    		<h2 align="center">Join</h2>
    	<hr width="100%" color="#b0aeae">
    
    	<form action="join.do" method="post" name="userInfo" onsubmit="return checkValue()">
	      <input type="text" class="id" name="id" placeholder="아이디" onkeydown="inputIdChk()">
	      <input type="button" class="idcheck" value="중복확인" onclick="openIdChk()">
	       <input type="hidden" name="idDuplication" value="idUncheck" >
	      <input type="password" class="pwd" name="pwd" placeholder="비밀번호">
	      <input type="password" class="pwdCheck" placeholder="비밀번 확인">
	      <input type="text" class="name" name="name" placeholder="이름">
	      <input type="text" id="sample4_postcode" name="postcode" placeholder="우편번호">
		  <input type="button" class="addresscheck" onclick="sample4_execDaumPostcode()" value="찾기"><br>
		  <input type="text" id="sample4_roadAddress" name="roadAddress" placeholder="도로명주소" size="60" ><br>
		  <input type="hidden" id="sample4_jibunAddress" name="jibunAddress" placeholder="지번주소"  size="60">
		  <span id="guide" style="color:#999;display:none"></span>
		  <input type="text" id="sample4_detailAddress" name="detailAddress" placeholder="상세주소"  size="60"><br>
		  <input type="hidden" id="sample4_extraAddress" placeholder="참고항목"  size="60">
		  <input type="hidden" id="sample4_engAddress" placeholder="영문주소"  size="60" ><br>
	      
	      <td class="birth">
	        <select name="birthyear" class="MS_select MS_birthday">
	          <option value="">생년</option>
	          <option value="1920">1920</option>
	          <option value="1921">1921</option>
	          <option value="1922">1922</option>
	          <option value="1923">1923</option>
	          <option value="1924">1924</option>
	          <option value="1925">1925</option>
	          <option value="1926">1926</option>
	          <option value="1927">1927</option>
	          <option value="1928">1928</option>
	          <option value="1929">1929</option>
	          <option value="1930">1930</option>
	          <option value="1931">1931</option>
	          <option value="1932">1932</option>
	          <option value="1933">1933</option>
	          <option value="1934">1934</option>
	          <option value="1935">1935</option>
	          <option value="1936">1936</option>
	          <option value="1937">1937</option>
	          <option value="1938">1938</option>
	          <option value="1939">1939</option>
	          <option value="1940">1940</option>
	          <option value="1941">1941</option>
	          <option value="1942">1942</option>
	          <option value="1943">1943</option>
	          <option value="1944">1944</option>
	          <option value="1945">1945</option>
	          <option value="1946">1946</option>
	          <option value="1947">1947</option>
	          <option value="1948">1948</option>
	          <option value="1949">1949</option>
	          <option value="1950">1950</option>
	          <option value="1951">1951</option>
	          <option value="1952">1952</option>
	          <option value="1953">1953</option>
	          <option value="1954">1954</option>
	          <option value="1955">1955</option>
	          <option value="1956">1956</option>
	          <option value="1957">1957</option>
	          <option value="1958">1958</option>
	          <option value="1959">1959</option>
	          <option value="1960">1960</option>
	          <option value="1961">1961</option>
	          <option value="1962">1962</option>
	          <option value="1963">1963</option>
	          <option value="1964">1964</option>
	          <option value="1965">1965</option>
	          <option value="1966">1966</option>
	          <option value="1967">1967</option>
	          <option value="1968">1968</option>
	          <option value="1969">1969</option>
	          <option value="1970">1970</option>
	          <option value="1971">1971</option>
	          <option value="1972">1972</option>
	          <option value="1973">1973</option>
	          <option value="1974">1974</option>
	          <option value="1975">1975</option>
	          <option value="1976">1976</option>
	          <option value="1977">1977</option>
	          <option value="1978">1978</option>
	          <option value="1979">1979</option>
	          <option value="1980">1980</option>
	          <option value="1981">1981</option>
	          <option value="1982">1982</option>
	          <option value="1983">1983</option>
	          <option value="1984">1984</option>
	          <option value="1985">1985</option>
	          <option value="1986">1986</option>
	          <option value="1987">1987</option>
	          <option value="1988">1988</option>
	          <option value="1989">1989</option>
	          <option value="1990">1990</option>
	          <option value="1991">1991</option>
	          <option value="1992">1992</option>
	          <option value="1993">1993</option>
	          <option value="1994">1994</option>
	          <option value="1995">1995</option>
	          <option value="1996">1996</option>
	          <option value="1997">1997</option>
	          <option value="1998">1998</option>
	          <option value="1999">1999</option>
	          <option value="2000">2000</option>
	          <option value="2001">2001</option>
	          <option value="2002">2002</option>
	          <option value="2003">2003</option>
	          <option value="2004">2004</option>
	          <option value="2005">2005</option>
	          <option value="2006">2006</option>
	          <option value="2007">2007</option>
	          <option value="2008">2008</option>
	          <option value="2009">2009</option>
	          <option value="2010">2010</option>
	          <option value="2011">2011</option>
	          <option value="2012">2012</option>
	          <option value="2013">2013</option>
	          <option value="2014">2014</option>
	          <option value="2015">2015</option>
	          <option value="2016">2016</option>
	          <option value="2017">2017</option>
	          <option value="2018">2018</option>
	          <option value="2019">2019</option>
	          <option value="2020">2020</option>
	          <option value="2021">2021</option>
	         
	        </select>
	        년
	        <select name="birthmonth" class="MS_select MS_birthday">
	          <option value="">월</option>
	          <option value="01">1</option>
	          <option value="02">2</option>
	          <option value="03">3</option>
	          <option value="04">4</option>
	          <option value="05">5</option>
	          <option value="06">6</option>
	          <option value="07">7</option>
	          <option value="08">8</option>
	          <option value="09">9</option>
	          <option value="10">10</option>
	          <option value="11">11</option>
	          <option value="12">12</option>
	        </select>
	        월
	        <select name="birthdate" class="MS_select MS_birthday">
	          <option value="">일</option>
	          <option value="01">1</option>
	          <option value="02">2</option>
	          <option value="03">3</option>
	          <option value="04">4</option>
	          <option value="05">5</option>
	          <option value="06">6</option>
	          <option value="07">7</option>
	          <option value="08">8</option>
	          <option value="09">9</option>
	          <option value="10">10</option>
	          <option value="11">11</option>
	          <option value="12">12</option>
	          <option value="13">13</option>
	          <option value="14">14</option>
	          <option value="15">15</option>
	          <option value="16">16</option>
	          <option value="17">17</option>
	          <option value="18">18</option>
	          <option value="19">19</option>
	          <option value="20">20</option>
	          <option value="21">21</option>
	          <option value="22">22</option>
	          <option value="23">23</option>
	          <option value="24">24</option>
	          <option value="25">25</option>
	          <option value="26">26</option>
	          <option value="27">27</option>
	          <option value="28">28</option>
	          <option value="29">29</option>
	          <option value="30">30</option>
	          <option value="31">31</option>
	        </select>
	        일
	        <br>
	        
	        <input type="radio" name="gender" class="MS_radio" value="1" checked/>
	        남
	        <input type="radio" name="gender" class="MS_radio" value="2" />
	        여
	      </td>
	      <br>
	      <input type="text" name="phone" class="phone" placeholder="전화번호">
	      <input type="submit" class="join" value="가입하기">
    		</form>
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