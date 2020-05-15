<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/825f57de13.js" crossorigin="anonymous"></script> 
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/common.css">
	<title>communityregister</title>
<style type="text/css">
.community_register_wrap{
  width: 100%;
  margin: 0 auto;
} 


/*상단바*/
.ranking_menu_wrap{
  width: 100%;
}

.ranking_menu_genre_wrap{
  position: relative;
  height: 52px;
  border-bottom : 1px solid #656464;
  display: flex;
  line-height: 48px;
}

.ranking_menu_plat_contain{
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
  text-align: center;
}
.ranking_menu_plat_contain > ul {
  list-style: none;
  padding : 0;
  margin : 0;
  position: relative;
}
.ranking_menu_plat_contain > ul > li {
  position: relative;
  border : 0;
  display: inline-block;
  float: none;
  padding: 0 2px;
  transition: all .3s ease;


}
.ranking_menu_plat_contain > ul > li > a {
  border-radius: 50px;
  position: relative;
  padding : 6px 16px;
  font-size: 13px;
  line-height: 12px;
  color: #565656;
  font-weight: 500;
  border : 2px solid transparent;

}

.ranking_menu_plat_contain > ul > li:hover>a {
  border-width: 2px;
  border-style: solid;
  border-color : #E50020;
  color : #E50020;
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
  font-size: 20px;
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
</style>
  </head>
  <body>
    <div class="community_register_wrap">
  <div class="ranking_menu_wrap">
      <div class="topmenu_wrap">
        <div class="topmenu_Bar">
          <div class="topmenu_contain">
            <ul>
              <li>
                <a href="#">자유</a>
              </li>
              <li>
                <a href="#">후기</a>
              </li>
              <li>
                <a href="#">작품공지</a>
              </li>
              <li>
                <a href="#">작가토크</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>


    <div class="community_register_content_wrap">
      <div class="register_content_wrap">
        <div class="register_content_detail">
          <div class="register_board">
            자유 게시판
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
            <button class="smallBtn_white">취소</button>
            </div>

            <div>
              <button class="smallBtn_red">글쓰기</button>
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
  <script type="text/javascript">
   $(function(){
        $('.topmenu_contain a').click(function(){
        $('.topmenu_contain a').css('color', '#2F3138')
                               .css('border', '2px solid white');
        $(this).css('color', '#E50020')
               .css('border', '2px solid #E50020');
        });
  });
  

</script>

</html>