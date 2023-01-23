<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- 글꼴  -->
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@400;700&family=Noto+Sans+KR:wght@900&display=swap" rel="stylesheet"><link rel="stylesheet" href="<%=request.getContextPath()%>/css/ootdEnroll.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> 
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src=" https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.18/lang/summernote-ko-KR.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- 서머노트를 위해 추가해야할 부분 -->
<script src="<%=request.getContextPath()%>/summernote/summernote-lite.js"></script>
<script src="<%=request.getContextPath()%>/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/summernote/summernote-lite.css">
<br />
<section id="board-container">
<<<<<<< HEAD
	<h2 id="ootdwrite" style="font-weight : 700">OOTD 게시글 작성</h2>
	<form
		name="shareBoardEnrollFrm"
		action="<%=request.getContextPath()%>/share/shareEnroll"
		method="post">
		<table id="tbl-board-view">
		<thead>
		<tr >
			<th style ="padding-top:20px; font-size : 24px">제 목</th>
			<td style ="padding-top:20px" ><input  class="inputtext" type="text" name="shareitle" required></td>
		</tr>
		</thead>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text"  class="inputtext" name="sharewriter" value="tigerhj" readonly/>
			</td>
		</tr>
		<tr>
			<th>상의</th>
			<td>
				<input type="text" class="inputtext"  name="shareTop" value="" />
			</td>
		</tr>
		<tr>
			<th>하의</th>
			<td>
				<input type="text"  class="inputtext" name="shareBottom" value="" />
			</td>
		</tr>
			<tr>
			<th>신발</th>
			<td>
				<input type="text" class="inputtext" name="shareShoes" value="" />
			</td>
		</tr>
			<tr>
			<th>기타</th>
			<td>
				<input type="text" class="inputtext" name="shareEtc" value="" />
			</td>
		</tr>
		<tr>
			<th>스타일</th>
			<td>
				<input type="checkbox" name="style" id="S1" value=""  ><label for="S1">러블리 &nbsp;</label>		
				<input type="checkbox" name="style" id="S2" value=""  ><label for="S2">댄디 &nbsp;</label>		
				<input type="checkbox" name="style" id="S3" value=""  ><label for="S3">포멀 &nbsp;</label>		
				<input type="checkbox" name="style" id="S4" value=""  ><label for="S4">스트릿 &nbsp;</label>		
				<input type="checkbox" name="style" id="S5" value=""  ><label for="S5">걸리쉬 &nbsp;</label>		
				<input type="checkbox" name="style" id="S6" value=""  ><label for="S6">레트로 &nbsp;</label>	
				<input type="checkbox" name="style" id="S7" value=""  ><label for="S7">로맨틱 &nbsp;</label>	
				<input type="checkbox" name="style" id="S8" value=""  ><label for="S8">시크&nbsp;</label>	
				<input type="checkbox" name="style" id="S9" value=""  ><label for="S9">아메카지</label>	
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td>			
				<input type="file" name="upFile1">
			</td>
		</tr>
		<tr>
			<th  colspan="2" >
			<div class="container">
<!-- 		  <textarea colspan="2" id="summernote"  class="summernote" name ="editordata"></textarea>-->	
 			  <textarea colspan="2" id="summernote"  class="summernote" name ="shareContents"></textarea>    
			</div>
			</th>
		</tr>
		<tr>
			<th colspan="2">
				<!--<input  class ="inputbuttons" type="submit" value="CANCEL"  style="margin-left : 100px"> -->
				<input  class ="inputbuttons"  type="submit" value="SUBMIT">
			</th>
		</tr>
	</table>
	</form>
