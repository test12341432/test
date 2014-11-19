<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		
    <!-- ----- CSS ----- -->
		<!-- ----- common ----- -->
		<link type="text/css" rel="stylesheet" href="./bundle/css/common.css" />
		<!-- ----- write ----- -->
		<link type="text/css" rel="stylesheet" href="./bundle/css/board/write.css" />

	<!-- ----- Javascript ----- -->
		<!-- ----- JQuery ----- -->
		<script type="text/javascript" src="./bundle/js/jquery-1.11.1.js"></script>
		<!-- ----- header ----- -->
		<script type="text/javascript" src="./bundle/js/board/write.js"></script>
		
		<title>SSODAL</title>
	</head>
	<body>
		<div id="wrapper">
			
			<article id="article">
				
				<section id="section_write">
				    <div id="write_wrapper">
						<form method="post" action="board_edit_save.do" onsubmit="return check();">
							<input type="hidden" name="board_name" id="board_name" value="FreshSJ" />
						    <ul>
								<li>
								    <h3>Title</h3>
								    <input type="text" name="board_title" id="board_title" placeholder="Title" value="${ boardBean.board_title }" />
								    <p id="warning_title" class="warning_message"></p>
								</li>
								<li>
								    <input type="checkbox" name="board_private" id="board_private" value="${ boardBean.board_private }" <c:if test="${ boardBean.board_private==1 }">checked</c:if> />
								    <label for="board_private">Private</label>
								    <div id="password_wrapper">
									<h3>Password</h3>
									<input type="password" name="board_password" id="board_password" placeholder="Password" value="<c:if test="${ boardBean.board_private==1 }">${ boardBean.board_password }</c:if>" />
									<h3>Confirm</h3>
									<input type="password" name="board_confirm" id="board_confirm" placeholder="Password Confirm" value="<c:if test="${ boardBean.board_private==1 }">${ boardBean.board_password }</c:if>" />
									<p id="warning_password" class="warning_message"></p>
								    </div>
								</li>
								<li>
								    <h3>Image</h3>
								    <input type="hidden" name="board_img" id="board_img" value="${ boardBean.board_img }" />
								    <input type="file" name="board_file" id="board_file" accept="image/png,image/jpeg" onchange="handlerImage();" value="${ boardBean.board_file }" />
								    <label for="board_file">image</label>
								</li>
								<li>
								    <h3>Content</h3>
								    <textarea name="board_content" id="board_content" placeholder="Input...">${ boardContent }</textarea>
								    <p id="warning_content" class="warning_message"></p>
								</li>
						    </ul>
						    <div id="menu_wrapper">
								<input type="submit" name="submit" id="submit" value="Save" />
								<input type="reset" name="reset" id="reset" value="Reset" />
								<input type="button" name="list" id="list" value="list" onclick="location.href='board_list.do';" />
						    </div>
						</form>
				    </div>
				</section>
				
			</article>
			
		</div>
	</body>
</html>