create table member (
	id varchar(10) not null,
    pass varchar(10) not null,
    name varchar(30) not null,
    regidate TIMESTAMP default current_timestamp not null,
    -- regidate datetime default now() not null, 위와 같음
    primary key (id)
);

create table board (
	num int primary key auto_increment,
    title varchar(200) not null,
    content varchar(2000) not null,
    id varchar(10) not null,
    postdate TIMESTAMP default current_timestamp not null,
    -- postdate datetime default now() not null, 위와 같음
    visitcount int(6),
   foreign key(id) references member(id)
);

insert into member(id, pass, name) values('java', '1234', '김철수');
insert into board(title, content, id, postdate, visitcount)
values('제목1입니다', '내용1입니다', 'java', current_timestamp(), 0);

select * from member;
select * from board;

create database member;
