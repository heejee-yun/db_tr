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
and memberseq is not null;
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
; 
