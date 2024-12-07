-- bycat

select C.name, B.cat, dec(sum(O.price * P.qnty), 5, 2) as paid
from Customer C, Book B, Offer O, Purchase P
where P.cid = C.cid
  and P.title = B.title
  and P.year = B.year
  and O.title = B.title
  and O.year = B.year
  and P.club = O.club
group by P.cid, C.name, B.cat
order by name, cat, paid;
