create table members(
	ID VARCHAR(10),
	NAME VARCHAR(15),
	PWD VARCHAR(20),
	PHONE VARCHAR(15)
);

insert into members values('SOMI', '이소미', '1234', '010-1234-1234');
insert into members values('SANG', '전상오', '1234', '010-5555-6666');
insert into members values('LIGHT', '김빛나', '1234', '010-2222-3333');

select*from members;

delete from members where name ='';
delete from members where name is null;

commit