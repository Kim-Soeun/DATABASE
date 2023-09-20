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
    
create sequence seq_board_num   -- sequence : ���������� ���� �ڵ� ����
    increment by 1              -- 1�� ����
    start with 1                -- ���۰� 1
    minvalue 1                  -- �ּҰ� 1
    nomaxvalue                  -- �ִ밪 ���Ѵ� (nocycle�� �׻� �Բ� ��)
    nocycle                     -- ��ȯ���� ����
    nocache;                    -- ĳ�� �� ��
    
insert into member(id, pass, name) values('java', '1234', '��ö��');
    
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '����1�Դϴ�', '����1�Դϴ�', 'java', sysdate, 0);
    -- �θ�Ű�� �����ؾ� �ϱ� ������ member ���̺� ���� ������ ���� �� �����ؾ� ���� x

insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '����2�Դϴ�', '����2�Դϴ�', 'java', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '����3�Դϴ�', '����3�Դϴ�', 'java', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '����4�Դϴ�', '����4�Դϴ�', 'java', sysdate, 0);
insert into board(num, title, content, id, postdate, visitcount)
    values(seq_board_num.nextval, '����5�Դϴ�', '����5�Դϴ�', 'java', sysdate, 0);
    
commit;
-- �ӽ� ���̺� �����ߴ� ���ڵ尡 ���� ���̺� ����� (����Ŭ �ܺο����� ��ȸ ��������)
    

select * from member;
select * from board;