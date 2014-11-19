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
		<link type="text/css" rel="stylesheet" href="./bundle/css/board/list.css" />
		
		<title>SSODAL</title>
	</head>
	<body>
		<div id="wrapper">
			
			<article id="article">
		
				<section id="section_list">
				    <form id="list_wrapper">
						<ul id="list">
						    <li>
								<hgroup>
								    <h3 id="list_no">no</h3>
								    <h3 id="list_title">title</h3>
								    <h3 id="list_name">name</h3>
								    <h3 id="list_hit">hit</h3>
								    <h3 id="list_date">date</h3>
								</hgroup>
						    </li>
						    <c:if test="${ !empty list }">
						    	<c:forEach var="list" items="${ list }">
						    		<li>
										<hgroup>
										    <h3 class="list_no" name="list_no">${ list.board_no }</h3>
										    <c:if test="${ list.board_private==0 }">
										    	<a href="board_content.do?board_no=${ list.board_no }">
										    </c:if>
										    <c:if test="${ list.board_private==1 }">
										    	<a href="board_private.do?board_no=${ list.board_no }">
										    </c:if>
										    	<h3 class="list_title" name="list_title">
										    		<c:if test="${ list.board_private==1 }">
												    	<div class="icon_lock"></div>
												    </c:if>
										    		${ list.board_title }
										    		<c:if test="${ list.board_img==1 }">
												    	<div class="icon_img"></div>
												    </c:if>
										    	</h3>
										    </a>
												    
										    <h3 class="list_name" name="list_name">${ list.board_name }</h3>
											<c:if test="${ list.board_hit<=500 }">
												<h3 class="list_hit" name="list_hit">${ list.board_hit }</h3>
											</c:if>
											<c:if test="${ list.board_hit>500 }">
												<h3 class="list_hit" name="list_hit">500+</h3>
											</c:if>
										    <h3 class="list_date" name="list_date">${ list.board_date }</h3>
										</hgroup>
								    </li>
						    	</c:forEach>
						    </c:if>
						    <c:if test="${ empty list }">
						    	<li><hgroup><h4>NOTHING LIST</h4></hgroup></li>
						    </c:if>
						</ul>
						<ul id="menu_page">
						    <a href="#"><li>&lt;&lt;</li></a>
						    <a href="#"><li>&lt;</li></a>
						    <a href="#"><li class="selecter">1</li></a>
						    <a href="#"><li>2</li></a>
						    <a href="#"><li>3</li></a>
						    <a href="#"><li>4</li></a>
						    <a href="#"><li>5</li></a>
						    <a href="#"><li>&gt;</li></a>
						    <a href="#"><li>&gt;&gt;</li></a>
						</ul>
						<ul id="search_and_button_wrapper">
						    <li>
								<select name="search_field" id="search_field">
								    <option value="">Select</option>
								    <option value="board_no">No</option>
								    <option value="board_title">Title</option>
								    <option value="board_name">Name</option>
								</select>
						    </li>
						    <li>
								<input type="search" placeholder="Search" size="27" name="search_word" id="search_word" />
								<input type="submit" name="search_word_submit" value="search" id="search_word_submit" />
								<label for="search_word_submit" onclick="#"></label>
						    </li>
						    <li>
								<input type="button" name="write" id="write" value="Write" onclick="location.href='board_write.do';" />
						    </li>
						</ul>
				    </form>
				</section>
			
			</article>
			
		</div>
	</body>
</html>