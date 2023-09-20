create table student(
	s_name varchar(20),
    s_id varchar(20),
    s_tel varchar(20),
    s_address varchar(50)
);

insert into student values("홍길동", "A123","010-0000-1111","전남 장성군");
insert into student values("신사임당", "A124","010-0000-2222","경상북도 청주");
insert into student values("이도", "A125","010-0000-3333","서울특별시 강남");

create table exam(
	subject varchar(20),
    score int(20)
);

insert into exam values ("영어" , 100);
insert into exam values ("국어" , 90);

drop database member;

create database member;
use member;

create table member(
	id varchar(20),
    name varchar(20),
    pw varchar(20)
);

insert into member values("java", "김자바", "1234");

select * from member;

drop table member;

create table member(
	id varchar(20),
	name varchar(20),
	pw varchar(20),
	phone varchar(20),
	address varchar(20)
);

insert into member values("java","김자반","1234","010-1111-2222","광주 북구 문흥동");

select * from member;

drop table member;

create table member(
	id varchar(20),
	name varchar(20),
	pw varchar(20),
	phone varchar(20),
	address varchar(20),
    primary key(id)
);

insert into member values("java","김자반","1234","010-1111-2222","광주 북구 문흥동");

select * from member;