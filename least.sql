-- least

with cte as
	(select club, count(*) as count 
	 from Member 
      	 group by club
     	)
select club, count
from cte
where count in
	(select min(count)
	 from cte
	);
