-- caa

select count(*) as #basic, 
	(select count(*) 
	 from Member 
	 where club = 'CAA'
	) as #CAA
from Member
where club = 'Basic';
