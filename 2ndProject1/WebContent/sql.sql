1. ȸ�������� ������ ������ �� �ִ� 'news_member'���̺��� ����ÿ�.
   �÷��� : email / pw / age / tel

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

insert into web_message values(msg_num.nextval,'don','123','������ �..?',sysdate);
insert into web_message values(msg_num.nextval,'jae','123','�ĵ��� ������ ������...',sysdate);

select * from news_message;
drop table news_message;


