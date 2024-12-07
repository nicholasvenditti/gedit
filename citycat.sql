-- citycat

with cte as
	(select C.city, B.cat, count(P.qnty) as #books
	 from Customer C, Purchase P, Book B
	 where P.cid = C.cid
	   and P.title = B.title
	   and P.year = B.year
	 group by C.city, B.cat
	 order by C.city, B.cat
	)
select *
from cte
where (city, #books) in
	(select city, max(#books)
	 from cte
	 group by city
	);
