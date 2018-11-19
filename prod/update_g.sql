-- update gold layer

delete from g_pltn_dt
  where funds_raised is null
;

delete from g_pltn_dt
  where 
