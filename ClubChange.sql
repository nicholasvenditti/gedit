-- ClubChange

--#SET TERMINATOR @

create or replace trigger ClubChange
after update of club on Purchase
referencing
	old as A
	new as Z
for each row mode db2sql
when (
	true
)
begin atomic
	insert into Credit (cid, title, year, when, old_club, new_club, done) values
		(Z.cid, Z.title, Z.year, Z.when, A.club, Z.club, CURRENT_TIMESTAMP);
end@
