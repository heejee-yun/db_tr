use bts;

-- 공통코드
select
	a.seq
    ,a.name
	,b.orderny
    ,b.name
from ccg a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join cc b on b.ccg_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
order by 
	seq asc
;


-- 맴버 어드민
		SELECT
			a.*
			, (select count(aa.seq) from cc aa where 1=1 and aa.userny = 0 and aa.seq = a.seq) as seqCount
		FROM ccg a
		WHERE 1=1
			AND userny = 0
			AND name LIKE CONCAT ('%', #{shValue}, '%')
;
            
-- 로그인
select id, name from member where id = "mi45" and pw = "$$$"
;

-- todo목록
select 
	toDoDate
	, finishedTd
	, toDO
from todo 
;

-- 응원댓글
 select
	comment
    , listedTime
    ,  likes
from comment
;	


-- 아이디 찾기 목록
select * from member where name = "Sun Mi" and dob = "1990-04-01" and email = "mi45@wonder.com"
;

select
	name
    ,dob
    ,email
from member
;

-- 비밀번호 찾기
select
	id
    ,email
from member
where 1=1
	and id like '%3%'  -- %s내용% 이면 검색 내용 나옴 
    -- union : 중복값은 제거 후 출력
    -- union all :  중복값이 있어도 그래도 츨력 그래서 속조가 union 보다 빠르다 / 그냥 union에 비해 빠름. 권장함
;


-- 팀리스트   / 
select 
	name
    ,memberseq
    ,period
    ,goal
from team
order by 
	meberseq asc  -- 오름은 asc/  반대는 desc : 숫자 
; 

-- 팀 응원댓글  ? 3개를 모두? team :  goal, comment, listedTime 
select
	b. name 
    ,a. comment
    ,a. listedTime
    ,c. name
from 
	teamComment a
inner join team b, member c on a.teamComment_seq = b.memberseq = c.seq
;


-- '매일 영어'팀의 응원댓글 예시
select
	b. name
    ,a. comment 
    ,a. listedTime
    ,c. name
from 
	teamComment a
    , team b
    , member c
where
	a. teamMember_seq = 1
order by 
; 

use bts;

-- 공통코드
select
	a.seq
    ,a.name
	,b.orderny
    ,b.name
from ccg a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join cc b on b.ccg_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;


-- 로그인
select id, name from member where id = "mi45" and pw = "$$$"
;

-- todo목록
select 
	toDoDate
	, finishedTd
	, toDO
from todo 
;

-- 응원댓글
 select
	comment
    , listedTime
    ,  likes
from comment
;	


-- 아이디 찾기 목록
select * from member where name = "Sun Mi" and dob = "1990-04-01" and email = "mi45@wonder.com"
;

select
	name
    ,dob
    ,email
from member
;

-- 비밀번호 찾기
select
	id
    ,email
from member
;

-- 팀리스트   / 
select 
	name
    ,memberseq
    ,period
    ,goal
from team
order by 
	meberseq asc  -- 오름은 asc/  반대는 desc : 숫자 
; 

-- 팀 응원댓글  ? 3개를 모두? team :  goal, comment, listedTime 
select
	b. name 
    ,a. comment
    ,a. listedTime
    ,c. name
from 
	teamComment a
inner join team b, member c on a.teamComment_seq = b.memberseq = c.seq
;


-- '매일 영어'팀의 응원댓글 예시
select
	b. name
    ,a. comment 
    ,a. listedTime
    ,c. name
from 
	teamComment a
    , team b
    , member c
where
	a. teamMember_seq = 1
order by 
; 

CREATE TABLE IF NOT EXISTS `bts`.`memberUploaded` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNy` TINYINT NULL,
  `sort` TINYINT NULL,
  `orinalName` VARCHAR(45) NULL,
  `uuidName` VARCHAR(45) NULL,
  `ext` VARCHAR(45) NULL,
  `size` BIGINT NULL,
  `delNy` TINYINT NULL,
  `pseq` BIGINT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

insert into memberUploaded (
  type
  ,defaultNy
  ,sort
  ,orinalName
  ,uuidName
  ,ext
  ,size
  ,delNy
  ,pseq
)

Values (
	0
    ,0
    ,0
    ,"프로밀사진수정후.png"
    ,"6f087f0s0d8d56d54s7.png"
    ,"png"
    ,232435
    ,0
    ,1
)
;

insert into memberUploaded (
  type
  ,defaultNy
  ,sort
  ,orinalName
  ,uuidName
  ,ext
  ,size
  ,delNy
  ,pseq
)

Values (
	0
    ,1
    ,1
    ,"프로밀사진최종.png"
    ,"6f087f0s0d8d56dd6e9.png"
    ,"png"
    ,28663
    ,0
    ,1
)
;

insert into memberUploaded (
  type
  ,defaultNy
  ,sort
  ,orinalName
  ,uuidName
  ,ext
  ,size
  ,delNy
  ,pseq
)

Values (
	0
    ,1
    ,1
    ,"김유정프로필사진.jpg"
    ,"2nd94n3b5j5k3.jpg"
    ,"jpg"
    ,6542
    ,0
    ,2
)
;

CREATE TABLE IF NOT EXISTS `bts`.`teamUploaded` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNy` TINYINT NULL,
  `sort` TINYINT NULL,
  `originalName` VARCHAR(45) NULL,
  `uuidName` VARCHAR(45) NULL,
  `ext` VARCHAR(45) NULL,
  `size` BIGINT NULL,
  `delNy` TINYINT NULL,
  `pseq` BIGINT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

insert into teamUploaded(
	type
	,defaultNy
	,sort
	,originalNameimage
	,uuidName
	,ext
	,size
	,delNy
	,pseq
)
values(
	0
	,1
	,0
	,"모임용부장님등산사진.png"
	,"4d9f9g8gh.png"
	,"png"
	,85456
	,0
	,2
)
;

alter table memberUploaded change column orinalName originalName varchar(45);


alter table team drop column image;