-- common

select namea, nameb
from 
	(select distinct A.name as namea, A.cid, B.name as nameb, B.cid
	 from Customer A, Customer B, Purchase C, Purchase D
	 where C.cid = A.cid
	   and D.cid = B.cid
	   and C.title = D.title
	   and C.year = D.year
	   and A.cid > B.cid
	 order by namea, A.cid, nameb, B.cid
	);
