<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<input type="hidden" id="seat_code" name="seat_code" value="${seat_code}"/>
	<div id="seat_title">
		<h2>미완성</h2>
	</div>
	<div id="seat_locat">
		<p>seat_code값:${seat}번 코드는<c:if test="${seat ==1 }">vip입니다</c:if>
		<c:if test="${seat ==2 }">r석 입니다</c:if></p>
		<p>한줄 당 좌석수: ${vipLine}</p>
		
		<!-- <p>DB에서 불러온 콘텐츠 넘버값: ${code}</p> -->
		<p>vip총좌석수: ${max}</p>
		
		<c:forEach var="t" items="${seatList}" >
				<c:if test="${ t.selected_seat == 0}">
					<input type="button" value="${t.seat_line}열${t.seat_row}행"/>&nbsp;
				</c:if>
			<c:forEach var="s" items="${s_seat}" >
				<c:if test="${ t.selected_seat == 1}">
					<input type="button" value="매진!" style="background-color:red;" />
				</c:if>
			</c:forEach>
		</c:forEach>
	</div>