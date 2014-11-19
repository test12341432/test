<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../header/header.jsp" %>

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
								<input type="button" value="R석" class="seat_one_R_left"/>
								<input type="button" value="VIP석" id="vip_seat" name="vip_seat" class="seat_one_VIP_mid" />
								<input type="button" value="R석" class="seat_one_R_right"/>
								</div>
								<div id="two_floor">
								<p>2층</p>
								<input type="button" value="VIP석" id="vip_seat" name="vip_seat" class="seat_two_VIP" />
								<input type="button" value="R석" class="seat_two_R"/>
								<input type="button" value="S석" class="seat_two_S"/>
								</div>
								<div id="three_floor">
								<p style="font-color:white;">3층</p>
								<input type="button" value="S석" class="seat_three_S"/>
								<input type="button" value="A석" class="seat_three_A"/>
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