-- query

select R.song, R.orchestra
from Recording R, Charts C
where R.song = C.song
  and C.rank <= 100;
