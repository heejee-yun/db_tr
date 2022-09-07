SELECT * FROM bts.team;
-- ALTER TABLE member2 ADD COLUMN nickname varchar(45) not null ;
ALTER TABLE bts.team ADD COLUMN startedDate date not null;


-- 중요**********************************
-- 테이블 수정 전에 항상 꼭 반드시 ER 부터 수정
-- 중요**************************************
-- 전체 컬럼 조회
SELECT * FROM member2;
-- 컬럼추가
ALTER TABLE member2 ADD COLUMN age varchar(45);
-- AFTER () 는 그 다음에 테이블을 만들어준다.
ALTER TABLE member2 ADD COLUMN dob varchar(45) AFTER name;
-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);
-- 컬럼 이름변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);
-- 컬럼 삭제
ALTER TABLE member2 drop COLUMN nick;
-- row 삭제
DELETE FROM member2 WHERE seq = 1;
-- commit / rollback
SELECT * FROM member2;
-- 데이터 수정
UPDATE member2 SET
	name = "Teo"
    , dob ="1992.06.22"
WHERE seq = 1;
-- where
SELECT * FROM member
WHERE 1=1
-- AND name like 'To%'
-- AND name like '%ny'
AND id like '%d%w%'
;
SELECT *FROM member2
WHERE 1=1
AND delNy = 0
AND delNy > 1
AND delNy >=1
AND delny between 0 and 1
;
SELECT * FROM member
WHERE 1=1
AND actor_type = ''
;
-- 내용 수정
UPDATE post_odition SET
	aga = 0
WHERE seq = 1;


-- 핸드폰 뒷자리 검색

select 
right(mobile,4)
from member;
