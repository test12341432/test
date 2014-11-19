/* soddal_detail.sql */


drop table contents;
/* seat table */

create table contents(
content_code int primary key	--번호
,content_genre varchar2(100)	--장르
,content_title varchar2(300)	--제목
,content_subtitle varchar2(300)	--부제
,content_eventstart varchar2(300)	--행사기간 시작일
,content_eventend varchar2(300)	--행사기간 종료일
,content_spot varchar2(500)		--행사장소
,content_cast varchar2(4000)		--출연진
,content_rating int				--관람등급
,content_seat_class int				--좌석여부(지정석,자유석)
,content_maxcount int				--총 좌석
,content_com_price int				-- 자유석입장료
,content_vip_price int				-- vip입장료
,content_r_price int				-- R석 입장료
,content_s_price int				-- S석 입장료
,content_a_price int				-- A석 입장료
);
create sequence contents_no_seq increment by 1 start with 1 nocache;

select * from contents;

insert into contents values (contents_no_seq.nextval,'뮤지컬','뮤지컬 위키드','Musical Wicked','2013/11/22','2014/10/05'
,'샤롯데씨어터','김선영/박혜나/김소현/김보경/이지훈/조상웅/외..',7,1,0,360,140000,110000,900000,600000);

create table seat_info(
content_no int
,id varchar2(100)
,content_seat_class int
,seat_date int
,seat_location varchar2(10)
,seat_row int
,seat_line int
);
insert into seat_info values(3,'test',1,'2014/01/01','B',2,3);
ALTER TABLE seat_info 
ADD CONSTRAINT fk_seat_code FOREIGN KEY (content_no) REFERENCES contents (content_code); -- 외래키 지정
alter table seat_info modify(seat_date varchar2(300));
select * from seat_info;