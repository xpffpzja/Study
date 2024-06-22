--02_DDL.sql
--DDL(Data Definition language)데이터 정의어
-- 테이블의 생성 CREATE

--명령 양식
create table 테이블이름(
	필드명1 DATATYPE [DEFAULT 값 OR 제약조건 등], 
	필드명2 DATATYPE [DEFAULT 값 OR 제약조건 등],
	필드명3 DATATYPE [DEFAULT 값 OR 제약조건 등],
	필드명4 DATATYPE [DEFAULT 값 OR 제약조건 등],
	...
	필드명 DATATYPE [DEFAULT 값 OR 제약조건 등]
);




--도서대여점의 도서목록 테이블의 생성
--필드 : booknum, subject, makeyear, inprice, outprice,
--자료형 : booknum(문자 5자리), subject(문자30), makeyear(숫자4), inprice(숫자6), outprice(숫자6)
--제약조건 : booknum(Not null), subject(Not null), makeyear(), inprice(), outprice(),
--테이블명 : booklist 

create table booklist(
	booknum varchar2(5),
	subject varchar2(30) not null,
	makeyear number(4),
	inprice number(6) not null,
	outprice number(6) not null,
	-- 필드명 옆에 현재 필드에만 제약조건을 필드레벨의 제약이라고 합니다.
	-- 아래처럼 쓰는건 테이블 레벨의 제약조건 입니다.
	constraint booklist_pk primary key(booknum)
	-- constaraint : 테이블 수준의 제약조건을 지정하는 키워드(명령)
	-- booklist_pk : 테이블 외부에서 현재 제약조건을 컨트롤 하기 위한 제약조건의 고유이름
	-- primary key(booknum) : 기본키로 booknum을 지정하겠다는 뜻입니다.
);
select *from booklist;
drop table booklist purge;

--기본키(Primary Key) : 테이블을 구성하는 필드들 중에서 갖는 값들이 빈칸(null)이 없고
--	서로 다른값(유일한 값)들을 갖고 잇어 레코드들을 유일하게 구분해 낼 수 있는 필드
-- 	테이블을 구성하는 필드들중 자격이 되는 필드중 하나에 부여하는 테이블의 대표값
--	기본키를 지정함으로써 기본키가 지정하지 않았을때 발생할 수 있는 오류들을 미연에 방지할
-- 수 있다.
--	기본키로 결함을 없애는 것. 그래서 결함없이 유지되는 것을 "객체 무결성"이라고 부릅니다.





--create table 명령의 세부규칙
--1. 테이블의 이름은 객체를 의미할 수 있는 적합한 이름을 사용합니다.(자바의 변수이름과 비슷)
--2. 다른 테이블과 이름이 중복되지 않게 정합니다.(같은 아이디로 로그인했을때의 중복)
--3. 한 테이블 내에서 필드이름도 중복되지 않게함.
--4. 각 필드들은 ',"로 구분하여 생성함.
--5. create를 비롯한 모든 sql명령은 ";"로 마칩니다.
--6. 필드명 뒤에 DATATYPE은 반드시 지정하고 []안에 해당 내용이 있을때 작성하며 생략 가능
--7. 예약어 명령어 등을 테이블명과 필드명으로 쓸수 없음
--8. 테이블 생성시 대/소문자 구분은 하지 않음(기본적으로 테이블이나 컬럼명은 대문자로 만들어짐)
-- create table
-- CREATE TABLE
-- Create Table
--9. 보통은 데이터형식과 용량(크기)를 지정하는데, DATE데이터형식은 유형을 별도로 크기를 지정하지 않음.
--10. 문자데이터의 DataType -> varchar2(10), number(4)
--11. 문자 데이터 유형은 반드시 가질 수 있는 최대 길이를 표시해야 함
--12. 숫자 데이터 형식은 byte 수로 표현하지 않고, 자리수 표현 number(4) -> 4자리 숫자(0000~9999)
--13. 컬럼(필드)과 컬럼(필드)의 구분은 콤마로 하되, 마지막 컬럼이나 constaint를 작성후엔 콤마를 찍지 않음.




