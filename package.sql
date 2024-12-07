-- package

select Z.cid, Z.name, Z.day, dec(Z.cost + S.cost, 5, 2) as cost
from Shipping S,
	(select C.cid, C.name, cast(P.when as date) as day, dec(sum(O.price * P.qnty), 5, 2) as cost, sum(B.weight) as weight
	 from Customer C, Book B, Offer O, Purchase P
	 where P.cid = C.cid
	   and P.title = B.title
	   and P.year = B.year
	   and O.title = B.title
	   and O.year = B.year
	   and P.club = O.club
	 group by C.cid, C.name, cast(P.when as date)
	 order by C.cid, day
	) as Z
where (case when (Z.weight in ('2001', '2002', '2003', '2004'))
	then S.weight - Z.weight < 4
  	 and S.weight - Z.weight >= 0
	else S.weight - Z.weight < 500
	 and S.weight - Z.weight >= 0
       end);
