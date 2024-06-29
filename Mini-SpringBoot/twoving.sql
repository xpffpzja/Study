CREATE TABLE `notice` (
	`nseq`	int	NOT NULL AUTO_INCREMENT,
	`userid`	VARCHAR(45)	NOT NULL,
	`title`	VARCHAR(45)	NOT NULL,
	`content`	VARCHAR(1000)	NOT NULL,
	`indate`	DATETIME	NOT NULL	DEFAULT now(),
	`readcount`	int	NULL	DEFAULT 0,
	`noticeyn`	char(1)	NOT NULL	DEFAULT 'N',
    PRIMARY KEY (nseq)
);

insert into notice(userid, title, content) values('hong1', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong2', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong3', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong4', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong5', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong6', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong7', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong8', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong9', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong10', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong11', '제목입니다.', '내용입니다');
insert into notice(userid, title, content) values('hong12', '제목입니다.', '내용입니다');

CREATE TABLE `twoving`.`member` (
  `userid` VARCHAR(45) NOT NULL,
  `ptseq` INT NULL,
  `pwd` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(45) NULL,
  `indate` DATETIME NOT NULL DEFAULT now(),
  `useyn` CHAR(1) NULL DEFAULT 'Y',
  PRIMARY KEY (`userid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into member(userid, pwd, name, phone, email)
values('one','1111','김나리','017-777-7777','acc@abc.com');
insert into member(userid, pwd, name, phone, email)
values('two','2222','김길동','011-032-7777','aac@abc.com');

CREATE TABLE `admins` (
	`adseq`	int	NOT NULL	AUTO_INCREMENT,
	`adminid`	VARCHAR(45)	NOT NULL,
	`pwd`	VARCHAR(45)	NOT NULL,
	`name`	VARCHAR(45)	NOT NULL,
	`phone`	VARCHAR(45)	NOT NULL,
    PRIMARY KEY (adseq)
);

insert into admins values('1', 'admin', 'admin', '관리자', '010-7777-7777');
insert into admins values('2', 'scott', '1234', '홍길동', '010-6400-6068');



CREATE TABLE `seriesMovie` (
	`seq`	int	NOT NULL	AUTO_INCREMENT,
	`title`	VARCHAR(45)	NULL,
	`content`	varchar(1000)	NULL,
	`useyn`	char(1)	NULL	DEFAULT 'Y',
	`Field`	VARCHAR(255)	NULL,
    PRIMARY KEY (seq)
);

CREATE TABLE `faq` (
	`qseq`	int	NOT NULL	AUTO_INCREMENT,
	`inquirylist`	VARCHAR(100)	NOT NULL,
	`subject`	VARCHAR(100)	NOT NULL,
	`content`	VARCHAR(10000)	NOT NULL,
	`indate`	DATETIME	NOT NULL	DEFAULT now(),
    PRIMARY KEY (qseq)
);

insert into faq(inquirylist, subject, content) values('전체', '	
[기타] 티빙 고객센터 카카오 챗봇 및 실시간 채팅 상담 이용하기', '새롭게 바뀐 티빙 카카오 챗봇에서 궁금한 점을 빠르게 해결해 보세요. 
더욱 자세한 내용이 궁금하시다면 상담사 연결을 통해 실시간 채팅 상담 도 가능합니다. 

■ 티빙 카카오 챗봇 이용 안내 
① 카카오톡에서 TVING 검색 후 채널 추가 
② 티빙 카카오 챗봇에서 궁금한 내용 선택하여 손쉽게 이용 

■ 티빙 실시간 채팅 상담 이용 안내 
① 티빙 카카오 챗봇 문항에서 [상담사 연결] 선택 
② 상담사에게 궁금한 내용 직접 문의하여 상담 진행 

* 티빙 실시간 채팅 상담은 평일 09:00 ~ 17:00에 이용 가능합니다.');

insert into faq(inquirylist, subject, content) values('회원/로그인', '[로그인] 이용권이 있는 계정이 무엇인지 찾고 싶어요.', 
'유료 가입한 계정을 찾고 싶을 때,
아래 방법으로 계정을 찾으신 후 계정 유형을 선택하여 로그인하여 주시기 바랍니다.

■ 이용 계정 확인 방법
① 티빙 WEB/APP 접속
② [티빙 시작하기] 버튼 클릭
③ 가장 하단 [아이디 찾기] 클릭
④ 본인인증으로 찾기 → [본인인증하기] 클릭
⑤ 가입한 계정 ID들 안내
⑥ 계정 ID 옆 (유료)로 표기된 계정으로 로그인

※ 이메일로 찾기 시 확인되지 않으니, 반드시 본인인증으로 찾기로 이용 계정 확인해주세요.
※ SNS 회원은 해당 SNS 아이디가 아닌 티빙 가입 시 등록한 이메일을 알려드립니다.
※ 본인인증이 완료된 계정만 확인이 가능합니다.
※ 네이버플러스멤버십 이용권 계정은 본인인증찾기로 확인되지 않습니다.

보다 자세한 확인이 필요한 경우, [1:1 게시판 문의] 또는 [tving@cj.net]로 문의해 주시면 가입하신 계정 확인하여 답변드리겠습니다.');


insert into faq(inquirylist, subject, content) values('이용권/결제', 
'[변경] 정기결제수단 변경은 어떻게 하나요?', 

'결제수단 변경은 PC와 모바일웹에서 변경하실 수 있습니다.
변경 방법은 아래 경로를 확인해 주세요.

■ 결제수단 변경 방법
(모바일웹)
1. www.tving.com 접속 후 로그인
2. 우측 상단 [결제 수단] 클릭
3. 변경할 결제 정보 입력 후 완료

(PC)
1. www.tving.com 접속 후 로그인
2. 우측 상단 프로필 클릭
3. MY 버튼 클릭
4. 이용권/캐시 내역 메뉴 클릭
5. 결제 수단 항목의 [변경] 버튼 클릭
6. 변경할 결제 정보 입력 후 완료

※ 티빙 APP에서는 결제수단 변경이 어렵습니다.
※ 결제 수단은 신용카드, 네이버페이, 카카오페이, 토스페이로 변경할 수 있습니다.
※ 결제 수단 변경 시 다음 결제일부터 적용됩니다.
※ 결제 중인 휴대폰 결제를 타 결제 수단으로 변경하시는 경우, 더 이상 휴대폰 결제는 이용하실 수 없습니다.');

insert into faq(inquirylist, subject, content) values('재생/오류', 
'[플레이어] 콘텐츠 재생 중 화면 비율은 어떻게 변경하나요?', 
'콘텐츠 재생 중 화면 비율은 핀치 인/아웃 제스처로 변경할 수 있어요. 
* 꽉찬 화면으로 변경 : 전체 화면 모드에서 두 손가락으로 화면을 확대하듯이 늘려주세요. 
* 원본 비율로 변경 : 전체 화면 모드에서 두 손가락으로 화면을 축소하듯이 모아주세요.');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[해지] 정기결제 해지가 무엇인가요?',
'정기결제 해지란 티빙에서 구독중인 이용권의 정기 자동 결제를 중단하는 것을 말합니다. 
정기결제 해지 시 다음 회차부터 결제가 중단되며, 현재 이용중인 회차는 이용권 만료일까지 이용 가능합니다. 
정기결제 해지는 아래의 방법으로 신청 가능하시오니 이용에 참고 부탁드립니다. 
■ 정기결제 해지 방법 
- PC WEB : www.tving.com > 로그인 > MY > 나의 이용권 > 이용권 클릭 > ‘변경/해지’ 버튼 클릭하여 해지 
- Mobile APP : TVING APP > 로그인 > MY > 나의 이용권 > 이용권 클릭 > ‘정기결제 해지하기’ 버튼 클릭하여 해지 
* 구글/애플 인앱결제로 구독하신 이용권은 각 스토어로 구독취소 신청하셔야 구독해지가 가능합니다. 
* 네이버/통신사 등 제휴처 상품을 이용 중인 경우 각 제휴처로 문의가 필요합니다. '
);

insert into faq(inquirylist, subject, content) values('서비스 이용', 
'[광고] 광고를 그만 보고 싶어요.',
'광고형 요금제로 콘텐츠를 시청하시는 경우 시간 당 최대 4분 정도의 광고가 표시될 수 있습니다.
광고 없이 시청을 원하시는 경우 광고가 없는 이용권으로 구독을 변경하실 수 있으며, 상세 내용은 [이용권] 페이지에서 확인 가능합니다.');

insert into faq(inquirylist, subject, content) values('회원/로그인',
'[로그인] TV에서 직접 로그인은 어떻게 하나요?',
'[TV에서 로그인 하기] 방법은 다음과 같습니다. 
■ TV에서 직접 로그인하기 방법 
① [TV에서 로그인 하기] 버튼 선택 
② [TVING ID] 또는 [CJ ONE ID] 중 사용하시는 계정 유형 선택 
③ TV 화면의 키보드에서 리모컨으로 아이디 입력 후 [다음] 선택 
④ TV 화면의 키보드에서 리모컨으로 비밀번호 입력 후 [다음] 선택 
* 단, [TV에서 로그인 하기] 방법은 TVING ID와 CJ ONE ID 유형만 이용 가능합니다. 
* SNS 계정을 사용하시는 경우 [스마트폰에서 로그인 하기]를 이용해 주세요.');

insert into faq(inquirylist, subject, content) values('회원/로그인',
'[로그인] SNS 계정은 TV에서 직접 로그인할 수 없나요?',
'[TV에서 로그인 하기]는 TVING ID와 CJ ONE ID 2가지 유형만 이용 가능합니다. 
SNS 계정은 [스마트폰에서 로그인하기]를 통해 로그인해 주셔야 하는 점 양해 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('회원/로그인',
'[로그인] TV에서 QR코드로 로그인은 어떻게 하나요?',
'QR코드로 로그인하는 방법은 다음과 같습니다. 
■ 스마트폰에서 로그인하기 방법 안내 
① [스마트폰에서 로그인 하기] 버튼 선택 
② 휴대폰 카메라 앱으로 TV 화면의 [QR코드]를 비춘 후 스마트폰 화면에 표기되는 [링크] 클릭 
③ 스마트폰 화면에서 사용하는 [계정 유형] 선택 (모든 유형 로그인 가능) 
④ 스마트폰에서 아이디, 비밀번호 입력 후 [로그인 하기] 버튼 클릭 
QR코드 방식이 어려우시다면, [직접 입력해서 접속하기] 안내에 따라 한 번 더 로그인해 주세요.');

insert into faq(inquirylist, subject, content) values('회원/로그인',
'[회원] 티빙 회원가입 방법이 궁금해요.',
'TVING 회원가입은 TVING 계정, SNS 연동 계정, CJ ONE 통합 계정으로 가입이 가능합니다.
* SNS 연동 계정 종류 : Facebook, Naver, Kakao, Apple

■ 회원가입 방법
1) PC (WEB)
① 티빙 WEB 접속
② [티빙 시작하기] 클릭
③ 가입할 계정 유형 선택 (TVING, SNS, CJ ONE 중 유형 선택)
④ 회원가입하기

 2) MOBILE (APP)
① 티빙 APP 접속
② [티빙 시작하기] 클릭
③ 가입할 계정 유형 선택 (TVING, SNS, CJ ONE 중 유형 선택)
④ 회원가입하기');


insert into faq(inquirylist, subject, content) values('이용권/결제', 
'[요금제] 광고형 스탠다드 이용권이 무엇인가요?', 
'광고형 스탠다드 이용권은 저렴한 요금으로 고품질의 혜택이 제공되는 이용권으로, 시청 시 광고가 표시될 수 있습니다.
■ 광고형 스탠다드 이용권 안내
① 동시시청 2대, 최대 1080P 화질(FHD), 프로필 4개 생성, PC/모바일/태블릿/TV 앱 지원
② 타임머신, Quick VOD, PIP 시청 기능(라이브 채널), 다운로드(월 15회) 제공
③ 크롬캐스트 서비스 미지원
＊파라마운트+ 등 일부 콘텐츠 이용이 제한될 수 있습니다.
＊제휴사의 요금제/부가서비스 상품 혜택은 각 제휴사의 이용권 안내를 확인해 주세요.
＊이용권 상세 내용은 PC 공지사항 또는 이용권 구매 페이지를 확인해 주세요.
＊2024년 6월 18일 <파라마운트+> 콘텐츠 및 브랜드관 서비스가 종료됩니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제', 
'[요금제] KT 티빙 라이트 이용권의 광고 시청 정책이 어떻게 되나요?', 
'광고노출 정책은 광고형 스탠다드 이용권과 동일합니다. 티빙의 광고형 스탠다드 FAQ를 확인해 주세요.');

insert into faq(inquirylist, subject, content) values('이용권/결제', 
'[요금제] 광고형 스탠다드에서에서 광고는 어떻게 제어하나요?', 
'광고 시청 중에는 되감기/빨리감기/재생 속도 제어 기능이 지원되지 않으며, 일시정지만 가능한 점 참고 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제', 
'[요금제] 광고형 스탠다드에서에서 광고 스킵(건너뛰기)이 가능한가요?',
'광고 건너뛰기의 경우 특정 시간 동안 광고 시청 이후 건너뛰기 기능이 제공되는 광고와 그렇지 않은 광고가 있어 시청 시 확인하실 수 있습니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제', 
'[요금제] 광고형 스탠다드에서 광고는 어떻게 표시되나요?',
'시청 전과 시청 중 광고가 제공될 수 있으며, 시청 중 광고는 플레이어 내 구간이 표시됩니다.
광고는 제공 상황에 따라 노출되지 않을 수 있습니다.');

insert into faq(inquirylist, subject, content) values('재생/오류',
'[KBO] 중계 시청 시, 라이브 예정입니다 메세지가 확인됩니다.',
'KBO 재생 시, 라이브 예정입니다 메시지가 확인되신다면 이용하시는 단말기의 시간 설정이 현재 시간이 아닐 수 있습니다.
이용하시는 단말기의 시간을 다시 한 번 확인 후 이용해 주시기 바랍니다.
* 단, 티빙은 국내 서비스로 해외 시청 또는 VPN 등으로 IP 우회 이용 시 정상 시청이 어려운 점 참고 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('재생/오류', 
'[다운로드] 시리즈와 영화 콘텐츠 다운로드는 어떻게 하나요?', 
'콘텐츠 다운로드는 광고형 스탠다드 이상 이용권 구독 시 AOS 및 iOS 모바일/태블릿 앱 v9.1.0 이상 버전에서 이용 가능합니다. 
1) 시리즈 다운로드 
- 모바일/태블릿 티빙 앱 실행 > 콘텐츠 리스트 진입 > 각 에피소드 리스트 우측 [다운로드] 버튼 클릭하여 다운로드 
2) 영화 다운로드 
- 모바일/태블릿 티빙 앱 실행 > 영화 콘텐츠 진입 > 플레이어 하단 [다운로드] 버튼 클릭하여 다운로드 
다운로드한 콘텐츠는 7일간 온/오프라인 시청 가능하며, 
티빙 앱 하단 [다운로드] 메뉴에서 다운로드 받으신 콘텐츠 확인 및 시청이 가능합니다. 
* PC 및 TV 기기에서는 다운로드가 제공되지 않습니다. 
* 다운로드 받은 콘텐츠의 이용기간 만료 시 온라인 상태에서 연장 가능합니다.');

insert into faq(inquirylist, subject, content) values('재생/오류',
'[다운로드] 시리즈와 영화 콘텐츠를 다운로드하면 오프라인 시청이 가능한가요?',
'콘텐츠 다운로드는 광고형 스탠다드 이상 이용권 구독 시 AOS 및 iOS 모바일/태블릿 앱 v9.1.0 이상 버전에서 이용가능하며, 
다운로드 완료한 시리즈와 영화 콘텐츠는 7일간 온/오프라인 시청 가능합니다. 
이용기간이 만료된 경우 온라인 상태에서 기간 연장 가능합니다. 
해외에서 이용기간이 만료된 경우에도 온라인 상태로 티빙 앱 접속 시 기간 연장 가능합니다. (신규 다운로드는 불가능)');

insert into faq(inquirylist, subject, content) values('재생/오류',
'[다운로드] 시리즈와 영화 콘텐츠를 다운로드하면 해외에서도 시청 가능한가요?',
'모바일/태블릿 기기에 다운로드 완료 상태인 경우 해외에서도 오프라인 시청이 가능합니다. 
다운로드 완료한 시리즈 및 영화 콘텐츠의 이용기간은 7일이며, 
이용기간이 만료된 경우 해외에서도 온라인 상태로 티빙 앱 접속 시 기간 연장 가능합니다. 

단, 해외에서 시리즈 및 영화 콘텐츠의 신규 다운로드는 제공되지 않으며, 
국내에서 다운로드 완료한 콘텐츠만 이용 가능한 점 참고 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('해지/환불',
'[해지/환불] 중도 해지가 무엇인가요?',
'중도 해지란 티빙에서 구독한 이용권의 이용을 중단하고 즉시 해지하는 것을 말합니다. 
이용권 중도 해지 시, 이용권 이용이 즉시 중단되고 이용권도 즉시 해지되며, 이용 중인 회차의 미사용 기간에 대한 금액이 환불됩니다. 
중도 해지는 아래의 방법으로 신청 가능하시오니 이용에 참고 부탁드립니다. 

■ 중도 해지 방법 
- PC WEB : www.tving.com > 로그인 > 고객센터 > 고객문의 > 문의 유형 [환불/해지 신청] 선택하여 접수 
- Mobile APP : TVING APP > 로그인 > MY > 고객센터 > 1:1 문의 > 문의 유형 [환불/해지 신청] 선택하여 접수 
* 이용권 구매 후 7일이 경과하거나, 이용권의 시청 내역이 있는 경우에는 사용일 수만큼 차감(일할 계산) 후 환불됩니다. 
  (단, 연간 이용권의 경우는 할인 구매가가 아닌 12개월 정가 기준으로 차감됩니다) 
* 네이버/통신사 등 제휴처 상품을 이용중인 경우 각 제휴처의 환불 규정을 따릅니다. ');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[해지/환불] 청약 철회가 무엇인가요?',
'청약 철회란 티빙 이용권 구매 후 사용내역이 없는 경우 결제일로부터 7일 이내 청약을 철회하고 결제 취소 또는 전액 환불하는 것을 말합니다. 
청약철회가 필요하신 경우 아래의 방법으로 신청 가능하시오니 이용에 참고 부탁드립니다. 

■ 청약 철회 방법 
- PC WEB : www.tving.com > 로그인 > 고객센터 > 고객문의 > 문의 유형 [환불/해지 신청] 선택하여 접수 
- Mobile APP : TVING APP > 로그인 > MY > 고객센터 > 1:1 문의 > 문의 유형 [환불/해지 신청] 선택하여 접수 
* 구글/애플 인앱결제로 구독하신 이용권은 각 스토어 고객센터로 환불 신청이 필요합니다. 
* 네이버/통신사 등 제휴처 상품을 이용 중인 경우 각 제휴처로 문의가 필요합니다. ');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[해지] 티빙에서 직접 결제한 이용권 해지하고 싶어요.',
'티빙 직접결제로 구매한 상품의 정기결제 직접 해지 방법은 다음과 같습니다.
■ 정기결제 직접 해지 방법 안내
1) PC에서 해지하기
① TVING WEB 로그인
② 우측 상단 [프로필 아이콘] 클릭
③ [MY] 버튼 클릭
④ [나의 이용권] 또는 [이용권/캐시 내역] 버튼 클릭
⑤ 구독중인 이용권 [변경/해지] 버튼 클릭
⑥ 최하단 [자동결제 해지 신청하기] 버튼 클릭하여 해지 진행
2) APP에서 해지하기
① TVING APP 로그인
② 우측 상단 [프로필 아이콘] 클릭
③ [나의 이용권] 또는 [이용권] 버튼 클릭
④ 구독중인 이용권 [변경/해지] 버튼 클릭
⑤ 최하단 [자동결제 해지 신청하기] 버튼 클릭하여 해지 진행
※ 정기결제 해지 완료된 상품은 다음 결제 도래일에 결제가 일어나지 않으며, 이용권의 권한 만료일까지는 이용하실 수 있습니다.
※ 해지 신청 완료 시, 구독중인 상품명 아래 [해지 취소] 버튼이 표시됩니다.
※ 해지 신청을 취소하고 싶으신 경우, 구독중인 상품명 아래의 [해지 취소] 버튼으로 진행할 수 있습니다
더욱 자세한 문의는 [1:1 게시판 문의] 또는 [tving@cj.net]로 접수해 주시면 빠르게 도움 드리겠습니다.');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[환불] 모바일 상품권의 환불은 어떻게 하나요?', 
'모바일 상품권 환불, 유효기간 연장 등 추가 문의 사항이 있으신 경우, 티빙에서 확인해 드리기 어렵습니다.
번거로우시겠지만 모바일 상품권 구매처로 관련 문의 및 환불 상담을 부탁드립니다.');


insert into faq(inquirylist, subject, content) values('서비스/이용',
'[편의기능] 광고형 스탠다드에서 팝업 플레이어 PIP 버튼(기능)이 없어요.',
'광고형 요금제로 콘텐츠를 시청하시는 경우, PIP 시청 기능은 라이브 채널만 제공됩니다.
베이직/스탠다드/프리미엄 이용권으로 변경하시면 VOD 시청 시에도 해당 기능을 사용하실 수 있으며, 상세 내용은 [이용권] 페이지에서 확인 가능합니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[크롬캐스트] 광고형 스탠다드에서 크롬캐스트 연결 버튼(기능)이 없어요.',
'광고형 요금제로 콘텐츠를 시청하시는 경우, 크롬캐스트 기능이 지원되지 않습니다.
TV 기기의 이용을 원하시는 경우 티빙 공식 APP을 설치하시면 이용이 가능합니다.
＊OS 버전 및 기기사양(메모리), 제조사에 따라 일부 기기에서는 서비스가 정상 동작하지 않을 수 있습니다.
베이직/스탠다드/프리미엄 이용권으로 변경하시면 크롬캐스트 기능을 사용하실 수 있으며, 상세 내용은 [이용권] 페이지에서 확인 가능합니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[크롬캐스트] KT 티빙 라이트에서 크롬캐스트 연결 버튼(기능)이 없어요.',
'광고형 요금제로 콘텐츠를 시청하시는 경우, 크롬캐스트 기능이 지원되지 않습니다.
TV 기기의 이용을 원하시는 경우 티빙 공식 APP을 설치하시면 이용이 가능합니다.
＊OS 버전 및 기기사양(메모리), 제조사에 따라 일부 기기에서는 서비스가 정상 동작하지 않을 수 있습니다.
베이직/스탠다드/프리미엄 이용권으로 변경하시면 크롬캐스트 기능을 사용하실 수 있으며, 상세 내용은 [이용권] 페이지에서 확인 가능합니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[편의기능] KT 티빙 라이트에서 다운로드가 진행이 안돼요.',
'KT 티빙 라이트 이용권으로 콘텐츠를 시청하시는 경우, 콘텐츠 다운로드 기능은 제공되지 않습니다.
베이직/스탠다드/프리미엄 이용권으로 변경하시면 해당 기능을 사용하실 수 있으며, 상세 내용은 [이용권] 페이지에서 확인 가능합니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[편의기능] KT 티빙 라이트에서 팝업 플레이어 PIP 버튼(기능)이 없어요.',
'KT 티빙 라이트 이용권으로 콘텐츠를 시청하시는 경우, PIP 시청 기능은 라이브 채널만 제공됩니다. 
베이직/스탠다드/프리미엄 이용권으로 변경하시면 해당 기능을 사용하실 수 있으며, 상세 내용은 [이용권] 페이지에서 확인 가능합니다.');

insert into faq(inquirylist, subject, content) values('회원/로그인',
'[로그인] 자동 로그아웃이 되었는데, 제 계정을 모르겠어요.',
'APP과 PC WEB 계정 선택 화면에서 최근에 마지막으로 로그인하신 계정을 확인하실 수 있습니다.
최근 로그인하신 계정을 선택하여 주시고, 혹시라도 일치하는 회원정보가 없다는 알림 메시지가 나온다면 아래 사항을 확인하여 주세요.

■ TVING 계정 확인 방법
1) 계정 선택 화면 가장 하단 아이디 찾기 클릭
2) 본인인증으로 찾기 > 본인인증하기
3) 가입한 계정 ID들 안내  
4) 계정 ID 옆 (유료)로 표기된 계정으로 로그인

※ 이메일로 찾기 시 확인되지 않으니, 반드시 본인인증으로 찾기로 이용 계정 확인해주세요.
※ SNS 회원은 해당 SNS 아이디가 아닌 티빙 가입 시 등록한 이메일을 알려드립니다.
※ 본인인증이 완료된 계정만 확인이 가능합니다.
※ 네이버플러스멤버십 이용권 계정은 본인인증찾기로 확인되지 않습니다.
지속해서 로그인이 되지 않으시는 경우, 1:1 게시판 문의 또는 tving@cj.net 으로 문의해 주시면,
신속하게 가입하신 계정 확인하여 답변드리겠습니다.');

insert into faq(inquirylist, subject, content) values('회원/로그인',
'[회원] 회원정보를 변경하고 싶어요.',
'회원 가입 시 등록하신 TVING의 회원정보는 PC와 MOBILE의 [회원정보 수정] 메뉴에서 변경하실 수 있으며, 
CJ ONE 회원님은 CJ ONE 사이트의 [회원정보] 를 통해 변경이 가능합니다.

 ■ 회원정보 수정 안내
1) PC (WEB)
① 티빙 WEB 로그인
② 우측 상단 [프로필 아이콘] 클릭
③ [MY] 메뉴 클릭
④ [회원정보 수정] 메뉴 클릭
⑤ 비밀번호 추가 입력 후 메뉴 진입하여 회원정보 변경
2) MOBILE (APP)
① 티빙 APP 로그인
② 우측 상단 [프로필 아이콘] 클릭하여 MY 메뉴 진입
③ [회원정보 수정] 메뉴 클릭
④ 비밀번호 추가 입력 후 메뉴 진입하여 회원정보 변경');


insert into faq(inquirylist, subject, content) values('회원/로그인',
'[회원] 회원 탈퇴 방법이 궁금해요',
'회원 탈퇴를 원하시는 경우 아래와 같은 방법으로 진행하실 수 있습니다.

■ 회원탈퇴 방법
1) PC (WEB)
① 티빙 WEB 로그인
② 우측 상단 [프로필 아이콘] 클릭
③ [MY] 메뉴 클릭
④ [회원정보 수정] 메뉴 클릭
⑤ [회원탈퇴] 메뉴 클릭하여 탈퇴 진행
2) MOBILE (APP)
① 티빙 APP 로그인
② 우측 상단 [프로필 아이콘] 클릭하여 MY 메뉴 진입
③ [회원정보 수정] 메뉴 클릭
④ [회원탈퇴] 메뉴 클릭하여 탈퇴 진행

유료 서비스를 이용중이신 경우 회원 탈퇴 시 정기결제 해지와 상품 포기 동의가 진행됩니다. 
정기결제 해지 및 상품 포기 동의 시 보유하신 이용권 및 쿠폰의 이용이 즉시 중단됩니다.
회원탈퇴는 개인정보와 관련된 내용으로 반드시 본인이 내용을 숙지하고 동의하셔야 하기 때문에
 [1:1 게시판 문의]나 [tving@cj.net]로 요청하실 경우 지원이 불가한 점 양해 부탁드립니다.');
 
 
 insert into faq(inquirylist, subject, content) values('회원/로그인',
 '[프로필] 프로필 비밀번호 초기화 방법이 궁금해요.',
 '프로필 비밀번호 초기화 방법 안내드립니다.

■ 프로필 비밀번호 초기화 안내
1) PC
① 티빙 WEB 접속
② [티빙 시작하기] 버튼 클릭
③ 아이디, 비밀번호 입력 후 [로그인하기] 버튼 클릭
④ [프로필 편집] 버튼 클릭
⑤ 편집할 프로필 선택
⑥ [비밀번호 초기화] 버튼 클릭

2) APP
① 티빙 APP 접속
② [티빙 시작하기] 버튼 클릭
③ 아이디, 비밀번호 입력 후 [로그인하기] 버튼 클릭
④ 우측 상단 [편집] 버튼 클릭
⑤ 편집할 프로필 선택
⑥ [비밀번호 초기화] 버튼 클릭');

 insert into faq(inquirylist, subject, content) values('회원/로그인',
 '[프로필] 프로필 잠금 설정 방법이 궁금해요.',
 '프로필 잠금 설정 방법 안내드립니다.

구매하신 이용권에 따라 프로필을 최소 1개 ~ 4개까지 제공해 드리고 있습니다.
이 중 프로필 2개 이상이 제공되는 스탠다드, 프리미엄 이용권은 프라이버시 보호를 위하여 아래와 같이 프로필 잠금 설정 기능을 제공해 드리고 있습니다.

■ 프로필 잠금 설정 방법 안내
1) PC
① 티빙 WEB 접속
② [티빙 시작하기] 버튼 클릭
③ 아이디, 비밀번호 입력 후 [로그인하기] 버튼 클릭
④ [프로필 편집] 버튼 클릭
⑤ 편집할 프로필 선택
⑥ 프로필 잠금 설정 ON
⑦ 사용할 비밀번호 4자리 입력
2) APP
① 티빙 APP 접속
② [티빙 시작하기] 버튼 클릭
③ 아이디, 비밀번호 입력 후 [로그인하기] 버튼 클릭
④ 우측 상단 [편집] 버튼 클릭
⑤ 편집할 프로필 선택
⑥ 프로필 잠금 설정 ON
⑦ 사용할 비밀번호 4자리 입력');

 insert into faq(inquirylist, subject, content) values('회원/로그인',
 '[프로필] 자녀 보호 설정 기능을 알고 싶어요.',
 '티빙의 자녀 보호 기능은 프로필 단위의 성인인증과 잠금설정 기능을 통해 설정 가능합니다.
티빙의 모든 청소년 관람 불가 콘텐츠의 미리보기 및 본편은 성인인증을 완료한 프로필에서만 재생 가능하며,
성인인증을 완료하지 않은 프로필에서는 미리보기 및 본편 재생이 제한됩니다.
티빙 계정을 자녀분과 함께 사용하시는 경우 성인인증을 하지 않은 프로필로 시청하도록 설정해 주시면 안전한 이용이 가능합니다.
또한, 프로필 별 비밀번호 설정을 통해 성인인증을 완료한 프로필에 잠금설정을 진행하시면 부모님과 자녀분이 사용할 프로필을 구분하여 이용이 가능한 점 참고 부탁드립니다.
자녀보호를 위해 특정 프로필의 성인인증을 해제하고자 하시는 경우, 아래 정보를 기재하시어 [1:1 게시판 문의] 또는 [tving@cj.net]로 접수해 주시면 신속히 해제 도움드리겠습니다.
[성인인증 해제 신청 양식] 
1. 사용 아이디 : 
2. 해제할 프로필 이름 : 
3. 해제 사유 :
* 접속하신 프로필의 성인인증 완료 여부는 아래 경로에서 확인 가능합니다.
- MOBILE (APP) : 확인하실 프로필로 접속 > 우측 상단 [프로필 아이콘] 클릭 > 우측 상단 [톱니바퀴 아이콘] 클릭 > 프로필 성인인증 메뉴 확인');


insert into faq(inquirylist, subject, content) values('이용권/결제',
'[요금제] 광고형 스탠다드 이용권으로 이용할 수 없는 콘텐츠는 무엇인가요?',
'광고형 요금제에서는 파라마운트+ 등 일부 콘텐츠는 이용이 제한될 수 있습니다.
시청이 불가한 콘텐츠의 경우 콘텐츠 진입 시 이용권 업그레이드 안내 화면이 노출됩니다.
＊제휴사의 요금제/부가서비스 상품 혜택은 각 제휴사의 이용권 안내를 확인해 주세요.
＊2024년 6월 18일 <파라마운트+> 콘텐츠 및 브랜드관 서비스가 종료됩니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제',
'[요금제] KT 티빙 라이트 이용권은 어떤 콘텐츠를 볼 수 있나요?',
'KT 티빙 라이트 요금제에서 파라마운트+ 등 일부 콘텐츠는 이용이 제한될 수 있습니다.
시청이 불가한 콘텐츠의 경우 콘텐츠 진입 시 이용권 업그레이드 안내 화면이 노출됩니다.

＊2024년 6월 18일 <파라마운트+> 콘텐츠 및 브랜드관 서비스가 종료됩니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제',
'[요금제] KT 티빙 라이트 이용권이 무엇인가요?',
'KT 티빙 라이트 이용권은 저렴한 요금으로 고품질의 혜택이 제공되는 이용권으로, 시청 시 광고가 표시될 수 있습니다.

■ 티빙 라이트 이용권 혜택 안내
① 동시시청 3대, 프로필 4개 생성, 최대 1080P 화질(FHD), PC/모바일/태블릿/TV 앱지원
② 타임머신, Quick VOD, PIP 기능(라이브 채널) 제공
③ 크롬캐스트, 다운로드 서비스 미지원 

＊ 파라마운트+ 등 일부 콘텐츠 이용이 제한될 수 있습니다.
＊ 통신사 이용권 상세 내용은 KT 홈페이지 또는 고객센터로 문의해 주세요.
＊ 2024년 6월 18일 <파라마운트+> 콘텐츠 및 브랜드관 서비스가 종료됩니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제',
'[결제] 보조 결제 수단 변경 및 삭제 방법이 궁금해요.',
'등록된 보조 결제 수단의 우측 (⁝) 버튼 클릭하시면 다른 결제 수단으로 변경 및 삭제하실 수 있습니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제',
'[결제] 기본 결제 수단 변경 및 삭제 방법이 궁금해요.',
'등록된 기본 결제 수단의 우측 (+) 버튼을 클릭하시면 다른 결제 수단으로 변경하실 수 있습니다.

기본 결제 수단은 즉시 삭제할 수 없으며,
다른 결제 수단으로 변경하신 후 삭제가 가능한 점 이용에 참고 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('이용권/결제',
'[결제] 기본 결제 수단과 보조 결제 수단이 뭐에요?',
'* 기본 결제 수단 : 정기 결제 시 기본으로 결제되는 결제 수단
* 보조 결제 수단 : 기본 결제 수단으로 결제가 실패되는 경우, 이용권이 해지되지 않도록 등록한 예비 결제 수단

기본 결제 수단과 보조 결제 수단은 각각 1개씩 지정하실 수 있으며,
기본 결제 수단으로 결제가 실패하는 경우, 보조 결제 수단으로 결제됩니다.');


insert into faq(inquirylist, subject, content) values('재생/오류', 
'[KBO] 중계 시청 시, 라이브 예정입니다 메세지가 확인됩니다.', 
'KBO 재생 시, 라이브 예정입니다 메시지가 확인되신다면 이용하시는 단말기의 시간 설정이 현재 시간이 아닐 수 있습니다.
이용하시는 단말기의 시간을 다시 한 번 확인 후 이용해 주시기 바랍니다.

* 단, 티빙은 국내 서비스로 해외 시청 또는 VPN 등으로 IP 우회 이용 시 정상 시청이 어려운 점 참고 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('재생/오류', 
'[다운로드] 다운로드 후 기간 만료된 콘텐츠는 어떻게 시청하나요?', 
'모바일/태블릿 기기에 시리즈 및 영화 콘텐츠를 다운로드한 콘텐츠의 이용기간이 만료된 경우 
다운로드 메뉴의 콘텐츠 우측 상태 버튼을 클릭하여 기간을 연장할 수 있습니다. 

다운로드 콘텐츠 이용기간은 7일 연장 가능하며, 온라인 상태에서만 연장 가능한 점 참고 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('재생/오류', 
'[다운로드] 콘텐츠 다운로드 화질은 선택할 수 없나요?', 
'시리즈 및 영화 콘텐츠 다운로드 화질은 아래의 메뉴에서 선택 가능합니다. 

1) 다운로드 화질 선택 방법 
- 모바일/태블릿 티빙 앱 실행 > MY > 환경설정 > 다운로드 화질선택 > 고화질/일반화질 중 선택 (고화질은 스탠다드 이상만 가능) 

2) 이용권 별 다운로드 화질 제공 
- 광고형 스탠다드/베이직 : 일반화질 다운로드 가능 
- 스탠다드/프리미엄 : 고화질, 일반화질 선택하여 다운로드 가능 

* 콘텐츠 고화질 다운로드는 최대 1080p 화질로 다운로드 가능합니다.
* 제공되는 최대 화질이 720p인 콘텐츠는 고화질로 다운로드해도 720p로 다운로드 될 수 있습니다.');

insert into faq(inquirylist, subject, content) values('재생/오류', 
'[다운로드] 콘텐츠 다운로드 횟수에 제한이 있나요?', 
'콘텐츠 다운로드 횟수는 이용권 별로 다르게 제공되며, 상세 제공 횟수는 다음과 같습니다. 

1) 광고형 스탠다드 이용권: 月 15회 다운로드 가능
2) 베이직 이용권 : 月 200회 다운로드 가능 
3) 스탠다드 이용권 : 月 300회 다운로드 가능 
4) 프리미엄 이용권 : 月 400회 다운로드 가능 

* 다운로드 횟수는 다운로드 완료 기준으로 차감됩니다. 
* 동일한 콘텐츠를 다른 기기에 다운로드하는 경우에도 다운로드 횟수가 차감됩니다. 
* 다운로드 완료한 콘텐츠를 삭제 후 재다운로드 하는 경우에도 다운로드 횟수가 차감됩니다.');

insert into faq(inquirylist, subject, content) values('재생/오류',
'[다운로드] 다운로드한 콘텐츠 이용기간 연장 시 다운로드 횟수가 차감되나요?',
'콘텐츠 다운로드 횟수는 시리즈 또는 영화 콘텐츠를 다운로드 완료한 경우 1회씩 차감되며, 
이미 다운로드 완료한 콘텐츠의 이용기간이 만료되어 이용기간을 연장하는 경우에는 횟수가 차감되지 않습니다. 

단, 이용기간 만료된 콘텐츠를 삭제 후 재다운로드 하는 경우 다운로드 횟수가 차감됩니다.');	

insert into faq(inquirylist, subject, content) values('재생/오류', 
'[다운로드] 다운받았던 콘텐츠를 재다운로드해도 다운로드 횟수가 차감되나요?', 
'다운로드 횟수는 시리즈 및 영화 콘텐츠 다운로드 완료 시 횟수가 차감됩니다. 
이에 따라 동일한 콘텐츠를 다른 기기에 다운로드 하는 경우에도 횟수가 추가로 차감되며, 
다운로드한 콘텐츠를 삭제하고 동일 기기에 재다운로드 하는 경우에도 다운로드 횟수가 차감됩니다.');


insert into faq(inquirylist, subject, content) values('해지/환불', 
'[해지] 구글 인앱결제 이용권 해지하고 싶어요.',
'구글 인앱결제를 통해 구매하신 이용권은 Google Play 스토어로 [구독취소] 신청하셔야 구독해지가 가능합니다.
■ 구글 인앱결제 이용권 해지 방법 안내
1) Play 스토어 APP에서 해지하기
① 안드로이드 기기에서 [Play 스토어] APP 실행
② 우측 상단 [프로필 아이콘] 클릭
③ [결제 및 정기결제] 버튼 클릭
④ [정기결제] 버튼 클릭하여 구독 취소
2) 티빙 APP에서 해지하기
① 안드로이드 기기에서 티빙 APP 실행
② 우측 상단 [프로필 아이콘] 버튼 클릭
③ [이용권] 메뉴 클릭
④ 하단 유의사항의 [정기결제] 버튼 클릭하여 Play 스토어 이동
⑤ 구독 취소할 상품 선택하여 해지 진행
결제 창 하단에 구글 인앱 구독 유의사항이 기재 되어 있으니 확인 부탁드리며,
환불이 필요하신 경우 구매 후 48시간 이내에 [Play 스토어 → 우상단 프로필 아이콘 → 고객센터 → Google Play에서 환불 요청하기]로 신청이 필요한 점 참고 부탁드립니다.
※ 이용권 해지 시 다음 결제일부터 결제 연장되지 않으며, 이용권의 권한 만료일까지는 이용하실 수 있습니다.
※ 자동 결제 해지는 결제 예정일 최소 24 시간 전에 해지 신청해야 합니다. 
※ 결제 예정일 전 24 시간 이내에는 자동 결제 를 해지해도 이용권이 결제될 수 있습니다.
더욱 자세한 문의는 [1:1 게시판 문의] 또는 [tving@cj.net]로 접수해 주시면 빠르게 도움 드리겠습니다.');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[해지] 정기결제 해지를 했는데 네이버페이 앱에서 이용중으로 표시됩니다.',
'티빙에서 이용권 정기결제 해지 시 네이버페이로 구매한 이용권도 정상 해지되며, 다음 결제도래일부터 결제가 일어나지 않습니다.
다만, 정기결제 해지의 경우 현재 이용권의 만료일까지는 티빙 이용이 가능하시므로 고객님의 네이버페이 앱 내 이용중으로 표시될 수 있습니다.');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[해지] 이용권 해지 / 해지 철회가 안돼요.', 
'이용권 해지 / 해지 철회(취소)에 어려움이 있으신 경우, 다음의 경로를 통해 문의해 주세요.
1) PC 해지 문의 : TVING WEB 로그인 > 고객센터 > 고객문의 > 환불/해지 신청 카테고리 선택 후 문의 
2) APP 해지 문의 : TVING APP > 로그인 > MY > 고겍센터 > 1:1문의 > 환불/해지 신청 카테고리 선택 후 문의');

insert into faq(inquirylist, subject, content) values('해지/환불',
'[해지] 애플 인앱결제 이용권을 해지했는데 결제가 되었어요.',
'애플 인앱결제 이용권을 애플 내부 정책에따라 이용 기간 종료 최대 24시간 이전에 구독 취소(정기결제 해지)를 하지 않으시면 이용권이 자동으로 갱신됩니다.
애플 인앱결제 이용권 구독 취소(정기결제 해지)를 원하시는 경우 반드시 이용 기간 종료 24시간 이전까지 진행해주세요.
■ 애플 인앱결제 정기구독 해지 방법
1) 애플 앱스토어에서 해지하기
①  iOS 기기에서 [애플 앱스토어] APP 실행
② 우측 상단 [프로필 아이콘] 클릭
③ [구독] 버튼 클릭 후 구독 취소할 상품 선택
④ 구독 취소 완료
2) 기기 설정 메뉴에서 해지하기
① iOS 기기에서 [설정] APP 실행
② 최상단 [Apple ID] 메뉴 클릭
③ [구독] 버튼 클릭 후 구독 취소할 상품 선택
④ 구독 취소 완료
3) 티빙 APP에서 해지하기
① iOS 기기에서 티빙 APP 실행
② 우측 상단 [프로필 아이콘] 버튼 클릭
③ [이용권] 메뉴 클릭
④ 하단 유의사항의 [구독관리] 버튼 클릭하여 애플 앱 스토어 이동
⑤ 구독 취소할 상품 선택하여 해지 진행
결제 창 하단에 iOS 구독 유의사항이 기재 되어 있으니 확인 부탁드리며,
Apple 고객센터(080-333-4000)로 이용권 관련 문의 및 해지/환불 상담이 가능합니다.
※ 이용권 해지 시 다음 결제일부터 결제 연장되지 않으며, 이용권의 권한 만료일까지는 이용하실 수 있습니다.
※ 자동 결제 해지는 결제 예정일 최소 24시간 전에 해지 신청해야 합니다. 
※ 결제 예정일 전 24시간 이내에는 자동 결제를 해지해도 이용권이 결제될 수 있습니다.');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[환불] 네이버플러스 멤버십 이용권 환불하고 싶어요.',
'네이버플러스 멤버십으로 구매하신 티빙 이용권의 환불 방법 안내드립니다.
네이버플러스 멤버십으로 구매한 이용권의 경우, 고객님의 네이버 계정에 등록된 결제 수단으로 결제가 진행되며,
네이버 주식회사의 이용약관 정책에 따라서 티빙에 이용권 해지 및 환불 권한이 없는 점 양해 부탁드립니다.
번거로우시겠지만, 이용권 환불 안내가 필요하실 경우 네이버 고객센터(1588-3820) 또는 네이버 플러스 멤버십 스마트봇으로 문의 부탁드립니다.
더욱 자세한 문의는 [1:1 게시판 문의] 또는 [tving@cj.net]로 접수해 주시면 빠르게 도움 드리겠습니다.
※ 아래 [네이버플러스 멤버십] 버튼을 클릭하시면 네이버 서비스로 연결됩니다.
※ 아래 [1:1 게시판 문의하기] 버튼을 클릭하시면 티빙 서비스로 연결되며, 로그인 후 이용 가능합니다.');

insert into faq(inquirylist, subject, content) values('해지/환불', 
'[환불] 티빙에서 직접 결제한 이용권 환불하고 싶어요.', 
'티빙 직접결제로 구매하신 티빙 이용권의 환불 방법 안내드립니다.
■ 환불 요청 방법 안내
① 1:1 고객문의 게시판 > [환불/해지 신청] 카테고리 선택
② 환불 요청할 [상품명], [결제월] 및 상세 내용을 입력하여 환불 요청 등록
■ 환불 진행 절차 안내
① 티빙 고객센터에서 고객님 계정의 상품 구매 이력과 사용내역을 확인합니다.
② 사용 내역이 없는 경우, 고객센터에서 고객님이 구매하신 상품의 청약철회 및 결제취소를 진행합니다.
③ 결제취소된 상품은 고객님이 결제하신 수단으로 환불이 진행됩니다.
* 사용 내역이 없는 경우 당월 휴대폰과 신용카드 결제 건은 모두 결제 취소로 전액 환불됩니다. 
  단, 이전월 휴대폰 결제 건의 경우 통신사에서 결제 취소를 지원하지 않아 통장으로 환불됩니다.
* 신용카드, 간편결제 (네이버페이/카카오페이/토스페이) 결제 건인 경우 최대 당월과 이전월(최대 2개월) 결제분까지 결제취소가 가능합니다.
* 사용 내역이 있는 경우 사용 기간에 대하여 일할 차감 후 환불됩니다.
* 연간이용권 등 할인이 적용된 이용권은 정가 기준으로 일할 차감 후 환불됩니다.');


insert into faq(inquirylist, subject, content) values('서비스/이용', 
'[실시간TV] 정주행 채널은 유료인가요?', 
'정주행 채널은 무료 이용자도 시청이 가능합니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[실시간TV] 무료 이용자도 실시간 LIVE 채널 시청할 수 있나요?', 
'유료 회원만 시청 가능했던 실시간TV 채널을 무료로 시청하실 수 있도록 전환하였습니다.
■ 전환 일자 : 2023년 12월 1일 금요일
■ 무료 채널 : tvN, JTBC 등 주요 실시간 LIVE 30개 채널
단, 4개 채널(OCN, OCN Movies, OCN Movies2, tvN SPORTS 채널)은 유료 서비스로 유지되며,
스포츠, KCON 등 이벤트성 채널은 무료 시청에 제한이 있을 수 있는 점 참고 부탁드립니다.
* 실시간TV 채널은 PC/모바일/태블릿 기기에서 이용하실 수 있습니다. (TV 앱 미제공)
* KBO는 2024년 3월 9일부터 4월 30일까지 한시적으로 무료 시청이 가능합니다. 
- 2024년 5월 1일부터 LIVE는 유료 채널로 서비스됩니다. (단, VOD 및 하이라이트는 무료 시청 가능)');

insert into faq(inquirylist, subject, content) values('서비스/이용', 
'[실시간TV] 타임머신 버튼 클릭 시, 이용권을 구독하라고 나와요.',
'무료 회원님의 경우 기본 재생 기능만 이용이 가능하며, 타임머신 기능 제공되지 않습니다.
타임머신 기능 이용을 원하신다면 티빙 이용권 구독 후 시청 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[서비스 이용] 무료 회원은 어떤 서비스를 이용할 수 있나요?',
'TVING 무료 회원은 일부 라이브 채널과 정주행 채널을 무료로 시청하실 수 있습니다.
라이브 채널 중 4개 채널(OCN, OCN Movies, OCN Movies2, tvN SPORTS 채널)은 유료 서비스로 유지되며,
스포츠, KCON 등 이벤트성 채널은 무료 시청에 제한이 있을 수 있는 점 참고 부탁드립니다.
* KBO는 2024년 3월 9일부터 4월 30일까지 한시적으로 무료 시청이 가능합니다. 
- 2024년 5월 1일부터 LIVE는 유료 채널로 서비스됩니다. (단, VOD 및 하이라이트는 무료 시청 가능)');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[이벤트] 연간 이용권 특별 할인 기간과 금액이 궁금해요.',
'연간 이용권 할인 이벤트를 안내드립니다.
※ 연간 이용권 할인 이벤트 안내
- 이벤트 기간 : 2023-12-01 ~ 2024-04-30
- 이벤트 가격
  : 베이직 연간 (94,800원 → 66,000원)
   스탠다드 연간 (130,800원 → 90,000원)
   프리미엄 연간 (166,800원 → 114,000원)
* 연간 이용권은 PC/모바일웹에서만 구매가 가능합니다. 
* 연간 이용권은 12월 1일 월간 이용권 신규 구독료 변경 이후에도 4월 30일까지 티빙 페스타 할인가와 동일한 가격으로 구매하실 수 있습니다.
* 작년 동일 기간에 구매하신 연간 이용권 정기결제 유지 시, 할인 가격으로 결제됩니다.  
* 할인 기간 동안 월정액 이용권을 연간 이용권으로 변경하셔도 할인 가격이 적용됩니다.  
* 할인 기간 동안 연간 이용권을 업/다운그레이드 하셔도 할인 가격이 적용됩니다.  
(단, 다운그레이드 시 사용하신 기간은 12개월 정가 기준 일할 차감됩니다.) ');

insert into faq(inquirylist, subject, content) values('서비스/이용', 
'[기타] 해외지역에서는 시청이 어렵다는 메시지와 함께 시청이 되지 않습니다.',
'티빙 서비스는 국내에서만 이용 가능하며, 
국내에서 시청 중이지만 해외 접속으로 메시지가 발생하는 경우 아래와 같이 확인 부탁드립니다.
① VPN 프로그램을 사용 중이라면 OFF 하여 다시 확인허가
② [IP 대역 확인하기] 버튼으로 한국인터넷진흥원 홈페이지에서 사용 중인 IP 국내 IP 여부 확인하기
- URL : http://whois.nic.or.kr/
③ 해외 IP로 확인되는 경우, 이용하고 계신 통신사로 문의하여 [IP 재할당] 필요
국내 IP인 것이 확인되시거나, 이용 중인 인터넷 통신사에서 국내 IP대역으로 재할당 받으신 경우 정상 이용이 가능하십니다.
위 조치 이후에도 동일 현상이 반복되시는 경우, [IP주소] 기재하여 [1:1 게시판 문의] 또는 [tving@cj.net]로 접수를 부탁드립니다.');

insert into faq(inquirylist, subject, content) values('서비스/이용',
'[자막] 크롬캐스트나 에어플레이에서도 배리어프리 자막 이용이 가능한가요?',
'버튼 배리어프리 자막 서비스가 제공되는 콘텐츠 시청 시, 크롬캐스트와 에이플레이 상태에서도 배리어프리 자막 서비스 이용이 가능합니다. 단, 자막 크기 설정은 지원하지 않습니다.');



CREATE TABLE `qnaReply` (
	`qseq`	int	NOT NULL	AUTO_INCREMENT,
	`subject`	VARCHAR(45)	NULL,
	`content`	VARCHAR(1000)	NULL,
	`reply`	VARCHAR(1000)	NULL,
	`userid`	VARCHAR(45)	NULL,
	`indate`	DATETIME	NULL	DEFAULT now(),
    PRIMARY KEY (qseq)
);


CREATE TABLE `customerinquiry` (
	`ciseq`	int	NOT NULL	AUTO_INCREMENT,
	`name`	VARCHAR(45)	NOT NULL,
	`email`	VARCHAR(100)	NOT NULL,
	`phone`	VARCHAR(45)	NOT NULL,
	`inquirylist`	VARCHAR(100)	NOT NULL,
	`devicephone`	VARCHAR(100)	NULL,
	`devicemodelname`	VARCHAR(100)	NULL,
	`runenvironment`	VARCHAR(45)	NULL,
	`runplace`	VARCHAR(45)	NULL,
	`runtime1`	VARCHAR(50)	NULL,
	`runtime2`	VARCHAR(50)	NULL,
	`runcontent`	VARCHAR(50)	NULL,
	`inquirytitle`	VARCHAR(50)	NOT NULL,
	`inquirycontent`	VARCHAR(1000)	NOT NULL,
	`reply`	VARCHAR(1000)	NULL,
	`indate`	DATETIME	NULL	DEFAULT now(),
    PRIMARY KEY (ciseq)
);

insert into customerinquiry(name, email, phone, inquiryList, devicephone, devicemodelname, runtime1, runtime2, runcontent, inquirytitle, inquirycontent,reply)  
values('hong1', 'syh6917@naver.com', '010-1111-1111', '회원/로그인', 'PC', '윈도우11', '03:00', '07:00', '드라마', '안녕하세요', '드라마 관련 질문드립니다.','답.변');

insert into customerinquiry(name, email, phone, inquiryList, devicephone, devicemodelname, runtime1, runtime2, runcontent, inquirytitle, inquirycontent)  
values('hong1', 'syh6917@naver.com', '010-1111-1111', '회원/로그인', 'PC', '윈도우11', '03:00', '07:00', '드라마', '안녕하세요', '드라마 관련 질문드립니다.');

insert into customerinquiry(name, email, phone, inquiryList, devicephone, devicemodelname, runtime1, runtime2, runcontent, inquirytitle, inquirycontent, runenvironment,runplace)  
values('hong2', 'aaa1234@naver.com', '010-2222-3333', '환불/해지신청', '아이폰', '통신사3G', '01:00', '09:00', '드라마', '드라마 제목2', '드라마 문의2','와이파이','집');

insert into customerinquiry(name, email, phone, inquiryList, devicephone, devicemodelname, runtime1, runtime2, runcontent, inquirytitle, inquirycontent, runenvironment,runplace)  
values('hong2', 'aaa1234@naver.com', '010-2332-3333', '환불/해지신청', '아이폰', '통신사3G', '01:00', '09:00', '영화', '영화 제목2', '영화 문의2','와이파이','집');

CREATE TABLE `twoving`.`payment` (
  `pmseq` INT NOT NULL AUTO_INCREMENT,
  `userid` VARCHAR(45) NOT NULL,
  `subscribeyn` CHAR(1) NOT NULL DEFAULT 'N',
  `productname` VARCHAR(50) NOT NULL,
  `paymentprice` VARCHAR(50) NOT NULL,
  `paymentmeans` VARCHAR(50) NULL DEFAULT '신용카드',
  `paymentday` DATETIME NOT NULL DEFAULT now(),
  `runperiod1` DATETIME NOT NULL DEFAULT now(),
  `runperiod2` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`pmseq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into payment(userid, productname, paymentprice, paymentmeans) values('one', '광고형 스탠다드', '5,500원','Toss Pay');
insert into payment(userid, productname, paymentprice, paymentmeans) values('one', '스탠다드', '13,900원','Google Play');
insert into payment(userid, productname, paymentprice, paymentmeans) values('one', '스탠다드', '13,900원','신용카드');
insert into payment(userid, productname, paymentprice, paymentmeans) values('one', '프리미엄', '17,000원','신용카드');
insert into payment(userid, productname, paymentprice, paymentmeans) values('one', '광고형 스탠다드', '5,500원','네이버플러스 멤버십');
insert into payment(userid, subscribeyn, productname, paymentprice, paymentmeans) values('one','Y','광고형 스탠다드', '5,500원','Toss Pay');

CREATE TABLE `passticket` (
	`ptseq`	int	NOT NULL	AUTO_INCREMENT,
	`productname`	VARCHAR(50)	NOT NULL,
	`monthcost`	VARCHAR(50)	NOT NULL,
	`doubleview`	VARCHAR(50)	NOT NULL,
	`profile`	VARCHAR(50)	NOT NULL,
	`imagequality`	VARCHAR(50)	NOT NULL,
	`contentdownload`	VARCHAR(50)	NOT NULL,
    PRIMARY KEY (ptseq)
);

insert into passticket(productname, monthcost, doubleview, profile, imagequality, contentdownload) values('광고형 스탠다드', '5,500원', '2대', '4개', '1080p', '15회');
insert into passticket(productname, monthcost, doubleview, profile, imagequality, contentdownload) values('베이직', '9,500원', '1대', '4개', '720p', '200회');
insert into passticket(productname, monthcost, doubleview, profile, imagequality, contentdownload) values('스탠다드', '13,500원', '2대', '4개', '1080p', '300회');
insert into passticket(productname, monthcost, doubleview, profile, imagequality, contentdownload) values('프리미엄', '17,000원', '4대', '4개', '1080p(4K 일부)', '400회');


CREATE TABLE `product` (
   `pseq`   int   NOT NULL AUTO_INCREMENT,
   `kind`   int   NOT NULL,
   `genre`   VARCHAR(45)   NOT NULL,
   `mainyn` char(1) NOT NULL DEFAULT 'N',
   `bestyn`   char(1)   NOT NULL   DEFAULT 'N',
   `newyn`   char(1)   NOT NULL   DEFAULT 'Y',
   `useyn`   char(1)   NOT NULL   DEFAULT 'Y',
   `title`   VARCHAR(100)   NOT NULL,
   `content`   VARCHAR(1000)   NOT NULL,
   `age`   VARCHAR(100)   NOT NULL,
   `count`   int   NOT NULL   DEFAULT 0,
   `year`   VARCHAR(100)   NOT NULL,
   `time`   VARCHAR(100)   NOT NULL,
   `image`   VARCHAR(100)   NOT NULL,
   `savefilename`   VARCHAR(100)   NOT NULL,
   `image2`   VARCHAR(100)   NOT NULL,
   `savefilename2`   VARCHAR(100)   NOT NULL,
   PRIMARY KEY (pseq)
);








insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '액션', 'N', 'Y', 'Y', 'Y', '매드맥스', '핵 전쟁으로 멸망한 22세기. 얼마 남지 않은 물과 기름을 차지한 독재자 임모탄이 살아남은 인류를 지배한다. 한편, 폭정에 반발한 사령관 퓨리오사는 인류 생존의 열쇠를 쥔 임모탄의 여인들을 탈취해 분노의 도로로 폭주한다. 이에 임모탄의 전사들은 퓨리오사의 뒤를 쫓기 시작한다.', 12, 10,  '2024', '128분', 'madmaxMain.png', 'madmax.jpg', 'madmaxMain.png','madmax.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '히어로', 'N', 'Y', 'Y', 'Y', '데드풀', '전직 특수부대 출신의 용병 ‘웨이드 윌슨(라이언 레놀즈)’은 암 치료를 위한 비밀 실험에 참여 후, 강력한 힐링팩터를 지닌 슈퍼히어로 ‘데드풀’로 거듭난다. 탁월한 무술실력과 거침없는 유머감각을 지녔지만 흉측하게 일그러진 얼굴을 갖게 된 데드풀은 자신의 삶을 완전히 망가뜨린 놈들을 찾아 뒤쫓기 시작하는데…', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'deadpool.jpg', 'deadpoolMain.png','deadpool.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '공포', 'N', 'Y', 'Y', 'Y', '메건', '교통사고로 부모를 잃고 혼자가 된 소녀 ‘케이디’. 로봇 엔지니어이자, ‘케이디’의 보호자가 된 ‘젬마’는 ‘케이디’를 안전하게 지켜야 하는 프로그램이 입력된 AI 로봇 ‘메간’을 선물한다. 메간은 언제나 ‘케이디’의 곁을 지켜주며 함께 웃고, 힘들 땐 위로해주는 둘도 없는 친구가 된다. 어느 날, ‘케이디’가 위험에 처하자 ‘메간’은 예측할 수 없는 방향으로 업그레이드되며 감당할 수 없는 일들이 벌어지는데… 우정에 OFF는 없어. 영원히', 12, 10,  '2024', '128분', 'meganMain.jpg', 'megan.jpg', 'meganMain.jpg','megan.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '사극', 'N', 'Y', 'Y', 'Y', '왕의 남자', '조선시대 연산조. 남사당패의 광대 장생은 힘있는 양반들에게 농락당하던 생활을 거부하고, 자신의 하나뿐인 친구이자 최고의 동료인 공길과 보다 큰 놀이판을 찾아 한양으로 올라온다. 타고난 재주와 카리스마로 놀이패 무리를 이끌게 된 장생은 공길과 함께 연산과 그의 애첩인 녹수를 풍자하는 놀이판을 벌여 한양의 명물이 된다. 공연은 대 성공을 이루지만, 그들은 왕을 희롱한 죄로 의금부로 끌려간다. 의금부에서 문초에 시달리던 장생은 특유의 당당함을 발휘해 왕을 웃겨 보이겠다고 호언장담하지만 막상 왕 앞에서 공연을 시작하자 모든 광대들이 얼어붙는다. 장생 역시 극도의 긴장감 속에서 왕을 웃기기 위해 갖은 노력을 하지만 왕은 꿈쩍도 하지 않고... 바로 그 때 얌전하기만 한 공길이 기지를 발휘해 특유의 앙칼진 연기를 선보이자 왕은 못 참겠다는 듯이 크게 웃어버린다. 이들의 공연에 흡족한 왕은 궁 내에 광대들의 거처, 희락원을 마련해 주는데...', 12, 10,  '2024', '128분', 'kingsmanMain.png', 'kingsman.jpg', 'kingsmanMain.png','kingsman.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '스릴러', 'N', 'Y', 'Y', 'Y', '아이덴티티', '빗 길의 잇달은 사고, 모텔 안에 고립된 11명의 사람들 폭풍우가 몰아치는 어느 밤... 네바다 주의 사막에 위치한 외딴 모텔에 10명의 사람들이 모여든다. 리무진 운전사와 그가 태우고 가던 여배우, 경찰과 그가 호송하던 살인범, 라스베이거스 매춘부와 신혼부부, 신경질적인 모텔 주인까지 포함한 총 11명. 사나운 폭풍우로 길은 사방이 막혀버리고 사람들은 어둠과 폭우가 걷히기를 기다리지만 연락이 두절된 호텔에 갇힌 이들은 하나 둘씩 살해당하기 시작한다. 죽음으로 시작된 살인의 그림자는 그들을 극도의 공포로 몰아간다. 현장에 남겨진 것이라곤 모텔 룸 넘버 10이 적힌 열쇠뿐. 연이은 죽음의 현장에는 9,8,7.. 카운트 다운을 알리는 열쇠만이 남아 끝나지 않은 살인을 예고하다. 서로가 서로를 의심하는 가운데 모두가 기억하기 싫은 비밀이 서서히 베일을 벗는데...', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'id.jpg', 'deadpoolMain.png','id.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '스릴러', 'N', 'Y', 'Y', 'Y', '그놈 목소리', '내 아들을 앗아간 유괴범의 44일간의 피말리는 협박전화, 그놈 목소리 범죄와의 전쟁이 선포될 정도로 흉흉한 강력범죄가 끊이지 않던 1990년대. 
방송국 뉴스앵커 한경배의 9살 아들 상우가 어느 날 흔적 없이 사라지고, 1억 원을 요구하는 유괴범의 피말리는 협박전화가 시작된다. 
아내 오지선의 신고로 부부에겐 전담형사가 붙고, 비밀수사본부가 차려져 과학수사까지 동원되지만, 지능적인 범인은 조롱하듯 수사망을 빠져나가며 집요한 협박전화로 한경배 부부에게 새로운 접선방법을 지시한다. 
치밀한 수법으로 정체가 드러나지 않는 유괴범의 유일한 단서는 협박전화 목소리. 교양 있는 말투, 그러나 감정이라곤 없는 듯 소름끼치게 냉정한 그놈 목소리뿐이다. 
사건발생 40여 일이 지나도록 상우의 생사조차 모른 채 협박전화에만 매달려 일희일비하는 부모들. 절박한 심정은 점차 분노로 바뀌고, 마침내 한경배는 스스로 그놈에게 접선방법을 지시하며 아들을 되찾기 위한 정면대결을 선언하는데...', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'voice.jpg', 'deadpoolMain.png','voice.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '스릴러', 'N', 'Y', 'Y', 'Y', '추격자', '출장안마소(보도방)를 운영하는 전직 형사 ‘중호’, 최근 데리고 있던 여자들이 잇달아 사라지는 일이 발생하고, 조금 전 나간 미진을 불러낸 손님의 전화 번호와 사라진 여자들이 마지막으로 통화한 번호가 일치함을 알아낸다. 하지만 미진 마저도 연락이 두절되고…… 미진을 찾아 헤매던 중 우연히 ‘영민’과 마주친 중호, 옷에 묻은 피를 보고 영민이 바로 그놈인 것을 직감하고 추격 끝에 그를 붙잡는다. 실종된 여자들을 모두 죽였다는 충격적인 고백을 담담히 털어 놓는 영민에 의해 경찰서는 발칵 뒤집어 진다. 우왕좌왕하는 경찰들 앞에서 미진은 아직 살아 있을 거라며 태연하게 미소 짓는 영민. 그러나 영민을 잡아둘 수 있는 증거는 아무것도 없다. 공세우기에 혈안이 된 경찰은 미진의 생사보다는 증거를 찾기에만 급급해 하고, 미진이 살아 있다고 믿는 단 한 사람 중호는 미진을 찾아 나서는데……', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'chaser.jpg', 'deadpoolMain.png','chaser.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '사극', 'N', 'Y', 'Y', 'Y', '관상', '사람의 얼굴에는 세상 삼라만상이 모두 다 들어있소이다! 얼굴을 보면 그 사람의 모든 것을 꿰뚫어보는 천재 관상가 내경. 처남 ‘팽헌’, 아들 ‘진형’과 산속에 칩거하고 있던 그는 관상 보는 기생 ‘연홍’의 제안으로 한양으로 향하고, 연홍의 기방에서 사람들의 관상을 봐주는 일을 하게 된다. 용한 관상쟁이로 한양 바닥에 소문이 돌던 무렵, ‘내경’은 ‘김종서’로부터 사헌부를 도와 인재를 등용하라는 명을 받아 궁으로 들어가게 되고, ‘수양대군’이 역모를 꾀하고 있음을 알게 된 그는 위태로운 조선의 운명을 바꾸려 한다.', 12, 10,  '2024', '128분', 'facereaderMain.png', 'facereader.jpg', 'facereaderMain.png','facereader.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '멜로', 'N', 'Y', 'Y', 'Y', '파이란', '어디에서도 인정받지 못하는 삼류 건달 `강재`는 막장 인생의 마지막 찬스로 평생 꿈인 배 한 척을 살 돈을 받고 보스 대신 감옥에 가기로 한다. 자수를 준비하던 그에게 뜬금없이 아내의 부고 소식이 전해지는데 그녀의 이름은 `파이란`. 돈 몇 푼 받고 위장 결혼을 해준 중국 여인이었다. 얼굴도 기억나지 않는 그녀의 마지막을 배웅하러 가는 길. 너무 늦게 전해진 `파이란`의 편지에는 `강재`에 대한 고마움과 그리움, 그리고 사랑이 적혀있다. `모두 친절하지만 강재 씨가 가장 친절합니다. 잊어버리지 않도록 보고 있는 사이에 강재 씨를 좋아하게 됐습니다. 당신의 아내로 죽는다는 것 괜찮습니까?` 세상은 날 삼류라 하고 이 여자는 날 사랑이라 한다', 12, 10,  '2024', '128분', 'pyranMain.png', 'pyran.jpg', 'pyranMain.png','pyran.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '공포', 'N', 'Y', 'Y', 'Y', '인시디어스', 'Banshee언니가 잠시 한눈을 판 사이 숲에 고립되었다가 다음 날 아침 무사히 발견된 소녀 하지만 되돌아온 소녀는 혼자가 아니었는데... 가족끼리의 여행길 중 한밤의 도로 위에서 타이어가 펑크나 어쩔 수 없이 잠시 멈추게 되고 잠시 후 초대받지 않은 손님이 찾아온다. 아내의 외도로 인한 임신을 복수하기 위해 아내를 의식용 제물로 삼으려고 하는 남편과 그의 동료. 하지만 의식을 통해 소환 될 이는 그들의 생각과 같을 지...', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'isds.jpg', 'deadpoolMain.png','isds.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '히어로', 'N', 'Y', 'Y', 'Y', '조 커', '고담시의 광대 아서 플렉은 코미디언을 꿈꾸는 남자. 하지만 모두가 미쳐가는 코미디 같은 세상에서 맨 정신으로는 그가 설 자리가 없음을 깨닫게 되는데… 이제껏 본 적 없는 진짜 ‘조커’를 만나라!', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'jocker.jpg', 'deadpoolMain.png','jocker.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '멜로', 'N', 'Y', 'Y', 'Y', '러브레터', '“가슴이 아파 이 편지는 차마 보내지 못하겠어요.” 첫사랑을 잊지 못했던 그녀, 와타나베 히로코 “이 추억들은 모두 당신 거예요.” 첫사랑을 알지 못했던 그녀, 후지이 이츠키', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'letter.jpg', 'deadpoolMain.png','letter.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '히어로', 'N', 'Y', 'Y', 'Y', '로 건', '가까운 미래, 능력을 잃어가는 ‘로건(울버린)’은 멕시코 국경 근처의 한 은신처에서 병든 ‘프로페서 X’를 돌보며 살아간다. 세상으로부터 자신을 숨기며 살아가고자 했던 ‘로건’은 정체불명의 집단에게 쫓기는 돌연변이 소녀 ‘로라’를 만나게 되고, 그녀를 지키기 위해 모든 것을 건 대결을 펼치게 되는데…', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'logan.jpg', 'deadpoolMain.png','logan.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '코미디', 'N', 'Y', 'Y', 'Y', '극한직업', '낮에는 치킨장사! 밤에는 잠복근무! 지금까지 이런 수사는 없었다! 불철주야 달리고 구르지만 실적은 바닥, 급기야 해체 위기를 맞는 마약반! 더 이상 물러설 곳이 없는 팀의 맏형 고반장은 국제 범죄조직의 국내 마약 밀반입 정황을 포착하고 장형사, 마형사, 영호, 재훈까지 4명의 팀원들과 함께 잠복 수사에 나선다. 마약반은 24시간 감시를 위해 범죄조직의 아지트 앞 치킨집을 인수해 위장 창업을 하게 되고, 뜻밖의 절대미각을 지닌 마형사의 숨은 재능으로 치킨집은 일약 맛집으로 입소문이 나기 시작한다. 수사는 뒷전, 치킨장사로 눈코 뜰 새 없이 바빠진 마약반에게 어느 날 절호의 기회가 찾아오는데... 범인을 잡을 것인가, 닭을 잡을 것인가!', 12, 10,  '2024', '128분', 'jobMain.png', 'job.jpg', 'jobMain.png','job.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '사극', 'N', 'Y', 'Y', 'Y', '명량', '
1597년 임진왜란 6년, 오랜 전쟁으로 인해 혼란이 극에 달한 조선. 
무서운 속도로 한양으로 북상하는 왜군에 의해 국가존망의 위기에 처하자 누명을 쓰고 파면 당했던 이순신 장군이 삼도수군통제사로 재임명된다.
 하지만 그에게 남은 건 전의를 상실한 병사와 두려움에 가득 찬 백성, 그리고 12척의 배 뿐. 
마지막 희망이었던 거북선마저 불타고 잔혹한 성격과 뛰어난 지략을 지닌 용병 구루지마가 왜군 수장으로 나서자 조선은 더욱 술렁인다.
330척에 달하는 왜군의 배가 속속 집결하고 압도적인 수의 열세에 모두가 패배를 직감하는 순간, 이순신 장군은 단 12척의 배를 이끌고 명량 바다를 향해 나서는데! 
12척의 조선 vs 330척의 왜군 역사를 바꾼 위대한 전쟁이 시작된다!', 12, 10,  '2024', '128분', 'bossMain.png', 'admiral.jpg', 'bossMain.png','admiral.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '멜로', 'N', 'Y', 'Y', 'Y', '건축학개론', '어쩌면... 사랑할 수 있을까? 건축학개론 수업에서 그녀를 처음 만났다. 생기 넘치지만 숫기 없던 스무 살, 건축학과 승민은 ′건축학개론′ 수업에서 처음 만난 음대생 서연에게 반한다. 함께 숙제를 하게 되면서 차츰 마음을 열고 친해지지만, 자신의 마음을 표현하는 데 서툰 순진한 승민은 입 밖에 낼 수 없었던 고백을 마음 속에 품은 채 작은 오해로 인해 서연과 멀어지게 된다. 어쩌면 다시... 사랑할 수 있을까? 15년 만에 그녀를 다시 만났다. 서른 다섯의 건축가가 된 승민 앞에 15년 만에 불쑥 나타난 서연. 당황스러움을 감추지 못하는 승민에게 서연은 자신을 위한 집을 설계해달라고 한다. 자신의 이름을 건 첫 작품으로 서연의 집을 짓게 된 승민, 함께 집을 완성해 가는 동안 어쩌면 사랑이었을지 모를 그때의 기억이 되살아나 두 사람 사이에 새로운 감정이 쌓이기 시작하는데...', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'building.jpg', 'deadpoolMain.png','building.jpg');


insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '코미디', 'N', 'Y', 'Y', 'Y', '가문의 영광', '가문의 업그레이드를 위한 백호파의 새로운 미션!! 이번엔 엘리트 며느리다! 최고 명문가가 백호파의 대모 홍덕자 여사! 조직은 조직대로 무럭무럭 크고, 슬하의 세 아들은 나름(?) 믿음직하다. 그러나 반드시 이룩해야 할 단 하나의 과제가 남아 있었으니, 가문의 체질개선을 위한 ‘엘리트 며느리’ 모시기!! 홍여사는 세 아들에게 자신의 환갑잔치 때까지 무조건 큰 며느리감을 데려오라는 명령을 내린다. 며느리감 물색에 나선 세 아들, 드디어 어디 내놔도 안 부끄러울 며느리 감을 발견했단다!! 근데 며느리 될 아이가 강력계 검사라고라고라? 가문의 영광을 이루려다 가문이 위태롭게 생겼다~! 과연 홍여사와 세 아들은 엘리트 며느리 모시기에 성공할 수 있을 것인가?', 12, 10,  '2024', '128분', 'familyMain.png', 'family.jpg', 'familyMain.png','family.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '코미디', 'N', 'Y', 'Y', 'Y', '투사부일체', '당분간 이런 코미디는 없다! | 우리를 기다리는 저들을 보라 어서가서 웃.기.자. | 두사부일체 2, 이번엔 교생이다! | 1편이 웃겼으면, 2편 보면... 죽겠다?! | 2006년 이번엔 교생이다! | 무엇을 상상하든 더 웃긴 것을 보게 될 것이다! 5년 전, 조폭의 신분으로 고등학교에 입학. 학교를 발칵 뒤집어 놓은 계두식이, 이번에는 사범 대학교 윤리 교생으로 돌아온다. 그는 졸업생들을 위한 현장실습을 장기수들이 출소하기 전에 쌓는 사회경험으로 가볍게 판단, 교생 실습을 위해 학교로 나서게 된 것. 실습 첫날부터 개구멍으로 출근한 그가, 교생도 선생은 선생!! 이라고 목에 강하게 힘을 주며, 윤리와 사상은 나만의 윤리관으로 가르치겠다!!라는 포부를 밝혔다.', 12, 10,  '2024', '128분', 'bossMain.png', 'boss.jpg', 'bossMain.png','boss.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '공포', 'N', 'Y', 'Y', 'Y', '컨져링', '플로리다에 거주하고 있는 찰리와 부쉬 커플은 유령애호가들로 휴가철이면 심령현상이 발견되는 곳에서 휴가를 즐기는 커플이다. 이번 여행은 뉴욕주의 롱 아일랜드에 위치한 미저리 로드의 괴기한 소문과 유령을 찾기 위해 계획을 세우는데, 미저리 로드에 관해 물어보는 사람마다 그 지역의 위험함을 경고하며 계획을 취소하라고 조언해주지만, 커플은 오히려 재미있어 하며 경고를 무시하고 미저리 로드 숲속을 향해 들어가게 되는데...', 12, 10,  '2024', '128분', 'bossMain.png', 'cjr.jpg', 'bossMain.png','cjr.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '범죄', 'N', 'Y', 'Y', 'Y', '타짜1', '낯선 자를 조심해라..! 가구공장에서 일하며 남루한 삶을 사는 고니는 대학보다 가난을 벗어나게 해줄 돈이 우선인 열혈 천방지축 청년! 어느 날 고니는, 가구공장 한 켠에서 박무석 일행이 벌이는 화투판에 끼게 된다. 
스무장의 화투로 벌이는 섯다 한 판! 하지만 고니는 그 판에서 삼년 동안 모아두었던 돈 전부를 날리고 만다. 
그것이 전문도박꾼 타짜들이 짜고 친 판이었단 사실을 뒤늦게 안 고니는 박무석 일행을 찾아 나서고, 도박으로 시비가 붙은 한 창고에서 우연인 듯 필연처럼 전설의 타짜 평경장을 만난다. 
그리고 잃었던 돈의 다섯 배를 따면 화투를 그만두겠단 약속을 하고, 그와 함께 본격적인 꽃싸움에 몸을 던지기 위한 동행길에 오른다. 영원한 친구도, 영원한 원수도 없다..! 
드디어 타짜의 길로 들어선 고니! 평경장과 지방원정을 돌던 중 도박판의 꽃, 설계자 정마담을 소개 받고 둘은 서로에게서 범상치 않은 승부욕과 욕망의 기운을 느끼게 된다. 
고니는 정마담이 미리 설계해 둔 판에서 큰 돈을 따게 되고, 결국 커져 가는 욕망을 이기지 못한 채 평경장과의 약속을 어기고 만다. 정마담과의 화려한 도박인생, 평경장과의 헤어짐을 택한 고니. 
유유자적 기차에 오르는 평경장과 마지막 인사를 나눈 고니는 그 기차역에서 극악무도한 독종이자 죽음의 타짜란 아귀를 스치듯 만난다. 
이후 고니는, 정마담의 술집에서 벌어진 한 화투판에서 요란스러운 입담으로 판을 흔드는 고광렬을 만나고, 경찰의 단속을 피하던 중 그와 함께 정마담을 떠나게 된다. 
고광렬은 고니와는 달리 남들 버는 만큼만 따면 된다는 직장인 마인드의 인간미 넘치는 타짜! 둘은 환상의 호흡을 자랑하며 전국의 화투판을 휩쓴다. 
너를 노린다, 목숨을 건 마지막 승부..!', 12, 10,  '2024', '128분', 'gambleMain.png', 'gamble1.jpg', 'gamble1.png','gamble1.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '범죄', 'N', 'Y', 'Y', 'Y', '타짜2', '화투판엔 영원한 친구도, 영원한 원수도 없다! 
삼촌 ‘고니’를 닮아 어린 시절부터 남다른 손재주와 승부욕을 보이던 ‘대길’은 고향을 떠나 서울 강남의 하우스에서 ‘타짜’로 화려하게 데뷔하지만, 한 순간에 모든 것을 잃고 우연히 ‘고니’의 파트너였던 ‘고광렬’을 만난다. 
‘고광렬’과 함께 전국을 유랑하던 ‘대길’은 절대 악의 사채업자 ‘장동식’은 물론, 전설의 타짜 ‘아귀’까지 ‘타짜’들과 목숨줄이 오가는 한 판 승부를 벌이는데...', 12, 10,  '2024', '128분', 'gamble2Main.png', 'gamble2.jpg', 'gamble2.png','gamble2.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '범죄', 'N', 'Y', 'Y', 'Y', '타짜3', '전설적인 타짜 ‘짝귀’의 아들이자 고시생인 ‘일출’(박정민)은 공부에는 흥미가 없지만 포커판에서는 날고 기는 실력자다. 
포커판에서 우연히 알게 된 ‘마돈나’(최유화)의 묘한 매력에 빠져든 일출은 그녀의 곁을 지키는 ‘이상무’(윤제문)에게 속아 포커의 쓴맛을 제대로 배운다. 
돈도 잃고 자존심까지 무너진 채 벼랑 끝에 몰린 도일출, 그의 앞에 정체불명의 타짜 ‘애꾸’(류승범)가 나타난다. 거액이 걸린 거대한 판을 설계한 애꾸는 전국에서 타짜들을 불러모은다. 
일출을 시작으로 셔플의 제왕 까치(이광수), 남다른 연기력의 영미(임지연), 숨은 고수 권원장(권해효)까지 무엇이든 될 수 있고, 누구든 이길 수 있는 ‘원 아이드 잭’ 팀으로 모인 이들, 인생을 바꿀 새로운 판에 뛰어드는데... 
베팅을 할 때는 인생을 걸어야지! 타짜니까!', 12, 10,  '2024', '128분', 'gamble3Main.png', 'gamble3.jpg', 'gamble3.png','gamble3.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '판타지', 'N', 'Y', 'Y', 'Y', '반지의제왕 1', '악의 군주 사우론의 절대반지가 깨어나고 악의 세력이 세상을 지배하며 중간계는 대혼란에 빠진다. 호빗과 엘프, 인간과 마법사로 구성된 반지 원정대는 절대반지를 파괴하기 위해 목숨을 건 여정을 떠난다. 한편, 사우론은 점점 악의 세력을 넓혀가고 반지 원정대는 피할 수 없는 최후의 전쟁을 준비하는데.', 12, 10,  '2024', '128분', 'ring1Main.png', 'ring1.jpg', 'ring1Main.png','ring1.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '판타지', 'N', 'Y', 'Y', 'Y', '반지의제왕 2', '뿔뿔이 흩어진 반지 원정대는 각자 위협을 맞이하고 간달프는 백색의 마법사로 부활한다. 사우론을 대적하려는 가운데 힘을 합쳐야 하지만 동맹이 깨진 인간 종족은 연합하려 하지 않고, 사우론은 계속해서 세력을 키우며 중간계를 잠식해온다.', 12, 10,  '2024', '128분', 'ring2Main.png', 'ring2.jpg', 'ring2Main.png','ring2.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '판타지', 'N', 'Y', 'Y', 'Y', '반지의제왕 3', '악의 군주 사우론의 군대는 곤도르의 수도를 공격한다. 왕위를 계승할지 결정해야 하는 아라고른. 프로도의 임무 달성을 위해 간달프와 세오덴은 인간 종족 전사들을 규합한다.
', 12, 10,  '2024', '128분', 'ring3Main.png', 'ring3.jpg', 'ring3Main.png','ring3.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '액션', 'N', 'Y', 'Y', 'Y', '미션임파서블', '동유럽 첩보원들의 비밀 명단을 훔쳐 무기상에 팔아 넘기려는 음모를 막기 위해 짐 펠프스가 이끄는 CIA 최고의 팀 ′미션 임파서블′이 투입된다. 그러나 대사관 파티에 잠입하여 동료들과 함께 작전을 수행하던 중 팀의 리더였던 이단 헌트만이 구사일생으로 혼자 살아 남는다. 헌트는 자신이 CIA 내에 침투한 이중간첩으로 지목되었음을 알게 된다. 곧 이어 본부에 연락을 취한 헌트는 이번 작전이 CIA 내에 침투한 이중간첩의 체포작전이라는 것과 자신이 범인으로 지목된 것을 알고 재빨리 피신한다. 그는 자신을 함정에 빠뜨리고 동료들을 살해한 진짜 범인을 찾기 위해 나선다. 마침내 그는 컴퓨터의 접속암호를 풀어 무기 밀매상인 맥스와 연락을 취하고, 그에게 CIA 본부의 진짜 비밀명단이 들어있는 디스크를 주겠다고 약속하는데....', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'imp1.jpg', 'deadpoolMain.png','imp1.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '액션', 'N', 'Y', 'Y', 'Y', '미션임파서블2', '러시아 생물공학자 네코비치 박사는 비행기 내에서 이단 헌트로 변장한 앰브로즈에게 벨레로폰을 탈취당한 후 살해된다. IMF 요원 이단 헌트는 네코비치 박사가 테러리스트 앰브로즈에게 탈취당한 것이 무엇인지 알아내기 위해 파견된다. 헌트는 키메라라는 것이 인플루엔자, 즉 유행성 감기를 없애기 위한 완벽한 치료제인 벨레로폰을 유전적으로 조합하다 부수적으로 만들어진 악성 바이러스라는 사실을 알아낸다. 헌트는 임무를 위해 앰브로즈의 전 애인 니아 홀을 포섭한다. 헌트는 니아와 사랑에 빠지지만 키메라 바이러스를 파괴하기 위해 니아를 앰브로즈에게 보낸다. 그러나 헌트와 니아의 관계를 눈치 챈 앰브로즈는 니아를 역이용하고 이 과정에서 니아는 마지막 남은 키메라 바이러스 자신의 몸에 주입하는데...', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'imp2.jpg', 'deadpoolMain.png','imp2.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '액션', 'N', 'Y', 'Y', 'Y', '미션임파서블3', '최첨단 정보기관 IMF의 특수 비밀 요원 이단 헌트. 최고의 베테랑 특수 요원으로서 항상 긴장감 속에 경계를 늦추지 않던 그는 이제 현장에서 한 발 물러나 특수 요원 트레이닝에 전념하며 삶의 여유를 찾고, 사랑하는 여인 줄리아와 행복한 결혼을 꿈꾼다. 하지만 그녀와의 약혼식 날, 세계적으로 악명 높은 국제 암거래상 오웬 데비언에게 인질로 잡혀있는 IMF 요원을 구출하라는 임무가 떨어지고, 약혼녀에게 사실을 알리지 못한 채 임무를 수행하러 떠난다. 그러나 임무에 실패하고 자신과 상관의 명예를 회복하기 위해 다시 오웬을 추적한다. 오웬을 생포하는데 성공하여 IMF 본부로 오던 중 이단 헌트의 IMF팀은 정체 모를 집단에 의해 비행기에서 쏟아지는 무차별적인 미사일 공격을 받고, 오웬은 다시 그의 손을 빠져나간다. 극악무도한 오웬은 빼앗긴 극비정보를 되찾기 위해 이단 헌트의 아내를 납치하고, 자신이 요구하는 극비정보를 IMF 본부에서 48시간 안에 다시 빼내오지 않으면 이단의 눈 앞에서 줄리아를 죽여버리겠다고 위협하는데...', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'imp3.jpg', 'deadpoolMain.png','imp3.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '애니메이션', 'N', 'Y', 'Y', 'Y', '쿵푸팬더1', '‘평화의 계곡’에서 아버지의 국수 가게를 돕고 있는 팬더, 포. 아버지는 국수의 비법을 알려주어 가업을 잇게 하고 싶지만, 포의 관심사는 오로지 쿵푸 마스터. 가게 일은 뒷전으로 하고 쿵푸의 비법이 적힌 용문서의 전수자를 정하는 ‘무적의 5인방’ 대결을 보러 시합장을 찾은 포, 그런데 이게 웬일! 마을의 현인 우그웨이 대사부가 포를 용문서의 전수자로 점지하는 이변이 일어난다. 무적의 5인방은 물론 시푸 사부 역시 이 사태를 받아들이지 못하는 가운데, 용문서를 노리고 어둠의 감옥에서 탈출한 타이렁이 마을을 습격해오자 그를 막아야 하는 미션이 포에게 떨어지는데... 포는 쿵푸마스터로 거듭날 수 있을까? 아니... 포가 쿵푸를 할 수는 있을까? 똥배 안에 숨겨진 포스를 깨우기 위한 포의 도전이 시작된다!', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'panda1.jpg', 'deadpoolMain.png','panda1.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '애니메이션', 'N', 'Y', 'Y', 'Y', '쿵푸팬더2', '그토록 원하던 용의 전사가 되어 무적의 5인방과 함께 평화의 계곡을 지키게 된 포. 진정한 용의 전사로 거듭나기 위해 시푸 사부와 쿵푸 수련에 매진하던 중, 셴 선생이 위대한 쿵푸 사부들을 하나 둘 씩 제거하고 있다는 소식을 듣게 된다. 여전히 바람을 가르는 주먹의 소리보다 배에서울리는 꼬르륵 소리가 더 크고, 오랜 숙적인 계단 앞에서는 맥을 못 추는 천방지축 팬더 포. 이제 막 정식 수련을 시작하려는 포에게 쿵푸를 지켜야 한다는 막중한 미션이 주어지고, 포는 무적의 5인방과 함께 길을 떠난다. 과연 포는 쿵푸의 대가들도 막지 못한 셴 선생의 비밀병기에 맞서 쿵푸를 지켜낼 수 있을까?', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'panda2.jpg', 'deadpoolMain.png','panda2.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(1, '애니메이션', 'N', 'Y', 'Y', 'Y', '쿵푸팬더3', '어느 날 우연히, 어린 시절 잃어버렸던 진짜 ‘팬더’ 아버지를 만난 ‘포’는 아버지 ‘리’와 함께 팬더들이 어울려 사는 비밀스러운 그 곳, 팬더 마을로 향한다. 자신 못지 않게 여유와 흥 넘치는 팬더들과 즐거운 시간을 보내는 포. 하지만 모든 쿵푸 마스터들을 제압하며 전세계를 위협하는 악당 ‘카이’의 등장으로 포는 예상치 못했던 불가능한 도전에 맞닥뜨리게 된다. 놀기 좋아하고, 먹는 게 행복이며, 덤벙대는 게 특기인 팬더 친구들에게 궁극의 쿵푸를 전수해야 하는 것! 이번엔 쿵푸를 가르쳐야 한다! 쿵푸 훈련법 마스터에 나선 ‘포’, 팬더 인생 최대의 도전이 시작된다!', 12, 10,  '2024', '128분', 'deadpoolMain.png', 'panda3.jpg', 'deadpoolMain.png','panda3.jpg');





insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '예능', 'Y', 'Y', 'Y', 'Y', '놀라운토요일', '‘좋아요’ 폭발하는 SNS 핵 공감 핫 플레이스부터 오랜 전통이 살아 숨 쉬는 노포까지! 혀르가즘 자극하는 시장의 먹거리를 얻기 위한 MC군단의 자존심을 건 미션 수행! 고막 오픈! ‘도레미♪’ 흥겨운 음악을 듣고 가사를 맞히면 침샘 개장! ‘마켓’ 시장의 군침 가득 먹거리를 누릴 수 있다! 과연 MC 군단은 정신 혼미한 미션을 이겨내고 맛있는 음식을 먹을 수 있을까? 전국에 핫한 시장 속 핫한 음식을 걸고 펼쳐지는 MC 군단의 고군분투기! ‘도레미 마켓’!', 12, 10,  '2024', '15회', 'saturdaymain.jpg', 'saturday.jpg', 'sturdaymain.jpg','saturday.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '멜로', 'Y', 'Y', 'Y', 'Y', '선재 업고 튀어', '변우석, 김혜윤, 송건희, 이승협 (J.DON), 정영주, 성병숙, 송지호, 서혜원, 김원해, 안상우 만약, 당신의 최애를 구할 수 있는 기회가 온다면? 삶의 의지를 놓아버린 순간, 자신을 살게 해줬던 유명 아티스트 류선재. 그의 죽음으로 절망했던 열성팬 임솔이 최애를 살리기 위해 시간을 거슬러 2008 년으로 돌아간다! 다시 살게 된 열아홉, 목표는 최애 류선재를 지키는 것!

', 12, 10,  '2024', '15회', 'sunjaemain.jpg', 'sunjae.png', 'sunjaemain.jpg','sunjae.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '예능', 'Y', 'Y', 'Y', 'Y', '유퀴즈 온더 블럭!', '토킹 어바웃 유! 큰 자기 유재석&아기자기 조세호와 자기님들의 인생으로 떠나는 사람 여행', 12, 10,  '2024', '15회', 'uqzmain.jpg', 'uqz.png', 'uqzmain.jpg','uqz.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '사극', 'Y', 'Y', 'Y', 'Y', '뿌리깊은나무', '한글을 창제한 왕! 세종의 이야기다

이 드라마는 실록에 나와있지 않는 
창제의 과정과 창제를 하게 된 이유와 배경.
또한 그것을 반대한 세력의 
이유와 배경들을 유추,창작하여

‘세종은 어떤 조선을 꿈꿨는지’
또한 그것을 이룩하는 과정에서의 

세종의 고뇌와 우리가 생각하지 못했던
이러저러한 이면등을 통해 
세종을 재해석 하려한다.', 12, 10,  '2024', '15회', 'woodmain.jpg', 'wood.png', 'woodmain.jpg','wood.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '오리지널', 'Y', 'Y', 'Y', 'Y', '플레이어2', '사기꾼, 해커, 파이터, 드라이버! 더 강력해진 ′꾼′들이 돌아왔다! ′가진 놈′들을 시원하게 털어버리는 팀플레이 액션 사기극', 12, 10,  '2024', '15회', 'player2main.jpg', 'player2.png', 'player2main.jpg','player2.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '교양(다큐)', 'Y', 'Y', 'Y', 'Y', '인간극장', '보통사람들의 특별한 이야기, 특별한 사람들의 평범한 이야기 다큐미니시리즈 인간극장이 지켜온 가치이자 프로그램의 정체성입니다. 결코 평범하지 않은 삶의 이야기를 가진 보통 사람들, 그리고 사회적인 명성을 가진, 이른바 잘나가는 사람들의 아주 평범한 이야기! 인간극장 무대에선 누구나 그저 자연인 그대로 남자, 여자, 아버지, 어머니, 부모, 자식일 뿐이죠. 인간본연의 五慾七情이 가장 잘 드러난 삶의 무대, 인간극장 그 주인공은 바로 당신입니다.', 12, 10,  '2024', '15회', 'humanmain.jpg', 'human.png', 'humanmain.jpg','human.png');



insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '키즈', 'N', 'Y', 'Y', 'Y', '스폰지밥', '네모바지 스폰지밥은 비키니 시티라고 불리는 깊은 바닷속 해저 마을에 사는 스폰지밥이 주인공인 만화 시리즈다. 스폰지밥 친구인 분홍색 불가사리 뚱이와 함께, 가장 발칙하고 신나는 모험을 경험하게 된다. 스폰지밥은 매우 활기차고 낙천적인 성격으로 바닷속에서 최고의 버거를 만드는 식당 ′집게리아′에서 주방장으로 일하고 있다.', 12, 10,  '2024', '15회', 'detectivemain.png', 'bob.png', 'detectivemain.png','bob.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '스포츠', 'N', 'Y', 'Y', 'Y', '최강야구', '장시원, 최태규, 김은지, 김주아, 김세홍, 김현수, 최소망, 김가원, 김하영, 배진영, 안지혜, 서성우, 전성현, 이해원 장진경, 한기탁, 임진, 오수현, 박진희, 이효정, 이규민, 김주연, 송규호, 김성진, 김해윤, 김시원, 김호진, 박지현, 김정아, 차윤진, 고은미, 금보라, 한아름, 최희진, 문혜빈, 나지영, 이수아 김성근, 박용택, 송승준, 이택근, 정성훈, 이대호, 정근우, 장원삼, 서동욱, 오주원, 유희관, 정의윤, 김문호, 이대은, 신재영, 이홍구, 박재욱, 최수현, 선성권, 황영묵, 원성준, 고영우, 정현수, 유태웅, 김민주, 이광길, 오세훈, 김선우, 정용검 Win or Nothing. 오직 승리만을 추구하는 사상 최강의 야구팀이 탄생했다. 야구에 미친 자들의 모든 걸 건 진짜 승부.', 12, 10,  '2024', '15회', 'detectivemain.png', 'baseball.png', 'detectivemain.png','baseball.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '해외', 'N', 'Y', 'Y', 'Y', '헤일로2', '코버넌트가 코어를 향해 진격하며 인류의 가장 중요한 근거지에 다다르고, UNSC의 본거지인 리치 행성과 본부, 군사 기지까지 발각되며 힘겨운 싸움이 시작된다.', 12, 10,  '2024', '15회', 'detectivemain.png', 'halo.png', 'detectivemain.png','halo.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '공연', 'N', 'Y', 'Y', 'Y', '백상예술대상', '1965년부터 한국 대중문화 예술의 발전과 예술인의 사기진작을 위해 제정한 백상예술대상이 올해로 60회째를 맞이합니다. 본 상은 지난 1년간 방영, 상영 또는 공연된 TV/영화/연극 부문의 제작진과 출연자에게 시상하는 국내 유일의 종합 예술상입니다.', 12, 10,  '2024', '15회', 'detectivemain.png', 'prize.png', 'detectivemain.png','prize.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '교양(다큐)', 'N', 'Y', 'Y', 'Y', '책 읽어 드립니다', '스테디셀러 책들을 알기 쉽게 풀어주는 독서 프로그램', 12, 10,  '2024', '15회', 'detectivemain.png', 'book.png', 'detectivemain.png','book.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '애니메이션', 'N', 'Y', 'Y', 'Y', '귀멸의 칼날', '귀살대 최강의 검사 ‘주’들과 귀살대원들. 다가오는 키부츠지 무잔과의 결전을 위한 ‘합동 강화 훈련’이 개막한다. 각자의 마음을 담아, 탄지로와 주들의 새로운 이야기가 막을 올린다.', 12, 10,  '2024', '15회', 'detectivemain.png', 'blade.jpg', 'detectivemain.png','blade.jpg');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '예능', 'N', 'Y', 'Y', 'Y', '여고추리반', '무서운 저주가 떠도는 학교로 전학 간 추리반 학생들이 학교에 숨겨진 진실에 다가갈수록 더욱더 거대한 사건을 마주하면서 벌어지는 미스터리 어드벤처', 12, 10,  '2024', '15회', 'detectivemain.png', 'detectivemain.png', 'detectivemain.png','detectivemain.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '예능', 'N', 'Y', 'Y', 'Y', '지락이의 뛰뛰빵빵', '지락이들 입맛 따라 100% 제멋대로 즐기는 더 자유롭고 더 리얼한 힐링 여행기! 지구오락실 스핀오프 <지락이의 뛰뛰빵빵>', 12, 10,  '2024', '15회', 'naturemain.png', 'nature.png', 'naturemain.png','nature.png');


insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '해외', 'N', 'Y', 'Y', 'Y', '프롬', '′프롬′은 누구든 발을 들이면 나갈 수 없는 악몽 같은 마을의 미스터리를 다룬 작품이다. 어쩔 수 없이 마을에 사는 주민들은 어떻게든 평범한 삶을 잃지 않으려 하고, 나갈 방법을 찾는다. 거기다 해가 지면 나타나는 끔찍한 생명체같이 주변 숲에 도사리는 위협에서도 살아남아야 한다.', 12, 10,  '2024', '15회', 'naturemain.png', 'from.png', 'naturemain.png','from.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '애니메이션', 'N', 'Y', 'Y', 'Y', '코난', '멈추지 않는 두뇌플레이. 코난의 2024 시즌 에피소드!', 12, 10,  '2024', '15회', 'naturemain.png', 'conan.png', 'naturemain.png','conan.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '애니메이션', 'N', 'Y', 'Y', 'Y', '짱구는 못말려', '예쁜 누나와 초코비를 좋아하는 5살 짱구와 살인적인 발 냄새를 가진 아버지 그리고 세일과 미남을 좋아하는 엄마, 귀여운 여동생 짱아와 강아지 흰둥이가 함께 하는 짱구 가족과 유치원 친구들의 일상을 그린 애니메이션', 12, 10,  '2024', '15회', 'naturemain.png', 'sinjang.png', 'naturemain.png','singjang.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '오리지널', 'N', 'Y', 'Y', 'Y', '히어로는 아닙니다만', '남다른 능력을 지녔지만 아무도 구하지 못했던 남자가 마침내 운명의 그녀를 구해내는 판타지 로맨스', 12, 10,  '2024', '15회', 'naturemain.png', 'hero.png', 'naturemain.png','hero.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '예능', 'N', 'Y', 'Y', 'Y', '백팩커', '백종원 시키신 분~? 우리가 가는 곳이 곧 주방! 극한의 출장 요리단이 간다!', 12, 10,  '2024', '15회', 'naturemain.png', 'backpack.png', 'naturemain.png','backpack.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '스포츠', 'N', 'Y', 'Y', 'Y', '대한민국 배드민턴', '국민 생활 스포츠 NO.1 배드민턴 배드민턴에 대한 관심과 즐거움을 다시 한 번! 배드민턴 레전드, 연예계 아마추어들과 함께 대한민국 전 연령 배드민턴으로 TURN~하는 프로젝트 배드민턴 시작부터 전국 대회 진출까지 이어지는 두 달간의 여정 남녀노소, 배드민턴 초보~고수 누구나 즐겁게 방구석 1열에서 직관하는 배드민턴 명승부, 짜릿한 빅 재미 온 국민이 다시 배드민턴으로 턴~ 하는 그날까지! 자, 지금부터 라켓 잡고 뛰어볼까?', 12, 10,  '2024', '15회', 'naturemain.png', 'badmin.png', 'naturemain.png','badmin.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '예능', 'N', 'Y', 'Y', 'Y', '찐팬구역', '′그깟 공놀이′에 인생을 걸고 사는 찐팬들의 처절한 응원기', 12, 10,  '2024', '15회', 'naturemain.png', 'fanarea.png', 'naturemain.png','fanarea.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '키즈', 'N', 'Y', 'Y', 'Y', '뽀로로', '뽀로로와 친구들은 전 우주를 통틀어 최고의 슈퍼스타를 뽑는 음악 축제 ‘파랑돌 슈퍼스타 선발대회’ 축제에 참가하기 위해 모험을 떠난다. 파랑돌 행성에 불시착한 뽀로로와 친구들 앞에 나타난 열정 가득한 매니저 ‘스캣’의 도움으로 ‘뽀로로 밴드’는 가까스로 설레는 예선 무대에 오른다. 한편, 악당 ‘빅벤’은 ‘스캣’과의 경쟁에서 이기기 위해 모든 것이 완벽한 AI 아이돌 ‘아이원’을 앞세워 대회에 참가하지만 ‘뽀로로 밴드’의 예상치 못한 인기에 위기감을 느껴 급기야 방해 공작을 벌이게 되고, 뽀로로와 친구들은 마지막 공연을 앞두고 갑작스러운 위기를 맞이하는데…', 12, 10,  '2024', '15회', 'naturemain.png', 'pororo.png', 'naturemain.png','pororo.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '키즈', 'N', 'Y', 'Y', 'Y', '똘똘이 동요', '매일매일이 새롭고 즐거워~. 꼭꼭 눌러쓴 똘똘이의 그림일기에는 똘똘이의 마음이 한가득 표현되어 있다. 오늘은 또 무슨 일이 있었을까? 재미있는 동요와 이야기로 똘똘이의 하루를 따라가 본다.', 12, 10,  '2024', '15회', 'naturemain.png', 'songsong.png', 'naturemain.png','songsong.png');

