<%@ page contentType="text/html; charset=UTF-8" %>
 <%@ include file="../header/header.jsp"%>
			<article id="article">
				<section id="section_seat">
					<div id="seat_outline">
						<div id="seat_location">
							<div id="seat_lo_box">
								<div id="seat_stage">
									<h3>STAGE</h3>
								</div>
								<div id="one_floor">
								<p>1층</p>
								
								
								<ul>
								<li class="seat_one_R_left">R석</li>
								<a href="javascript:;" onclick="open_url('select_result.do', 'seat_code=1', 'seat_location')"><li class="seat_one_VIP_mid" >VIP석</li></a>
								<a href="javascript:;" onclick="open_url('select_result.do', 'seat_code=2', 'seat_location')"><li class="seat_one_R_right">R석</li></a>
								</ul>
								</div>
								<div id="two_floor">
								<p>2층</p>
								<ul>
								<li class="seat_two_VIP" >VIP석</li>
								<li class="seat_two_R">R석</li>
								<li class="seat_two_S" >S석</li>
								</ul>
								</div>
								<div id="three_floor">
								<p style="font-color:white;">3층</p>
								<ul>
								<li class="seat_three_S">S석</li>
								<li class="seat_three_A">A석</li>
								</ul>
								</div>
							</div>
						</div>
						<div id="seat_detail_Information">
							<div id="info_title">
							<p>제목&nbsp;${m.content_title}</p>
							<p>부제&nbsp;${m.content_subtitle}</p>
							<p>장르&nbsp;${m.content_genre}</p>
							<p>장소&nbsp;${m.content_spot}</p>
							<p>출연진&nbsp;${m.content_cast}</p>
							<p>등급&nbsp;${m.content_rating}세&nbsp;이상&nbsp;관람가</p>
							</div>
							<div id="info_date">
								
							</div>
						</div>
					</div>
				</section>
			</article>
		<footer>
			<jsp:include page="../footer/footer.jsp" flush="true" />
		</footer>
	</body>