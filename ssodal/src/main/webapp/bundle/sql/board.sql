create table board(
	board_no int primary key,
	board_name varchar2(100) not null,
	board_title varchar2(100) not null,
	board_content varchar2(2000) not null,
	board_private int default 0,
	board_password varchar2(200),
	board_img int default 0,
	board_file varchar2(200),
	board_hit int default 0,
	board_comment int default 0,
	board_layout int default 0,
	board_date date
);

create sequence board_sequence increment by 1 start with 1 nocache;

select * from board order by board_no desc;





drop table board;

drop sequence board_sequence;