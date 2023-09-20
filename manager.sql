create table member (
    id varchar2(10) not null,
    pass varchar2(10) not null,
    name varchar2(30) not null,
    regidate date default sysdate not null,
    primary key (id)
);

create table board (
    num number primary key,
    title varchar2(200) not null,
    content varchar2(2000) not null,
    id varchar2(10) not null,
    postdate date default sysdate not null,
    visitcount number(6)
);

alter table board
    add constraint board_mem_fk foreign key (id)
    references member (id);
    
create sequence seq_board_num   -- sequence : 순차적으로 순번 자동 증가
    increment by 1              -- 1씩 증가
    start with 1                -- 시작값 1
    minvalue 1                  -- 최소값 1
    nomaxvalue                  -- 최대값 무한대 (nocycle과 항상 함께 씀)
    nocycle                     -- 순환하지 않음
    nocache;                    -- 캐시 안 함
    
insert into member(id, pass, name) values('java', '1234', '김철수');
    
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '제목1입니다', '내용1입니다', 'java', sysdate, 0);
    -- 부모키를 참조해야 하기 때문에 member 테이블에 먼저 데이터 넣은 후 실행해야 오류 x

insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '제목2입니다', '내용2입니다', 'java', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '제목3입니다', '내용3입니다', 'java', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '제목4입니다', '내용4입니다', 'java', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '제목5입니다', '내용5입니다', 'java', sysdate, 0);
    
commit;
-- 임시 테이블에 저장했던 레코드가 실제 테이블에 적용됨 (오라클 외부에서도 조회 가능해짐)
    

select * from member;
select * from board;