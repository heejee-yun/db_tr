use bts;

select
	a.seq
    ,a.id
    ,a.pw
    ,b.toDoDate
from member a
-- left join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
inner join todo b on b.member_seq = a.seq
-- join infrMemberAddress b on b.ifmmSeq = a.ifmmSeq
;
-- 이너는 마스터는 다 나오고, 레프트 조인은 필요한 것만 보임 

