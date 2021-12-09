<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css"
	media="screen and (min-width:512px) and (max-width:1024px)">
	body{
	box-sizing: border-box;
	}
	
.contain {
	border: 1px solid black;
	width: 600px;
	text-align: center;
	transform-origin: center center;
	transform: translate(20%, 50%);
	
}
body::before{
		background-image: url("https://blog.kakaocdn.net/dn/bFlfgy/btqDeIilL4M/tmsDXBkMFasHPK949OR0tK/img.png");
	    position:absolute;
		top:0;
	    left:0;
	    background-size:100%;
	    opacity:0.5!important;
	    filter:alpha(opacity=50);
	    z-index:-1;
	    content:"";
	    width:100%;
	    height:100%;
	}

.buttonPart {
	margin: 20px 0 20px 0;
	padding: 10px;
}

.buttonPart>button {
	padding: 10px 30px 10px 30px;
}
</style>

<style type="text/css" media="screen and (min-width:1024px)">
body{
	box-sizing: border-box;
	}
.contain {
	float: left;
	width: 100%;
	text-align: center;
	transform: translateY(5%);
	overflow: hidden;
}

body::before{
		background-image: url("https://blog.kakaocdn.net/dn/bFlfgy/btqDeIilL4M/tmsDXBkMFasHPK949OR0tK/img.png");
	    position:absolute;
		top:0;
	    left:0;
	    background-size:cover;
	    opacity:0.5!important;
	    filter:alpha(opacity=50);
	    z-index:-1;
	    content:"";
	    width:100%;
	    height:100%;
	}

.buttonPart {
	margin: 20px 0 20px 0;
	padding: 10px;
}


.contain_sub {
	width: 60%;
	border: 1px solid black;
	margin: 0 20% 0 20%;
	overflow: hidden;	
	
}

.contain_main {
	width: 100%;
	padding: 20px;
}
.selectPosition {
	width: 100px;
	height: 30px;
}

.textArea {
	text-align: center;
	font-size: 16px;
	overflow: auto;
}
button,
button::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
}

button {
  background: none;
  border: 3px solid #fff;
  border-radius: 5px;
  color: #fff;
  display: block;
  font-size: 1.6em;
  font-weight: bold;
  margin: 1em auto;
  padding: 30px;
  position: relative;
  text-transform: uppercase;
}

button::before,
button::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

button:hover {
  color: #2ecc71;
}

.btn-1::after {
  height: 0;
  left: 0;
  top: 0;
  width: 100%;
}

.btn-1:hover:after {
  height: 100%;
}

/* BUTTON 2 */
.btn-2::after {
  height: 100%;
  left: 0;
  top: 0;
  width: 0;
}

.btn-2:hover:after {
  width: 100%;
}

/* BUTTON 3 */
.btn-3::after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}

.btn-3:hover:after {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

/* BUTTON 4 */
.btn-4::before {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

</style>
</head>
<body>
	<div class="contain">
		<div class="contain_sub">
			<div
				style="background-color: rgba(120, 170, 65, 0.5); border-bottom: 1px solid black; height: 100%; padding: 30px; z-index: -1;">
				<h1 style="font-size: 60px;">LunchVote</h1>
			</div>
			<div class="contain_main">
			<div class="contain_main_sub">
				<div class="buttonPart">
					<button class="btn-1">뽑기시작</button>
				</div>
				<div class="buttonPart">
					<button class="btn-2">뽑기추가</button>
				</div>
				<div class="buttonPart">
					<button class="btn-3">정보보기</button>
				</div>
			</div>
			<div style="display: none;">
				<div>
					<select class="selectPosition">
						<option>1</option>
					</select>
				</div>
				<div>
					<textarea rows="10" cols="20" class="textArea">test</textarea>

				</div>
			</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	$(".btn-1").click(function() {
		location.href = "${pageContext.request.contextPath}/vote/main";
	});
		
	</script>
</body>
</html>