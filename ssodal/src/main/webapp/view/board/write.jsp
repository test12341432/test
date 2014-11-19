<%@ page contentType="text/html; charset=utf-8" %>
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
						<form method="post" action="board_write_save.do" onsubmit="return check();">
							<input type="hidden" name="board_name" id="board_name" value="FreshSJ" />
						    <ul>
								<li>
								    <h3>Title</h3>
								    <input type="text" name="board_title" id="board_title" placeholder="Title" />
								    <p id="warning_title" class="warning_message"></p>
								</li>
								<li>
								    <input type="checkbox" name="board_private" id="board_private" value="0" />
								    <label for="board_private">Private</label>
								    <div id="password_wrapper">
									<h3>Password</h3>
									<input type="password" name="board_password" id="board_password" placeholder="Password" />
									<h3>Confirm</h3>
									<input type="password" name="board_confirm" id="board_confirm" placeholder="Password Confirm" />
									<p id="warning_password" class="warning_message"></p>
								    </div>
								</li>
								<li>
								    <h3>Image</h3>
								    <input type="hidden" name="board_img" id="board_img" value="0" />
								    <input type="file" name="board_file" id="board_file" accept="image/png,image/jpeg" onchange="handlerImage();" />
								    <label for="board_file">image</label>
								</li>
								<li>
								    <h3>Content</h3>
								    <textarea name="board_content" id="board_content" placeholder="Input..."></textarea>
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