--테이블 생성2
--테이블 이름 : MemberList(회원리스트)
--필드 : memberNum, memberName, Phone, Birth, Bpoint
--데이터 형식 : memberNum : VARCHAR2(5), memerName : VARCHAR2(12),
--					Phone : VARCHAR2(13), Birth : DATE, Bpoint : NUMBER(6)
--제약 조건 : memberNum, memberName, Phone 세개의 필드 Not Null -필드레벨로 설정
-- 				memberNum : Primary Key - 테이블 레벨로 설정

create table memberlist(
	membernum varchar2(5) not null,
	membername varchar2(12) not null,
	Phone varchar2(13) not null,
	Birth date,
	Bpoint number(6),
	constraint memberlist_pk primary key(membernum)
);
	
select*from memberlist;



-- 외래키(FOREIGN KEY) : 테이블 간의 필수 포함 관계에 있어
--			상대 테이블의 특정 필드값을 참조하면서 없는 값을 사용할 수 없도록 하는 규칙.
--			외래키로 유지되는 무결성을 "참조 무결성' 이라고 부릅니다.
-- 예를 들면 booklist에 존재 하지 않은 도서의 번호가 rentlist 의 빌려간 도서의 번호로 등록되지 못하게 하는것을 말합니다.


--테이블 생성3
--테이블 이름 : rentlist
--필드 : idx(number(3)), rent_date(date), bnum(varchar2(5)), mnum(varchar2(5)), discount(number(4))
--제약조건 : bnum, mnum : not null

create table rentlist(
	idx number(3),
	rent_date date default sysdate, -- 대여 날짜
	-- rent_seq number(3) -- 하나의 날짜안ㅅ에서 지정된 순번
	bnum varchar2(5) not null,  -- 대여해간 도서번호
	mnum varchar2(5) not null, -- 대여한 회원의 회원번호
	discount number(4) default 500, -- 할인금액
	-- constraint rent_pk primary key(rent_date, rent_seq)
	constraint rent_pk primary key (idx),
	constraint fk1 foreign key(bnum) references booklist(booknum),
	--현재 테이블의 bnum필드는 booklist 테이블의 booknum 필드값을 참조합니다.
	constraint fk2 foreign key(mnum) references memberlist(membernum)
	--현재 테이블의 mnum필드는 memberlist 테이블의 membernum 필드값을 참조합니다.
);

select*from rentlist;

-- 외래키의 참조 대상이 되는 필드는 그쪽 페이블의 기본키이어야 합니다.


--제약조건(CONSTRAINT)
--PRIMARY KEY
-- -테이블에 저장된 레코드를 고유하게 식별하기 위한키, 하나의 테이블에 하나의 기본키만 정의할수 있습니다.
-- - 여러필드가 조합된 기본키 생성 가능합니다.
-- - 기본키는 중복된 값을 갖을 수 없으며 빈칸도 있을 수 없습니다.
-- - PRIMARY KEY = UNIQUE KEY + NOT NULL
--UNIQUE KEY
-- - 테이블에 저장된 행 데이터를 고유하게 식별하기 위한 고유키를 정의합니다.
-- - 단 NULL은 고유키 제약의 대상이 아니므로, NULL 값을 가진 행이 여러개가 UNIQUE KEY제약에 위반하지는 않습니다.
--NOT NULL
-- -비어있는 상태, 아무것도 없는 상태를 허용하지 않습니다.(입력필수)
--CHECK
-- -입력할 수 있는 값의 범위를 제한한다.CHECK 제약으로는 TRUE or FALSE로 평가할 수 있는 논리식을 지정합니다.
--FOREIGN KEY
-- -관계형 데이터 베이스에서 테이블간에 관계를 정의하기 위해 기본키를 다른 테이블의 외래키로 
-- 복사하는 경우 외래키가 생성됩니다. - 참조 무결성 제약 옵션이 생성.

