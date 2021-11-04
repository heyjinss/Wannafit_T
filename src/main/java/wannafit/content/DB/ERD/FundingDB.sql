--사업자등록
DROP TABLE Wanna_busPerson;
CREATE TABLE Wanna_busPerson ( 
wb_num varchar2(50) PRIMARY KEY, -- 사업자번호 
wb_regNum varchar2(50) UNIQUE, --사업자등록번호 
wb_regTitle varchar2(50) UNIQUE, --사업자 등록명 (이름)
wb_regPath varchar2(100) UNIQUE --사업자등록증경로 
);

CREATE SEQUENCE Wanna_busPerson_seq 
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999;


INSERT INTO Wanna_busPerson VALUES('wb'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'12314211231','타파타','img_bu_01.PNG');
INSERT INTO Wanna_busPerson VALUES('wb'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'12314211232','원핏콕','img_bu_02.PNG');
INSERT INTO Wanna_busPerson VALUES('wb'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'12314211233','핏타파타','img_bu_03.PNG');
INSERT INTO Wanna_busPerson VALUES('wb'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'12314211234','헬스팟','img_bu_04.PNG');
INSERT INTO Wanna_busPerson VALUES('wb'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'12314211235','헬린스토어','img_bu_05.PNG');

SELECT * FROM Wanna_busPerson;



--============================================================================================================================펀딩신청 

--펀딩등록  
DROP TABLE Wanna_Fundingprod;
CREATE TABLE Wanna_Fundingprod (
wm_id varchar2(50) PRIMARY KEY, --1. 아이디 
id varchar2(50), -- 2. 펀딩상품번호 
fp_category varchar2(50) check (fp_category in ('도서', '운동기구', '약품', '식품', '패션')), -- 3. 카테고리 
fp_tagprice number,-- 4. 목표금액 
fp_startdate Date, -- 5. 시작일 
fp_enddate DATE, -- 6. 마감일 
fp_title varchar2(200), --7. 제목 
fp_intro varchar2(1000), --8. 내용 
fp_people NUMBER, --9. 참여자수 
fp_state varchar2(50) check (fp_state in ('신청', '대기', '반려' ,'만료', '승인', '판매중')), --10.처리상태 
fp_accprice NUMBER, --11. 누적금액 
fp_picurl varchar2(100), --12. 사진경로 
fp_content varchar2(1000) --13. 내용 
);


CREATE SEQUENCE Wanna_Fundingprod_seq 
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999;

