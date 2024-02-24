<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LeftMenuBar.html</title>

<!-- BootStrap -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">

<!-- JQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- ionicons -->
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>



<style type="text/css">


/* 폰트 - 강원교육튼튼체 */

@font-face {
    font-family: 'Hahmlet-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/Hahmlet-Regular.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}


/* 모든 엘리먼트 선택 */
*
{
	font-family: 'Hahmlet-Regular';
	
}



/* 전체 div */
div
{
	/* border: 1px solid gray; */
}



/* 전체 메뉴바 영역을 감싸는 최상위 부모 div */
.menuArea
{
	/* border: 1px solid aqua; */
	width: 300px;
	padding: 10px;

}

/* 왼쪽 메뉴바를 감싸는 부모 div 영역 */
.leftmenuBarBox
{
	/* border: 1px solid purple; */
	width: 420px;
}


/* 왼쪽 메뉴바 영역 */
.leftmenuBar
{
	width: 220px;
	height: 460px;
	background: linear-gradient(0deg, #ededed, white);
	padding: 10px;
	margin: 100px 0px 0px 0px;
	transform: translate(-150px, 0);
	border-radius: 10px;
	transition: .5s;
	box-shadow : 2px 2px 2px 2px #87878775;
}

/* 메뉴 항목들을 감싸는 div */
.menuOptions
{
	/* border: 2px solid yellow; */
	width: 200px;
	height: 320px;
}


/* Code mate 로고 이미지 */
.LogoImage
{
	width: 120px;
	margin: 30px 0 10px 10px;
}

/* Code mate 로고 이미지를 감싸는 navbar div 영역 */
.mainLogo
{
	display: none;
	transition: .2s;
}

/* 메뉴의 a 태그 */
a
{
	/* 남산초록색 - #345F53 */
	text-decoration: none;
	color: #345F53;
	font-weight: bold;
}


/* 왼쪽 메뉴바의 대주제에 표시되는 아이콘 */
.menuIcon
{
	font-size: 25px;
	margin: 20px 0px 0px 67px;
	line-height: 20px;
	/* border: 1px solid orange; */
	padding: 5px;
	border-radius: 50%;
	transition-property: all;
	transition-duration:0.5s;
	
}


/* 메뉴 옵션에 해당하는 a 태그 영역에 마우스 올렸을 때 */
.nav-link:hover
{
	transform: translateY(5px);
	transition: .5s;
	
}


/* 왼쪽 메뉴바 부모 영역에 마우스를 올렸을 때 */
/* 메뉴바 왼쪽에서 나타나기 */
.leftmenuBarBox:hover > .leftmenuBar
{
	transform: translateX(10px);
	transition: .5s; 
}

/* 왼쪽 메뉴바 부모 영역에 마우스를 올렸을 때 */
/* 메뉴 옵션 항목 천천히 이동하기 */
.leftmenuBarBox:hover > .leftmenuBar > .menuOptions
{
	transform: translateX(-10px) translateY(30px);
	transition: .5s; 
}

/* 왼쪽 메뉴바 부모 영역에 마우스를 올렸을 때 */
/* 로고 나타나기 */
.leftmenuBarBox:hover > .leftmenuBar > a.navbar-brand
{
	display: block;
	animation: fadein 3s;
	
}

/* 페이드인 애니메이션 */
@keyframes fadein
{
	from
	{
		opacity: 0;
	}
	to
	{
		opacity: 1;
	}
}





/*=====[대주제 마우스 오버시, 소주제 보이기]=====*/

/* 메뉴 하나에 해당하는 부모 엘리먼트 */
.menuOptions > ul
{
	position: relative;
}


/* 대주제 메뉴에 마우스를 올렸을 때, 메뉴 아이콘 스타일 */
.menuOptions > ul:hover > a > .menuIcon
{
	background-color: #12a991;
	color: white;
	font-weight: bold;
	text-shadow: 2px 2px 2px gray;
	transform:translateX(-10px) rotateY( 180deg );
}

/* 대주제 메뉴에 마우스를 올렸을 때, 작은 메뉴가 보이도록 설정 */
.menuOptions > ul:hover > li
{
	display: block;
	left: 100%;
	width: 100%;
	position: absolute;
	height: 187%;
	top: 30%;

}

/* 대주제 메뉴에 마우스를 올렸을 때, a 텍스트 색상 변경 */
.menuOptions > ul:hover > a
{
	color: #12a991;
	transform:translateX(5px);

}

/*=================[ 소주제 ]=================*/

/* 소주제 항목 */
li
{
	/* 기본적으로 숨겨진 상태 */
	display: none;
	/* border: 3px solid red; */
	list-style: none;
}


/* 메뉴 소주제 항목 스타일 */
.majorTopic ~ li > ul > li {
    display: block;
    padding: 10px;
    /* border: 1px solid blue; */
    left: -20%;
    width: 150px;
    font-weight: bold;
    text-align: center;
   	background-color: white;
    transition-property: background-color;
    transition-duration: 1s;
    border-radius: 5px;
    color: #5b7175;
    box-shadow : 2px 2px 2px 2px #87878775;
    
}

/* 메뉴 소주제 항목에 마우스 오버했을 때 li - before */
.majorTopic ~ li > ul > li:hover
{
 	background-color: #12a991;
	
 
}

/* 메뉴 소주제 항목에 마우스 오버했을 때 a */
.majorTopic ~ li > ul > li:hover > a 
{
    color: white;
}


/*==============[ 배너 ]==============*/

/* 배너에 있는 로고 이미지 */
.bannerLogoImage
{
	width: 120px;

}


/*==============[ 검색창 ]==============*/

/* 검색창 내부의 돋보기 아이콘 */
ion-icon[name="search-circle"]
{
	line-height: 50px;
	font-size: 70px;
	color: #12a991;
}

/* 검색어 안내문 텍스트 스타일 */
.searchText
{
	line-height: 50px;
	font-size: 17px;
	font-weight: bold;

}


/* 검색창 내부의 검색 폼 텍스트 입력창 */
.searchTextForm
{
	line-height: 50px;
}

/* 검색창 내부 텍스트 입력창을 클릭했을 때 스타일 */
.searchTextForm:focus::before
{
	color: red;
}

/*=================[ 멤버 정보 ]=================*/

/* 회원 영역을 감싸는 div */
.oneMember
{
	display: flex;
	height: 40px;
	width: 350px;
	border: 1px solid gray;
}

/* 회원 프로필이 들어갈 영역 지정 */
#profile
{
	width: 40px;
	height: 40px;
	/* border: 1px solid blue; */
	border-radius: 50%;
	overflow: hidden;
	/* margin: 20px 0 5px 5px; */
	
}

/* 회원 프로필 이미지 삽입 */
.memberImg
{
	width: 40px;
	height: 40px;
	object-fit: cover;
}

/* 실력 등급아이콘 */
.gradeIcon
{
	font-size: 15px;
	line-height: 33px;
	/* margin: 23px 0px 0px 5px; */
}

/* 회원 닉네임 */
.nickname
{
	/* margin: 25px 0px 25px 5px; */
	font-size: 15px;
	font-weight: bold;
	line-height: 33px;
	color: #2f4047;
	margin: 0 5px 0 5px;
	
}


/*==================================================*/
/*======[F12 를 이용해 부트스트랩 스타일 변경]======*/
/*==================================================*/

/* ※『주석처리시, 원본 부트스트랩 CSS 스타일이 적용됨에 유의』※*/



.nav-link
{
    display: block;
    padding: 0;
    font-size: var(--bs-nav-link-font-size);
    font-weight: var(--bs-nav-link-font-weight);
    color: none;
    text-decoration: none;
    background: 0 0;
    border: 0;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out;
}

.nav-underline
{
    --bs-nav-underline-gap: 1rem;
    --bs-nav-underline-border-width: 0.125rem;
    --bs-nav-underline-link-active-color: var(--bs-emphasis-color);
    gap: 0;
}

.nav 
{
    --bs-nav-link-padding-x: 1rem;
    --bs-nav-link-padding-y: 0;
    --bs-nav-link-font-weight: 0;
    --bs-nav-link-color: none;
    --bs-nav-link-hover-color: #5eaa99;
    --bs-nav-link-disabled-color: var(--bs-secondary-color);
    display: flex;
    flex-wrap: wrap;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
}
 

.offcanvas {
    position: fixed;
    bottom: 0;
    z-index: var(--bs-offcanvas-zindex);
    display: flex;
    flex-direction: column;
    max-width: 100%;
    color: var(--bs-offcanvas-color);
    visibility: hidden;
    background-color: var(--bs-offcanvas-bg);
    background-clip: padding-box;
    outline: 0;
    transition: var(--bs-offcanvas-transition);
    margin: 70px 0px 0px 0px;
}
.offcanvas, .offcanvas-lg, .offcanvas-md, .offcanvas-sm, .offcanvas-xl, .offcanvas-xxl {
    --bs-offcanvas-zindex: 1045;
    --bs-offcanvas-width: 400px;
    --bs-offcanvas-height: 16vh;
    --bs-offcanvas-padding-x: 1rem;
    --bs-offcanvas-padding-y: 1rem;
    --bs-offcanvas-color: var(--bs-body-color);
    --bs-offcanvas-bg: var(--bs-body-bg);
    --bs-offcanvas-border-width: var(--bs-border-width);
    --bs-offcanvas-border-color: var(--bs-border-color-translucent);
    --bs-offcanvas-box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    --bs-offcanvas-transition: transform 0.3s ease-in-out;
    --bs-offcanvas-title-line-height: 1.5;
}


.form-control:focus {
    /* color: var(--bs-body-color); */
    /* background-color: var(--bs-body-bg); */
    /* border-color: #86b7fe; */
    outline: 0;
    /* box-shadow: 0 0 0 0.25rem rgba(13,110,253,.25); */
}
.searchTextForm {
    line-height: 50px;
}
.me-2 {
    margin-right: 0.5rem!important;
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: var(--bs-body-color);
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: var(--bs-body-bg);
    background-clip: padding-box;
    border: none;
    border-radius: var(--bs-border-radius);
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}


.form-control:focus {
    color: none;
    background-color: none;
    border-color: none;
    outline: 0;
    box-shadow: none;
}
.searchTextForm {
    line-height: 50px;
}
.me-2 {
    margin-right: 0.5rem!important;
}
.form-control {
    display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: var(--bs-body-color);
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    background-color: var(--bs-body-bg);
    background-clip: padding-box;
    border: none;
    border-radius: var(--bs-border-radius);
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.btn-outline-success {
    --bs-btn-color: #12a991;
    --bs-btn-border-color: #12a991;
    --bs-btn-hover-color: #fff;
    --bs-btn-hover-bg: #12a991;
    --bs-btn-hover-border-color: #12a991;
    --bs-btn-focus-shadow-rgb: 25,135,84;
    --bs-btn-active-color: #fff;
    --bs-btn-active-bg: #12a991;
    --bs-btn-active-border-color: #12a991;
    --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
    --bs-btn-disabled-color: #12a991;
    --bs-btn-disabled-bg: transparent;
    --bs-btn-disabled-border-color: #12a991;
    --bs-gradient: none;
}

.btn 
{
    --bs-btn-padding-x: 14px;
    --bs-btn-padding-y: 22px;
    --bs-btn-font-family: ;
    --bs-btn-font-size: 1rem;
    --bs-btn-font-weight: 40;
    --bs-btn-line-height: 28.5px;
    --bs-btn-color: var(--bs-body-color);
    --bs-btn-bg: transparent;
    --bs-btn-border-width: var(--bs-border-width);
    --bs-btn-border-color: transparent;
    --bs-btn-border-radius: var(--bs-border-radius);
    --bs-btn-hover-border-color: transparent;
    --bs-btn-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15),0 1px 1px rgba(0, 0, 0, 0.075);
    --bs-btn-disabled-opacity: 0.65;
    --bs-btn-focus-box-shadow: 0 0 0 0.25rem rgba(var(--bs-btn-focus-shadow-rgb), .5);
    display: inline-block;
    padding: var(--bs-btn-padding-y) var(--bs-btn-padding-x);
    font-family: var(--bs-btn-font-family);
    font-size: var(--bs-btn-font-size);
    font-weight: var(--bs-btn-font-weight);
    line-height: var(--bs-btn-line-height);
    color: var(--bs-btn-color);
    text-align: center;
    text-decoration: none;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
    border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
    border-radius: var(--bs-btn-border-radius);
    background-color: none;
    transition: color .5s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.container, .container-fluid, .container-lg, .container-md, .container-sm, .container-xl, .container-xxl {
    --bs-gutter-x: 7.5rem;
    --bs-gutter-y: 0;
    width: 100%;
    padding-right: calc(var(--bs-gutter-x) * .5);
    padding-left: calc(var(--bs-gutter-x) * .9);
    margin-right: auto;
    margin-left: 16px;
}

/*=====================================================*/


/* 배너 버튼 아이콘 */
#searchButton, #chatButton, #alarmButton
{
	padding: 0 5px 0 5px;
	transition-property: all;
	transition-duration:0.5s;
	border-radius: 50%;
	font-size: 20px;
	line-height: 30px;

}

/* 검색 버튼 돋보기 아이콘에 마우스 올렸을 때 */
#searchButton:hover, #chatButton:hover, #alarmButton:hover
{
	background: #12a991;
}

.buttonBox
{
	margin: 4px 30px 0 30px;
}

.container-fluid
{
	box-shadow : 2px 2px 2px 2px #87878775;
	height: 50px;
}

.bannerMain
{
	width: 1200px; max-width: none;
	
}

.log{margin-top: 6px;}
.mainArea{justify-content: center;}
</style>



</head>
<body>
	



<div class="row mainArea">

	<div class="col-12 bannerMain">
		<div class="row bannerArea">
			<nav class="navbar bg-body-tertiary">
			  <div class="container-fluid nav nav-underline">
			    
			 	<!--===========[Logo]===========-->
				<a class="navbar-brand bannerLogo" href="#">
					<img alt="Logo" class="bannerLogoImage d-inline-block align-text-top" src="img/TestLogo.png" >
				</a>
				<!--===========[Logo]===========-->
				
				<span class="nav-link"><a href="#">프로젝트 게시판</a></span>
				<span class="nav-link"><a href="#">커리어 게시판</a></span>
				<span class="nav-link"><a href="#">포트폴리오 게시판</a></span>
			
			    
			    <!--=======[ member Icon ]=======-->
			    <div class="oneMember">
					<div class="buttonBox">
						<!--======[ search Button ]======-->
						<button id="searchButton" class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
							<ion-icon name="search-outline"></ion-icon>
						</button>
						<!--======[ search Button ]======-->
		
						<!--======[ chat Button ]======-->
						<button id="chatButton" class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
							<ion-icon name="chatbubble-outline"></ion-icon>
						</button>
						<!--======[ chat Button ]======-->
		
						<!--======[ alarmButton ]======-->
						<button id="alarmButton" class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
							<ion-icon name="notifications"></ion-icon>
						</button>				
						<!--======[ alarmButton ]======-->
				    </div><!-- end .buttonBox -->
				    <!-- 
					<div id="profile">
						<img class="memberImg" src="img/profileImg_1.png">
					</div>
					<span class="nickname" id="mem1">강구가구가구가</span>
					<div class="gradeIcon">
						🌱
					</div>
					 -->
					 <!--  -->
					<span class="nav-link log" ><a href="login.jsp">로그인/회원가입</a></span>
				</div><!-- end .oneMember -->
			    <!--=======[ member Icon ]=======-->
			    </div>
			  	</div><!-- end .container-fluid -->
			</nav>
		</div><!-- end .row .bannerArea  -->
	</div>

	
	<!--===========[offCanvas]===========-->
	<div class="col-12">
		
		
		<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
		  
		  
		  <!--[ 검색창을 열었을 때 보여지는 내용 ]-->
		  <div class="offcanvas-body">
		  
		  	<div class="row searchFormArea align-self-center">
		  	
				<div class="col-2">
					<ion-icon name="search-circle"></ion-icon>
				</div><!-- end .col-1 -->
				
				<div class="col-8">
				    <!--===========[searchForm]===========-->
				    <form class="d-flex" role="search">
				      <input class="form-control me-2 searchTextForm" type="search" placeholder="검색어를 입력하세요." aria-label="Search">
				      <button class="btn btn-outline-success" type="submit">Search</button>
				    </form>
				    <!--===========[searchForm]===========-->
			    </div><!-- end .col-8 -->
			    
		    </div><!-- end .row -->
		    
		  </div><!-- end .offcanvas-body -->
		</div>
	</div>
	<!--===========[offCanvas]===========-->
	
	
	
	
	<div class="col-6 menuArea">
		<div class="leftmenuBarBox">
			<div class="leftmenuBar">
			
				<!--===========[Logo]===========-->
				<a class="navbar-brand mainLogo" href="#">
					<img alt="Logo" class="LogoImage d-inline-block align-text-top" src="img/TestLogo.png" >
				</a>
				<!--===========[Logo]===========-->
				
				
				<div class="menuOptions nav nav-underline" id="nav">
					<ul class="nav-item">
						<a href="#" class="majorTopic nav-link">Menu1<ion-icon class="menuIcon" name="terminal-outline"></ion-icon></a>
						<li>
							<ul>
								<li><a href="#" class="nav-link">small1</a></li>
								<li><a href="#" class="nav-link">small2</a></li>
								<li><a href="#" class="nav-link">small3</a></li>
								<li><a href="#" class="nav-link">small4</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav-item">
						<a href="#" class="majorTopic nav-link">Menu2<ion-icon class="menuIcon" name="desktop-outline"></ion-icon></a>
						<li>
							<ul>
								<li><a href="#" class="nav-link">small1</a></li>
								<li><a href="#" class="nav-link">small2</a></li>
								<li><a href="#" class="nav-link">small3</a></li>
								<li><a href="#" class="nav-link">small4</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav-item">
						<a href="#" class="majorTopic nav-link">Menu3<ion-icon class="menuIcon" name="reader-outline"></ion-icon></a>
						<li>
							<ul>
								<li><a href="#" class="nav-link">small1</a></li>
								<li><a href="#" class="nav-link">small2</a></li>
								<li><a href="#" class="nav-link">small3</a></li>
								<li><a href="#" class="nav-link">small4</a></li>
							</ul>
						</li>
					</ul>
					<ul class="nav-item">
						<a href="#" class="majorTopic nav-link">Menu4<ion-icon class="menuIcon" name="person-outline"></ion-icon></a>
						<li>
							<ul>
								<li><a href="#" class="nav-link">small1</a></li>
								<li><a href="#" class="nav-link">small2</a></li>
								<li><a href="#" class="nav-link">small3</a></li>
								<li><a href="#" class="nav-link">small4</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- end .menuOptions -->
			</div><!-- end .leftmenuBar -->
		</div><!-- end .leftmenuBarBox -->
	</div><!-- end .col-6 .menuArea -->
</div><!-- end .row -->

<div>hellokjsfhgkhjkhkjlhkjhasfjdaslkjadhsahjddsfdsfsddfsfdsasdshfjh</div>

</body>
</html>