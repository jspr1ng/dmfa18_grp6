-- Create bronze level table
-- js 2018-11-17

CREATE TABLE b_pltn_dt (LIKE `pltn_dt`)
;

INSERT INTO b_pltn_dt
SELECT * FROM `pltn_dt`
;

--SELECT count(*) FROM b_pltn_dt
--SELECT count(*) FROM `pltn_dt`
