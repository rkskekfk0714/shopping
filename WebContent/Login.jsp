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
    cursor:pointer; 
    font-family: 'Courgette', cursive;
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

	.login-form {
		width: 300px;
		margin-right: auto;
	    margin-left: auto;
	    margin-top: 50px;
	    padding: 20px;
		text-align: center;
	    border: none;
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

	.id {
	      font-size: 14px;
	      padding: 10px;
	      border: none;
	      width: 260px;
	      margin-bottom: 10px;
	 
	}
	
	.pwd {
	      font-size: 14px;
	      padding: 10px;
	      border: none;
	      width: 260px;
	      margin-bottom: 10px;
	 
	}
	 
	.log {
	  font-size: 14px;
	  border: 3px solid gray;
	  padding: 10px;
	  width: 260px;
	  background-color: white;
	  margin-bottom: 30px;
	  color: black;
	  cursor: pointer;
	}
	
	.join {
		background-color: white;
		font-size: 15px;
		border: none;
		cursor: pointer;
	}
	
	.Administrator_Login {
		background-color: white;
		font-size: 15px;
		border: none;
	}
	
	p {
		font-size: 13px;
		color: gray;
	
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
	<h1 align="center" onclick="location.href='Main.jsp'"> Beads Accessories</h1>
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
	      <ul>
	        <li class="li"><a href="a.jsp">목걸이</a></li>
	        <li class="li"><a href="b.jsp">팔찌</a></li>
	        <li class="li"><a href="c.jsp">반지</a></li>
	        <li class="li"><a href="d.jsp">귀걸이</a></li>
	        <li class="li"><a href="e.jsp">브로치</a></li>
	        <li class="li"><a href="f.jsp">기타</a></li>
	      </ul>
	    </nav>  
 	 </div>
	<div class="login-form">
    <h2 align="center">Member Login</h2>
    <form action="login.do" method="post">
      <input type="text" class="id" placeholder="ID">
      <input type="password" class="pwd" placeholder="PASSWORD">
      <input type="submit" class="log" value="Login">
    </form>
    <hr>
    <p>가입 되어 있지 않으신 분
    	<input type="submit" class="join" value="Join" onclick="location.href='Join.jsp'">
	</p>	
	<hr>
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