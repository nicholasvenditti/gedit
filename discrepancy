-- discrepancy

select O.club, dec(avg(O.price - Z.average), 5, 2) as discrepancy
from Offer O, 
	(select title, year, avg(price) as average
	 from Offer
	 group by title, year
	) as Z
where Z.title = O.title
  and Z.year = O.year
group by O.club
order by discrepancy, O.club;
