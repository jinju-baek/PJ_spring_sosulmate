<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/adminSidebar.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path}/resources/css/common.css">
	<title>adminregister</title>
<style type="text/css">

.community_register_wrap{
  width: 100%;
  margin: 0 auto;
} 


/*본문*/
.community_register_content_wrap{
  padding-top: 30px;
  width: 100%;
}
.register_content_wrap{
  width: 900px;
  height: auto;
  margin : 0 auto 60px auto;
  border : 0px solid black;
}

/*본문 title*/
.register_board{
  padding-bottom: 5px;
  padding-left: 10px;
  margin-bottom: 15px;
  font-size: 30px;
  font-weight: bold;
  border-bottom : 2px solid #656464;
  
}
.register_title_input{
  display: flex;
  
  border : 1px solid #D1D5D9;
  border-radius: 5px;
  width: 900px;
  padding-left: 10px;
  margin-bottom: 20px;
  align-items: center;
  
}
.register_title_input > input{  
  width: 100%;
  height: 35px;
  border : none;

}
.register_editor_wrap{

  margin-bottom: 20px;

}
.register_btn_wrap{
  display: flex;
  justify-content: space-between;
}

.admin_btn{
	padding: 7px 20px;	
	border-radius: 6px;
	border: 1px solid #708090;
	background-color: #708090;
	color: white;
	font-size: 13px;
}
</style>
  </head>
  <body>
    <div class="community_register_wrap">
     <div class="community_register_content_wrap">
      <div class="register_content_wrap">
        <div class="register_content_detail">
          <div class="register_board">
            공지사항
          </div>

          <div class="register_title_wrap">
            <div class="register_title_input">
              <input type="text" name="" placeholder="제목을 입력해주세요.">
            </div>
          </div>

          <div class="register_editor_wrap">
            <form method="post">
              <textarea id="summernote" name="editordate"></textarea>
            </form>
          </div>

          <div class="register_btn_wrap">
            <div>
            <button class="admin_btn">취소</button>
            </div>

            <div>
              <button class="admin_btn">글쓰기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 
    <script>
      $('#summernote').summernote({
        placeholder: '내용을 입력해주세요.',
        tabsize: 2,
        height: 500,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>
  </body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</html>