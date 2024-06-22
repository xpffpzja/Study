

CREATE TABLE `product` (
   `pseq`   int   NOT NULL AUTO_INCREMENT,
   `kind`   int   NOT NULL   ,
   `genre`   VARCHAR(45)   NOT NULL   ,
   `bestyn`   char(1)   NOT NULL   DEFAULT 'Y',
   `useyn`   char(1)   NOT NULL   DEFAULT 'Y',   
   `title`   VARCHAR(100)   NOT NULL,
   `content`   VARCHAR(1000)   NOT NULL,
   `age`   int   NOT NULL,
   `count`   int   NOT NULL   DEFAULT 0,
   `year`   VARCHAR(100)   NOT NULL,
   `time`   VARCHAR(100)   NOT NULL,
   `image`   VARCHAR(100)   NOT NULL,
   `savefilename`   VARCHAR(100)   NOT NULL,
   `image2`   VARCHAR(100)   NOT NULL,
   `savefilename2`   VARCHAR(100)   NOT NULL,
   PRIMARY KEY (pseq)
);


select*from product;

drop table product;


insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '사극', 'Y', 'Y', '관상', '영화 관상 입니다', 12, 10,  '2017', '128분', 'facereaderMain.png', 'facereader.jpg', 'facereaderMain.png','facereader.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '멜로', 'Y', 'Y', '파이란', '영화 파이란 입니다', 12, 10,  '2017', '128분', 'pyranMain.png', 'pyran.jpg', 'pyranMain.png','pyran.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '액션', 'Y', 'Y', '매드맥스', '영화 매드맥스 입니다', 12, 10,  '2017', '128분', 'madmaxMain.png', 'madmax.jpg', 'madmaxMain.png','madmax.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '히어로', 'Y', 'Y', '데드풀', '영화 데드풀 입니다', 12, 10,  '2017', '128분', 'deadpoolMain.png', 'deadpool.jpg', 'deadpoolMain.png','deadpool.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '공포', 'Y', 'Y', '영화 메건', '영화 메건 입니다', 12, 10,  '2017', '128분', 'meganMain.jpg', 'megan.jpg', 'meganMain.jpg','megan.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '사극', 'Y', 'Y', '왕의 남자', '영화 왕의 남자 입니다', 12, 10,  '2017', '128분', 'kingsmanMain.png', 'kingsman.jpg', 'kingsmanMain.png','kingsman.jpg');



insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '범죄', 'N', 'N', '타짜1', '영화 타짜 입니다', 12, 10,  '2017', '128분', 'gambleMain.png', 'gamble1.jpg', 'gamble1.png','gamble1.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '범죄', 'N', 'N', '타짜2', '영화 타짜2 입니다', 12, 10,  '2017', '128분', 'gamble2Main.png', 'gamble2.jpg', 'gamble2.png','gamble2.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '범죄', 'N', 'N', '타짜3', '영화 타짜3 입니다', 12, 10,  '2017', '128분', 'gamble3Main.png', 'gamble3.jpg', 'gamble3.png','gamble3.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '판타지', 'N', 'N', '반지의제왕 1', '영화 반지의제왕 1 입니다', 12, 10,  '2017', '128분', 'ring1Main.png', 'ring1.jpg', 'ring1Main.png','ring1.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '판타지', 'N', 'N', '반지의제왕 2', '영화 반지의제왕 2 입니다', 12, 10,  '2017', '128분', 'ring2Main.png', 'ring2.jpg', 'ring2Main.png','ring2.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '판타지', 'N', 'N', '반지의제왕 3', '영화 반지의제왕 3 입니다', 12, 10,  '2017', '128분', 'ring3Main.png', 'ring3.jpg', 'ring3Main.png','ring3.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '코미디', 'N', 'N', '극한직업', '영화 극한직업 입니다', 12, 10,  '2017', '128분', 'jobMain.png', 'job.jpg', 'jobMain.png','job.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '코미디', 'N', 'N', '가문의 영광', '영화 가문의 영광 입니다', 12, 10,  '2017', '128분', 'familyMain.png', 'family.jpg', 'familyMain.png','family.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '코미디', 'N', 'N', '투사부일체', '영화 투사부일체 입니다', 12, 10,  '2017', '128분', 'bossMain.png', 'boss.jpg', 'bossMain.png','boss.jpg');





insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '애니메이션', 'N', 'Y', '영화 시민', '영화 시민 입니다', 12, 10,  '2017', '128분', 'deadpoolMain.png', 'deadpool.jpg', 'deadpoolMain.png','deadpool.jpg');

insert into product(kind, genre,  bestyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '스릴러', 'N', 'Y', '영화 시민', '영화 시민 입니다', 12, 10,  '2017', '128분', 'deadpoolMain.png', 'deadpool.jpg', 'deadpoolMain.png','deadpool.jpg');






delete from product where pseq=;



-- 메인화면 컨텐츠
create or replace view main_pro_view
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product where useyn='Y' order by pseq desc limit 6;

-- 새로운 컨텐츠 
create or replace view new_pro_view
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product where newyn='Y' order by pseq desc limit 4;

-- 베스트 컨텐츠
create or replace view best_pro_view
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product where bestyn='Y' order by pseq desc limit 4;

