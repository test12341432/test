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
		<link type="text/css" rel="stylesheet" href="./bundle/css/board/content.css" />
		
		<title>SSODAL</title>
	</head>
	<body>
		<div id="wrapper">
			<article id="article">
				<section id="section_content">
				    <div id="content_wrapper">
						<ul>
						    <li>
								<h3>${ boardBean.board_title }</h3>
						    </li>
						    <li>
								<h3>${ boardBean.board_name }</h3>
						    </li>
						    <li>
						    	<h3>♥ ${ boardBean.board_hit }</h3>
								<h3>${ boardBean.board_date }</h3>
						    </li>
						    <li>
						    	<c:if test="${ boardBean.board_img==1 }">
						    		<img src="${ boardBean.board_file }" width="100%" />
						    	</c:if>
								<p>${ boardContent }</p>
						    </li>
						</ul>
						<div id="menu_wrapper">
						    <input type="button" name="edit" id="edit" value="edit" onclick="location.href='board_edit.do?board_no=${ boardBean.board_no }';" />
						    <input type="button" name="delete" id="delete" value="delete" onclick="location.href='board_delete.do?board_no=${ boardBean.board_no }';" />
						    <input type="button" name="list" id="list" value="list" onclick="location.href='board_list.do';" />
						</div>
				    </div>
				</section>
			</article>
		</div>
	</body>
</html>