insert into product(kind, genre, mainyn, bestyn, newyn, useyn, title, content, age, count, year, time, image, savefilename, image2, savefilename2) 
values(0, '해외', 'N', 'Y', 'Y', 'Y', '이블', '범죄 심리학자 크리스틴 부샤드는 법정에서 수련 사제 데이비드 어코스타를 만나 악마에 빙의된 사람과 정신 질환자를 구별하는 일을 맡는다. 초자연적인 현상과 의학으로 설명할 수 없는 사람들을 만나며 신의 존재를 믿지 않았던 크리스틴의 신념은 점차 흔들리고, 소중한 네 딸을 지키기 위해 점점 과감해진다.', 12, 10,  '2024', '15회', 'naturemain.png', 'evil.png', 'naturemain.png','evil.png');




create or replace view main_pro_view
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product;





create or replace view best_pro_view
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product;



create or replace view new_pro_view
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product; 



create or replace view best_pro_view2
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product; 



create or replace view new_pro_view2
as
select pseq, title, image, kind, genre, age, time, year, content, savefilename from product; 


CREATE TABLE `steamed` (
	`sseq`	int	NOT NULL AUTO_INCREMENT,
	`pseq`	int	NOT NULL,
	`userid`	VARCHAR(45)	NOT NULL,
	`indate`	DATETIME	NOT NULL	DEFAULT now(),
	`result` char(1) NOT NULL	DEFAULT 'N',
	PRIMARY KEY (sseq)
);

ALTER TABLE `steamed` ADD CONSTRAINT `FK_product_TO_steamed_1` 
FOREIGN KEY (`pseq`)
REFERENCES `product` (`pseq`)
ON UPDATE RESTRICT
ON DELETE RESTRICT;

create or replace view steamed_view
as
select s.sseq, s.pseq, s.userid, s.indate, s.result, p.kind as kind, m.name as mname, p.savefilename as savefilename, p.title as ptitle  from steamed s, product p, member m
where s.pseq=p.pseq and s.userid=m.userid;




ALTER TABLE `member` ADD CONSTRAINT `FK_passticket_TO_member_1` FOREIGN KEY (
	`ptseq`
)
REFERENCES `passticket` (
	`ptseq`
);

ALTER TABLE `steamed` ADD CONSTRAINT `FK_product_TO_steamed_1` FOREIGN KEY (
	`pseq`
)
REFERENCES `product` (
	`pseq`
);