</section>
<br />
<br />
<br />
<script>
/* \$('.summernote').summernote({
	  // 에디터 높이 
	  width: 800,
	  height: 150,
	  // 에디터 한글 설정
	  lang: "ko-KR",
	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
	  focus : true,
	  toolbar: [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview','fullscreen', 'help']]
		  ],
		  // 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		 // 추가한 폰트사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		
	}); */
	
	$(document).ready(function() {

		var toolbar = [
			    // 글꼴 설정
			    ['fontname', ['fontname']],
			    // 글자 크기 설정
			    ['fontsize', ['fontsize']],
			    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    // 글자색
			    ['color', ['forecolor','color']],
			    // 표만들기
			    ['table', ['table']],
			    // 글머리 기호, 번호매기기, 문단정렬
			    ['para', ['ul', 'ol', 'paragraph']],
			    // 줄간격
			    ['height', ['height']],
			    // 그림첨부, 링크만들기, 동영상첨부
			    ['insert',['picture','link','video']],
			    // 코드보기, 확대해서보기, 도움말
			    ['view', ['codeview','fullscreen', 'help']]
			  ];

		var setting = {
	            height : 300,
	            minHeight : null,
	            maxHeight : null,
	            focus : true,
	            lang : 'ko-KR',
	            toolbar : toolbar,
	            callbacks : { //여기 부분이 이미지를 첨부하는 부분
	            onImageUpload : function(files, editor,
	            welEditable) {
	            for (var i = files.length - 1; i >= 0; i--) {
	            uploadSummernoteImageFile(files[i],
	            this);
	            		}
	            	}
	            }
	         };

	        $('#summernote').summernote(setting);
	        });
</script>
<script>
/**
* boardEnrollFrm 유효성 검사
*/
document.shareBoardEnrollFrm.onsubmit = (e) => {
	const title = e.target.title;
	const content = e.target.content;
	console.log(title, content);
	
	//제목을 작성하지 않은 경우 폼제출할 수 없음.
	if(!/^.+$/.test(title.value)){
		alert("제목을 작성해주세요");
		title.select();
		return false;
	}
						   
	//내용을 작성하지 않은 경우 폼제출할 수 없음.
	if(!/^.|\n+$/.test(content.value)){
		alert("내용을 작성해주세요");
		content.select();
		return false;
	}
}
=======
	<h2 id="ootdwrite" style="font-weight : 700">SHARE 게시글 작성</h2>
	<form
		name="ShareBoardEnrollFrm"
		action="<%=request.getContextPath()%>/share/shareEnroll" 
		method="post">
		<table id="tbl-board-view">
		<thead>
		<tr >
			<th style ="padding-top:20px; font-size : 24px">제 목</th>
			<td style ="padding-top:20px" ><input  class="inputtext" type="text" name="ootdtitle" required></td>
		</tr>
		</thead>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text"  class="inputtext" name="ootdwriter" value="incheol" readonly/>
			</td>
		</tr>
		<tr>
			<th>상의</th>
			<td>
				<input type="text" class="inputtext"  name="ootdTop" value="" />
			</td>
		</tr>
		<tr>
			<th>하의</th>
			<td>
				<input type="text"  class="inputtext" name="ootdBottom" value="" />
			</td>
		</tr>
			<tr>
			<th>신발</th>
			<td>
				<input type="text" class="inputtext" name="ootdShoes" value="" />
			</td>
		</tr>
			<tr>
			<th>기타</th>
			<td>
				<input type="text" class="inputtext" name="ootdEtc" value="" />
			</td>
		</tr>
		<tr>
			<th>스타일</th>
			<td>
				<input type="checkbox" name="style" id="S1" value=""  ><label for="S1">러블리 &nbsp;</label>		
				<input type="checkbox" name="style" id="S2" value=""  ><label for="S2">댄디 &nbsp;</label>		
				<input type="checkbox" name="style" id="S3" value=""  ><label for="S3">포멀 &nbsp;</label>		
				<input type="checkbox" name="style" id="S4" value=""  ><label for="S4">스트릿 &nbsp;</label>		
				<input type="checkbox" name="style" id="S5" value=""  ><label for="S5">걸리쉬 &nbsp;</label>		
				<input type="checkbox" name="style" id="S6" value=""  ><label for="S6">레트로 &nbsp;</label>	
				<input type="checkbox" name="style" id="S7" value=""  ><label for="S7">로맨틱 &nbsp;</label>	
				<input type="checkbox" name="style" id="S8" value=""  ><label for="S8">시크&nbsp;</label>	
				<input type="checkbox" name="style" id="S9" value=""  ><label for="S9">아메카지</label>	
			</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td>			
				<input type="file" name="upFile1">
				<input type="file" name="upFile2">
			</td>
		</tr>
		<tr>
		<th>이미지 보기</th>
		<td>
			<div id="img-viewer-container">
				<img id="img-viewer" width="350px">
			</div>
		</td>
	</tr>
		<tr>
			<th  colspan="2" >
			<div class="container">
