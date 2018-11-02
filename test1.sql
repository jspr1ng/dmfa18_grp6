select year, sum(funds_raised)
from pltn_dt
group by year
;
