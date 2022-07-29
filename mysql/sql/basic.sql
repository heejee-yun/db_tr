CREATE TABLE IF NOT EXISTS `bts`.`member2` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(45) NULL,
  `pw` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `mobile` VARCHAR(45) NULL,
  `dob` DATE NULL,
  `gender` TINYINT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;


CREATE TABLE IF NOT EXISTS `bts`.`member2` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `id` VARCHAR(45) NULL,
  `pw` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `mobile` VARCHAR(45) NULL,
  `dob` DATE NULL,
  `gender` TINYINT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;


-- 중요 별 백개********************************
-- 테이블 수정 전에 항상 꼭 반드시 진짜로 ER 부터 수정
-- 중요 별 백개********************************


-- bts datebase를 사용하겠다
USE bts;

-- 전체 컬럼 조회
SELECT * FROM bts.member2;
-- * - all , 아스테리크?  실제로 일하면서는 쓰지 말기. 모두 불러오는라 시간 많이 듬

-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN nickname varchar(45) not null ;
 
ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER name ;

-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);
ALTER TABLE member2 MODIFY COLUMN nickname int;
-- 데이터가 없을 경우에는 변경 가능. 있으면 작은 범위에서 큰 범위는 가능하나. 큰 범위에서 작은 범위는 짤림


-- 컬럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45);

-- 컬럼 삭제
ALTER TABLE member2 DROP COLUMN nickname;

-- ROW 삭제 **** DELET FROM WHERE 쓰고 돌아가서 파일 이름 넣기 ****
DELETE FROM member2 WHERE seq = 2;
 
-- commit / rollback

SELECT * FROM bts.member2;

-- 내용 바꿀 때 사용 *** where 먼저 쓰고 하기 ***
UPDATE member2 SET
name = "123Kim"
, name = "Kim K"
where seq =1;

SELECT * FROM member
WHERE 1 = 1
-- AND name like 'l&'
-- AND name like '%le'
AND name like '%l%'
;

SELECT * FROM member2
where 1 = 1
-- AND delny = 0
-- AND delny > 1
-- ANd delny >= 1 
AND delNy between 0 and 1
;

SELECT * FROM member
WHERE 1 = 1
AND goal is null
-- AND nameEng = null
;