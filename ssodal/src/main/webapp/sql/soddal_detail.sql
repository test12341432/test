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
,content_cast varchar2(4000) default '없음' --출연진
,content_rating int				--관람등급
,viptotal int default 0	--vip석 총좌석
,rtotal int default 0	--R석 총좌석
,stotal int default 0	--S석 총좌석
,atotal int default 0	--A석 총좌석
,vip_line int default 0 --vip총 열
,r_line int default 0 --r열의 총개수
,s_line int default 0 --s열의 총개수
,a_line int default 0 --a열의 총개수
,content_com_price int	default 0	-- 자유석입장료
,content_vip_price int	default 0	-- vip입장료
,content_r_price int	default 0	-- R석 입장료
,content_s_price int	default 0	-- S석 입장료
,content_a_price int	default 0	-- A석 입장료
);

/*정리할 때 삭제할 곳*/
create sequence contents_no_seq increment by 1 start with 1 nocache;
alter table contents drop(content_seat_class);
alter table contents add(viptotal int);
alter table contents add(content_seat_class int);
alter table contents add(rtotal int);
alter table contents add(stotal int);
alter table contents add(atotal int);
alter table contents add(vip_line int);
alter table contents add(r_line int);
alter table contents add(s_line int);
alter table contents add(a_line int);
select * from contents;
alter table contents modify(content_cast varchar2(4000) default '없음');
alter table contents modify(viptotal int default 0);
alter table contents modify(rtotal int default 0);
alter table contents modify(stotal int default 0);
alter table contents modify(atotal int default 0);
alter table contents modify(content_com_price int	default 0);
alter table contents modify(content_vip_price int	default 0);
alter table contents modify(content_r_price int	default 0);
alter table contents modify(content_s_price int	default 0);
alter table contents modify(content_a_price int	default 0);


update contents set viptotal=200, rtotal=200, stotal=200, atotal=200 where content_code=3;
update contents set vip_line=50, r_line=50, s_line=50, a_line=50 where content_code=3;
update contents set content_seat_class=1 where content_code=3;
/*테스트 값*/
insert into contents values (contents_no_seq.nextval,'뮤지컬','뮤지컬 위키드','Musical Wicked','2013/11/22','2014/10/05'
,'샤롯데씨어터','김선영/박혜나/김소현/김보경/이지훈/조상웅/외..',7,1,0,360,140000,110000,900000,600000);
/*좌석 정보 테이블 */
create table seat_info(
content_no int 
,id varchar2(100)
,content_seat_class int default 0 --1은 vip, 2는 R석, 3은 S석, 4는 A석 
,seat_date varchar2(300) default 0
,seat_row int default 0
,seat_line int default 0
);
/*테스트 값*/
insert into seat_info values(3,'test',1,'2014/01/01',2,3);
insert into seat_info values(3,'test',1,'2014/01/01',3,10);
/*외래키 지정*/
ALTER TABLE seat_info 
ADD CONSTRAINT fk_seat_code FOREIGN KEY (content_no) REFERENCES contents (content_code); -- 외래키 지정
alter table seat_info modify(seat_date varchar2(300));
select * from seat_info;

/*정리할 때 지울 것*/
alter table seat_info drop(seat_location);
alter table seat_info modify(content_seat_class int default 0);
alter table seat_info modify(seat_date varchar2(300) default 0);
alter table seat_info modify(seat_row int default 0);
alter table seat_info modify(seat_line int default 0);