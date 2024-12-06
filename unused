-- unused

with cte as
	((select M.cid, C.name, M.club
	  from Customer C, Member M, Purchase P
	  where M.cid = C.cid
	    and P.cid = C.cid)
	 except
	 (select distinct P.cid, C.name, P.club
	  from Customer C, Purchase P
	  where P.cid = C.cid)
	)
select distinct cid, name
from cte
order by cid, name;
