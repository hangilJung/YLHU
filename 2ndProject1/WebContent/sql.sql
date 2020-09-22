1. 회원가입한 정보를 저장할 수 있는 'news_member'테이블을 만드시오.
   컬럼명 : email / pw / age / tel

drop table news_member;


create table news_member(
	email varchar2(100),
	pw varchar2(100),
	age number,
	tel varchar2(100)
);



insert into news_member values('admin','123',20,'010-1234-4321');
select * from news_member;


create table news_message(
	msg_num number,
	sender varchar2(100),
	msg_mail varchar2(100),
	title varchar2(100),
	content varchar2(1000),
	msg_day date
);

create sequence msg_num start with 1 increment by 1

insert into web_message values(msg_num.nextval,'don','123','감투는 어떄..?',sysdate);
insert into web_message values(msg_num.nextval,'jae','123','파도가 끝나는 곳까지...',sysdate);

select * from news_message;
drop table news_message;


