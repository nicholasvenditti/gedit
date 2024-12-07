-- within

select title, year, cat
from Book
where upper(title) like upper(concat(concat('%', cat), '%'))
order by title, year, cat;