INSERT INTO Wanna_Fundingprod VALUES('himan162','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'도서',3000000,'2021/10/31', 
'2021/12/11','[남의기록훔쳐보기] 내몸의 요모조모 변화기록장','내몸의 변화를 기록하고싶다면? 이 기록을 사용해보세요',3,'판매중',300000,'img01.JPG','그때부터 스스로에 대한 소소한 것들을
정기적으로 기록하기 시작했어요.다음 달에 꼭 가보고 싶은 곳나에게 요즘 기쁨을 주는 것등 ...10년 가까이 인쇄물을 만들어왔기 때문에,
매거진 형태로 만들어 2년 넘게 같은 기록을 계속 했습니다.
그 때 실천했던 기록법들이 저에게
굉장한 워라밸을 가져다주었습니다.
위로가 되어줬을뿐만 아니라. 실제 변화까지 가져다주었어요.
일에 묻히고 사람에 치여 거의 사라진(?) 직장인 1을,
다시 소중하고 온전한 나 자신으로 회복시켜주었습니다.');

INSERT INTO Wanna_Fundingprod VALUES('himan163','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'약품',4000000,'2021/10/31', 
'2021/12/11','[2차 공유]웨이업 멀티비타민','오랜시간동안 고민하며 만든 비타민 섭취제, 클릭해보세요!',3,'판매중',300000,'img02.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan164','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'운동기구',5000000,'2021/10/31', 
'2021/12/11','[3차 공유]홈트 기구','집에서 운동할때 간편하게 자세교정을 하고싶다면? 이것을 사용해보세요',3,'판매중',300000,'img03.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan165','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'운동기구',6000000,'2021/10/31', 
'2021/12/11','[홈트기구]아빠가 만든 필라테스,웨이트','딸의 건강을 위해 100일간 제작한 홈트기구!지금당장 만나보세요',3,'판매중',300000,'img04.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan166','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'패션',7000000,'2021/10/31', 
'2021/12/11','운동선수도선택한 양말, 컴포트 패터','수십명의 운동선수들이 선택한 컴포트 패터, 그 주인공이 되어보세요',3,'판매중',300000,'img05.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan167','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'식품',1000000,'2021/10/31', 
'2021/12/11','나를위한다이어트, 무첨가웰빙식','건강하게 다이어트할 수 없을까? 지속적으로 고민하신 분이라면 추천합니다.',3,'승인',300000,'img06.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan168','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'운동기구',2000000,'2021/10/31', 
'2021/12/11','[남의기록훔쳐보기] 내몸의 요모조모 변화기록장','움직임을 최소화하고, 건강칼로리는 높이고! 클릭해보세요',3,'판매중',300000,'img07.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan169','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'도서',3000000,'2021/10/31', 
'2021/12/11','매일3분, 라인이 살아나는 습관','1000일간의 노하우를 담아 만들었습니다. 같이 공유해보세요',3,'판매중',300000,'img08.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan170','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'약품',3000000,'2021/10/31', 
'2021/12/11','줄넘기를 통해 인생역전하기!![고급줄넘기]','1000일간의 노하우를 담아 만들었습니다. 같이 공유해보세요',3,'승인',300000,'img09.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan171','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'약품',3000000,'2021/10/31', 
'2021/12/11','줄넘기를 통해 인생역전하기!![고급줄넘기]','1000일간의 노하우를 담아 만들었습니다. 같이 공유해보세요',3,'반려',300000,'img10.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan172','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'약품',3000000,'2021/10/31', 
'2021/12/11','줄넘기를 통해 인생역전하기!![고급줄넘기]','1000일간의 노하우를 담아 만들었습니다. 같이 공유해보세요',3,'신청',300000,'img11.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan173','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'약품',3000000,'2021/10/31', 
'2021/12/11','줄넘기를 통해 인생역전하기!![고급줄넘기]','1000일간의 노하우를 담아 만들었습니다. 같이 공유해보세요',3,'판매중',300000,'img12.JPG','내용1');

INSERT INTO Wanna_Fundingprod VALUES('himan174','wfp'||lpad(Wanna_busPerson_seq.nextval, 5, 1),'약품',3000000,'2021/10/31', 
'2021/12/11','줄넘기를 통해 인생역전하기!![고급줄넘기]','1000일간의 노하우를 담아 만들었습니다. 같이 공유해보세요',3,'만료',300000,'img13.JPG','내용1');


SELECT * FROM funding;
SELECT * FROM Wanna_Fundingprod;

--fp_catgory : 0: 도서 1:운동기구 2:약품 3: 식품 4: 패션
--fp_state : 0:신청 1: 대기 2: 반려 3:만료 4: 승인 5 :판매중 
--===========================================================================================================================기업신청 

--기업신청 
DROP TABLE Wanna_Business;


CREATE TABLE Wanna_Business( --기업
wm_id varchar2(50) PRIMARY KEY, --아이디 
bs_email varchar2(50) UNIQUE, --기업이메일 (세금계싼서발행) 
bs_sns varchar2(50) UNIQUE, --기업 sns주소 
bs_number varchar2(50) UNIQUE, --기업전화번호 
bs_address varchar2(100), --기업주소 
bs_ceo varchar2(50), --대표자명
bs_accname varchar2(50), -- 예금주명
bs_accnum varchar2(50) , -- 계좌번호
bs_accnum_name varchar2(50), --은행명 
bs_busname varchar2(50) UNIQUE,-- 상호명 
bs_intro varchar2(1000), --소개글 
bs_pic_url varchar2(100) --소개사진 
);

DROP SEQUENCE Wanna_Business;

CREATE SEQUENCE Wanna_Business_seq
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999;


INSERT INTO Wanna_Business VALUES('himan162','health001@naver.com','www.nanallog.com','031-3234-1231','경기도 성남시 분당구 판교로 234-23', '김성재','이나은','333302234231','국민','헬스헬스','저는 개인적인 취미로 만드는 책을 제작하고있습니다','img_bu_01.JPG');
INSERT INTO Wanna_Business VALUES('himan163','health002@naver.com','www.nanallog2.com','031-313-1232','경기도 성남시 분당구 판교로 234-24', '박성재','김성근','333302234231','신한','헬스헬스2','맛있는 비타민을 ㅏㅁㄴ들고있습니다.','img_bu_02.JPG');
INSERT INTO Wanna_Business VALUES('himan164','health003@naver.com','www.nanallog3.com','031-362-1233','경기도 성남시 분당구 판교로 234-25', '유성재','곽미주','333302234231','기업','헬스헬스3','저는 개인적인 취미로 만드는 책을 제작하고있습니다','img_bu_03.JPG');
INSERT INTO Wanna_Business VALUES('himan165','health004@naver.com','www.nanallog4.com','031-374-1234','경기도 성남시 분당구 판교로 234-26', '최성재','안성기','333302234231','우리','헬스헬스4','저는 개인적인 취미로 만드는 책을 제작하고있습니다','img_bu_04.JPG');
INSERT INTO Wanna_Business VALUES('himan166','health005@naver.com','www.nanallog5.com','031-317-1251','경기도 성남시 분당구 판교로 234-27', '이성재','김종국','333302234231','카카오뱅크','헬스헬스5','저는 개인적인 취미로 만드는 책을 제작하고있습니다','img_bu_05.JPG');

SELECT * FROM Wanna_Business;


--===================================================================================================================펀딩후원 
DROP TABLE Wanna_Funding_sup;
CREATE TABLE Wanna_Funding_sup ( --후원신청DB 
fs_num varchar(50) PRIMARY key, -- 펀딩후원번호 
id varchar2(50),-- 상품번호 
wm_id varchar2(50), --사용자아이디 
wp_class varchar2(50) CHECK (wp_class in ('후원', '예약')), --결제분류
wp_type varchar2(50) CHECK (wp_type in ('카드', '계좌')), --결제방법
wp_price NUMBER, --결제금액
wp_address varchar2(50), --주소
wp_cardnum varchar2(50),-- 카드번호
wp_bank varchar2(30), --은행명
wp_accname varchar2(50), --예금주명 
wp_limitdate varchar2(50), --유효기간
wp_birth DATE, --생년월일
wp_install NUMBER --할부기간 
);


CREATE SEQUENCE Wanna_Funding_sup_seq   
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999;

INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11155','himan1','후원','카드',300000,'경기도 성남시 분당구 야탑동','234234234','국민','유재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11155','himan2','후원','카드',300000,'경기도 성남시 분당구 야탑동 30-6','234234234','국민','유재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11155','himan3','후원','카드',300000,'경기도 성남시 분당구 야탑동 30-1','234234235','농협','김재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11155','himan4','후원','카드',300000,'경기도 성남시 분당구 야탑동 50-1','234234236','카카오','이재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11156','himan5','후원','카드',300000,'경기도 성남시 분당구 야탑동 502-1','234234237','축협','강재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11156','himan1','후원','카드',300000,'경기도 성남시 분당구 야탑동 242-1','234234238','국민','상재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11156','himan2','후원','카드',300000,'경기도 성남시 분당구 야탑동 234-1','234234239','신한','아재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11156','himan3','후원','카드',300000,'경기도 성남시 분당구 야탑동 342-1','234234230','기업','이재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11156','himan4','후원','카드',300000,'경기도 성남시 분당구 야탑동 234-1','234234223','농협','우재석','23/12','95/01/22',3);
INSERT INTO Wanna_Funding_sup VALUES ('wfs'||lpad(Wanna_Funding_sup_seq.nextval, 7, 1),'wfp11156','himan5','후원','카드',300000,'경기도 성남시 분당구 야탑동 414-1','234234213','우리','에재석','23/12','95/01/22',3);

SELECT * FROM Wanna_Funding_sup;


INSERT INTO Wanna_Member values('himan162', 'as57793', 'himan101@gmail.com', 'company1', 01012341259, 400, 1, '/com134.png', 1234-423-12-412);
INSERT INTO Wanna_Member values('himan163', 'as57794', 'himan102@gmail.com', 'company2', 01022341213, 400, 3, '/com134.png', 1234-423-12-512);
INSERT INTO Wanna_Member values('himan164', 'as57795', 'himan103@gmail.com', 'company3', 01032341254, 400, 1, '/com134.png', 1234-421-12-412);
INSERT INTO Wanna_Member values('himan165', 'as57796', 'himan104@gmail.com', 'company5', 01042341255, 400, 6, '/com134.png', 4234-423-12-412);
INSERT INTO Wanna_Member values('himan166', 'as57797', 'himan105@gmail.com', 'company6', 01052341256, 400, 1, '/com134.png', 1234-423-42-412);
INSERT INTO Wanna_Member values('himan167', 'as57798', 'himan106@gmail.com', 'company7', 01062341257, 400, 8, '/com134.png', 1234-423-32-412);



SELECT * FROM Wanna_Member;
	wm_id varchar2(50) PRIMARY KEY, 
	wm_pass varchar2(50) NOT NULL,
	wm_email varchar2(50) NOT NULL,
	wm_nick varchar2(50) NOT NULL,
	wm_tel NUMBER NOT NULL,
	wm_usrGroup varchar2(30) not null check(wm_usrGroup IN (0, 100, 200, 300, 400)), 
	wm_repCnt NUMBER NOT NULL default 0, 
	wm_imgSrc varchar2(50),
	wb_num varchar2(50)

