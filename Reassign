-- Reassign

--#SET TERMINATOR @

create or replace trigger Reassign
after insert on Member
referencing new row as N
for each row mode db2sql
when (
	true
)
begin atomic
	update Purchase P
	set P.club = N.club
	where P.cid = N.cid
	  and P.when >= '2020-01-01-00.00.00'
	  and 	(select price
		 from Offer
		 where club = N.club
	  	   and title = P.title
	  	   and year = P.year 
	      	)
		< 
		(select price
		 from Offer
		 where club = P.club
		   and title = P.title
		   and year = P.year
		);
end@
