<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
<style type="text/css">
	.input-group{
		width: 700px; 
	}
	.card-text{height: 70px; border-top: 1px solid gray;}
	.card-title{font-weight: bold;}
	.page-link{color: black;}
	
	#searchbar{border-top: 1px solid gray;}
	.sidecard{width: 255px; height: 760px; position: absolute;  top: 250px;  right: 240px;}
	.cardlist{font-size: 15px;}
	.contentlist{font-size: 15px; border-bottom:1px solid black; height: 24px;}
	
	.input-group>.form-control:focus {
    border-color: #345f53;
    box-shadow:  0 0 0.25rem #345f53;
	}
	.form-control:focus {
    border-color: #345f53;
    box-shadow:  0 0 0.25rem #345f53;
}

.page-link:focus {
    z-index: 3;
    color: #345f53;
    background-color: var(--bs-pagination-focus-bg);
    outline: 0;
    box-shadow:  0 0 0.25rem #345f53;
}	
	.navbar-brand{color: #345f53; font-size: 30px;}
	.nav-pills .nav-link.active, .nav-pills .show>.nav-link {
    color: var(--bs-nav-pills-link-active-color);
    background-color: #345f53;
}

@font-face {
    font-family: 'SokchoBadaDotum';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2402_1@1.0/SokchoBadaDotum.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

@font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
}

 .row{font-family: 'Pretendard-Regular';}
nav{font-family: 'SokchoBadaDotum';}
.nav{font-family: 'SokchoBadaDotum';}
.des{color: white; background: #345f53; font-family: 'SokchoBadaDotum'; text-align: center;}
.form-select:focus {
    border-color: #345f53;
    box-shadow:  0 0 0.25rem #345f53;
}

</style>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/@yaireo/tagify"></script>
<script src="https://unpkg.com/@yaireo/tagify/dist/tagify.polyfills.min.js"></script>
<link href="https://unpkg.com/@yaireo/tagify/dist/tagify.css" rel="stylesheet" type="text/css" />
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary nav-underline">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Code Mate</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <li class="nav-item">
          <a class="nav-link" href="#">Q&A 게시판</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            프로젝트
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">전체 프로젝트</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">진행중인 프로젝트</a></li>
            <li><a class="dropdown-item" href="#">완료된 프로젝트</a></li>
          </ul>
        </li>
        <!-- 
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Link</a>
        </li>
         -->
         
        
      </ul>
      <div class="dropdown">
      <a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
        <img src="data:image/jpeg;base64,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" alt="" width="32" height="32" class="rounded-circle me-2">
        <strong>Organ</strong>
      </a>
      <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2" style="">
        <li><a class="dropdown-item" href="#">설정</a></li>
        <li><a class="dropdown-item" href="#">내정보</a></li>
        <li><hr class="dropdown-divider"></li>
        <li><a class="dropdown-item" href="#">로그아웃</a></li>
      </ul>
    </div>
      <!-- <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="검색어를 입력하세요" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> -->
      
    </div>
  </div>
</nav>

<div class="container-fluid">
	<div class="row">
		<div class="d-flex flex-column flex-shrink-0 p-3 bg-light col-2" style="height: 800px;" >
		    <ul class="nav nav-pills flex-column mb-auto">
		      <li class="nav-item">
		        <a href="#" class="nav-link active" aria-current="page">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#home"></use></svg>
		           테스크관리
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#speedometer2"></use></svg>
		          모집중인 프로젝트
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#table"></use></svg>
		          메뉴 1
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#grid"></use></svg>
		          메뉴 2
		        </a>
		      </li>
		      <li>
		        <a href="#" class="nav-link link-dark">
		          <svg class="bi me-2" width="16" height="16"><use xlink:href="#people-circle"></use></svg>
		          메뉴 3
		        </a>
		      </li>
		    </ul>
		  </div>
		  
		   <div class="col-10" style="padding-top: 20px; padding-left: 20px;">
		  		<div class="row">
		  			<div class="col-1"></div>
			  		<div class="col-7">
			  			<h2>테스크 등록</h2>
			  		</div>
			  		<div class="col-2">
			  			<button type="button" class="btn btn-outline-success">저장</button>
			  			<button type="button" class="btn btn-outline-warning	">목록</button>
			  		</div>
		  		</div>
		  		
		  		<div class="row"  style="padding-top: 10px;">
		  			<div class="col-1"></div>
		  			<div class="col-6">
		  				<div class="row">
			  				<div class="col-3">
			  					<label for="taskname" class="form-label">업무명</label>
			  				</div>
			  				<div class="col-8">
			  					<div class="mb-3">
								  <input type="email" class="form-control" id="taskname" placeholder="업무명">
								</div>
			  				</div>
		  				</div>
		  				<div class="row">
			  				<div class="col-3">
			  					<label for="content" class="form-label">업무내용</label>
			  				</div>
			  				<div class="col-8">
			  					<div class="mb-3">
								  <textarea class="form-control" id="content" rows="10"></textarea>
								</div>
			  				</div>
		  				</div>
		  				<div class="row">
			  				<div class="col-3">
			  					<label for="startdate" class="form-label">시작일</label>
			  				</div>
			  				<div class="col-8">
			  					<div class="mb-3">
								  <input type="date" class="form-control" id="startdate" placeholder="업무명">
								</div>
			  				</div>
		  				</div>
		  				<div class="row">
			  				<div class="col-3">
			  					<label for="enddate" class="form-label">종료일</label>
			  				</div>
			  				<div class="col-8">
			  					<div class="mb-3">
								  <input type="date" class="form-control" id="enddate" placeholder="업무명">
								</div>
			  				</div>
		  				</div>
		  				<div class="row">
			  				<div class="col-3">
			  					<label for="exampleFormControlInput1" class="form-label">담당</label>
			  				</div>
			  				<div class="col-8">
			  					<div class="mb-3">
								  <select class="form-select" aria-label="Default select example">
									  <option selected>할당받을 팀원</option>
									  <option value="1">길현욱</option>
									  <option value="2">박범구</option>
									  <option value="3">김지민</option>
									  <option value="4">정한울</option>
									  <option value="5">이윤수</option>
								</select>
								</div>
			  				</div>
		  				</div>
		  				<div class="row">
			  				<div class="col-3">
			  					<label for="exampleFormControlInput1" class="form-label">태그</label>
			  				</div>
			  				<div class="col-8">
			  					<input name='basic'>

								<script>
								    const input = document.querySelector('input[name=basic]');
								    let tagify = new Tagify(input); // initialize Tagify
								    
								    // 태그가 추가되면 이벤트 발생
								    tagify.on('add', function() {
								      console.log(tagify.value); // 입력된 태그 정보 객체
								    })
								</script>
			  				</div>
			  				
		  				</div>
		  			</div>
		  			<div class="col-2">
		  				<div class="des">업무내용은 자세하게 적어주세요</div>
		  				<br>
		  				<div class="des">업무내용은 자세하게 적어주세요</div>
		  			</div>
		  			
		  		</div>
		  </div>
	</div>
 </div>
 
 
</body>
</html>