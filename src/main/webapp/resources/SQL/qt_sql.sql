CREATE TABLE USER_INFO (
	info_id		varchar2(20)		NOT NULL,
	info_pw		varchar2(20)		NOT NULL,
	info_name	varchar2(20)		NOT NULL,
	info_bday	varchar2(20)		NOT NULL,
	info_phonenumber	number(20)		NOT NULL,
	info_email	varchar2(20)		NOT NULL,
	info_nickname	varchar2(20)		NOT NULL,
	info_joindate	date		NOT NULL,
	info_modifydate	date		NULL,
	info_deldate	date		NULL,
	info_delflag	number(5)	DEFAULT 0	NOT NULL
);

insert into user_info (info_id, info_pw, info_name, info_bday, info_phonenumber, info_email, info_nickname, info_joindate) values('asdfasdf','123','한빈','970213',123123,'khb2870@naver.com','뭉침',sysdate)

COMMENT ON COLUMN "USER_INFO"."info_id" IS '아이디_PK';

COMMENT ON COLUMN "USER_INFO"."info_pw" IS '비밀번호';

COMMENT ON COLUMN "USER_INFO"."info_name" IS '회원 이름';

COMMENT ON COLUMN "USER_INFO"."info_bday" IS '생년월일';

COMMENT ON COLUMN "USER_INFO"."info_phonenumber" IS '전화번호';

COMMENT ON COLUMN "USER_INFO"."info_email" IS '이메일';

COMMENT ON COLUMN "USER_INFO"."info_nickname" IS '닉네임';

COMMENT ON COLUMN "USER_INFO"."info_joindate" IS '가입날짜';

COMMENT ON COLUMN "USER_INFO"."info_modifydate" IS '수정날짜';

COMMENT ON COLUMN "USER_INFO"."info_deldate" IS '삭제날짜';

COMMENT ON COLUMN "USER_INFO"."info_delflag" IS '삭제여부확인';

ALTER TABLE "USER_INFO" ADD CONSTRAINT "PK_USER_INFO" PRIMARY KEY (
	"info_id"
);

insert into user_info (info_id,info_pw,info_name,info_nickname,info_phonenumber,info_email,info_joindate,info_bday,info_delflag) values ("123","123","123","123",123,"123",sysdate,"1234",1)

insert into user_info values ("123","123","123","123",123,"123",sysdate,sysdate,sysdate,"1234",0)

select * from user_info

drop table user_info;

select count(*) from user_info where info_id = 'asdf' and info_pw = 'asdff';
