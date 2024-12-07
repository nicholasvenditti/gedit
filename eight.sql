-- eight

select title, year
from
	(select B.title, B.year, count(*) as #clubs
	 from Book B, Offer O
	 where O.title = B.title
	   and O.year = B.year
	 group by B.title, B.year
	 order by B.title, B.year
	)
where #clubs = 8;
