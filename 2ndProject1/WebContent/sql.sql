
drop table news_memeber;
drop table news_message;
drop table main_service;









create table news_member(
	            email varchar2(100) constraint news_member_email_pk primary key,
	            pw varchar2(100),
	            age number,
	            tel varchar2(100)
);

create table news_message(
            msg_num number constraint news_message_msg_num_pk primary key,
            sender varchar2(100),
            msg_mail varchar2(100),
            title varchar2(100),
            content varchar2(1000),
            msg_day date
);

create table main_service(
            mase_num number,	
            mase_email varchar2(30),
            mase_title varchar2(300),
            mase_content varchar2(3000),
            mase_source varchar2(300),
            mase_date date,
            constraint main_service_mase_num_pk primary key(mase_num)
);




select * from news_member;
select * from news_message;
select * from main_service;




create sequence msg_num start with 1 increment by 1
create sequence mase_num start with 1 increment by 1




drop sequence msg_num
drop sequence mase_num