<!-- 		  <textarea colspan="2" id="summernote"  class="summernote" name ="editordata"></textarea>-->	
 			  <textarea colspan="2" id="summernote"  class="summernote" name ="ootdContents"></textarea>    
			      
			</div>
			</th>
		</tr>
		<tr>
			<th colspan="2">
				<!--<input  class ="inputbuttons" type="submit" value="CANCEL"  style="margin-left : 100px"> -->
				<input  class ="inputbuttons"  type="submit" value="SUBMIT">
			</th>
		</tr>
	</table>
	</form>
</section>
<br />
<br />
<br />
<script>
/* \$('.summernote').summernote({
	  // 에디터 높이 
	  width: 800,
	  height: 150,
	  // 에디터 한글 설정
	  lang: "ko-KR",
	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
	  focus : true,
	  toolbar: [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview','fullscreen', 'help']]
		  ],
		  // 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		 // 추가한 폰트사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		
	}); */
	
	$(document).ready(function() {

		var toolbar = [
			    // 글꼴 설정
			    ['fontname', ['fontname']],
			    // 글자 크기 설정
			    ['fontsize', ['fontsize']],
			    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    // 글자색
			    ['color', ['forecolor','color']],
			    // 표만들기
			    ['table', ['table']],
			    // 글머리 기호, 번호매기기, 문단정렬
			    ['para', ['ul', 'ol', 'paragraph']],
			    // 줄간격
			    ['height', ['height']],
			    // 그림첨부, 링크만들기, 동영상첨부
			    ['insert',['picture','link','video']],
			    // 코드보기, 확대해서보기, 도움말
			    ['view', ['codeview','fullscreen', 'help']]
			  ];

		var setting = {
	            height : 300,
	            minHeight : null,
	            maxHeight : null,
	            focus : true,
	            lang : 'ko-KR',
	            toolbar : toolbar,
	            callbacks : { //여기 부분이 이미지를 첨부하는 부분
	            onImageUpload : function(files, editor,
	            welEditable) {
	            for (var i = files.length - 1; i >= 0; i--) {
	            uploadSummernoteImageFile(files[i],
	            this);
	            		}
	            	}
	            }
	         };

	        $('#summernote').summernote(setting);
	        });
</script>
<script>
/**
* ShareEnrollFrm 유효성 검사
*/
document.ShareBoardEnrollFrm.onsubmit = (e) => {
	const title = e.target.title;
	const content = e.target.content;
	console.log(title, content);
	
	//제목을 작성하지 않은 경우 폼제출할 수 없음.
	if(!/^.+$/.test(title.value)){
		alert("제목을 작성해주세요");
		title.select();
		return false;
	}
						   
	//내용을 작성하지 않은 경우 폼제출할 수 없음.
	if(!/^.|\n+$/.test(content.value)){ // \n은 따로 추가해줘야됨 (왜냐면 .애는 개행이 포함안되서 ) 
		alert("내용을 작성해주세요");
		content.select();
		return false;
	}
}



document.querySelector("#upFile1").addEventListener('change', (e) => {
	const f = e.target;
	console.log(f.files);
	console.log(f.files[0]);
	
	if(f.files[0]){
		// 파일 선택한 경우
		const fr = new FileReader();
		fr.readAsDataURL(f.files[0]); // 비동기 - 백그라운드 작업
		fr.onload = (e) => {
			// 읽기 작업 완료시 호출될 load이벤트핸들러
			document.querySelector("#img-viewer").src = e.target.result; // dataUrl
			console.log(e.target.result); // 파일이진데이터 인코딩한 결과
		};
	}
	else {
		// 파일 선택 취소한 경우
		document.querySelector("#img-viewer").src = "";
	}
	
	
});


>>>>>>> branch 'master' of https://github.com/incheol789/OBTG-semi-project.git
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
