-- import & update code: SILVER level

-- 1. create and load s_pltn_dt
CREATE TABLE s_pltn_dt
  (YEAR varchar(255), living_proof varchar(255), ride_distance smallint, funds_raised decimal, gender varchar(255), dob varchar(255), id varchar(255));

-- load from b_pltn_dt
INSERT INTO s_pltn_dt
  SELECT YEAR, living_proof, ride_distance, funds_raised, gender, dob, id
  FROM `b_pltn_dt`; --53,535


-- load from b_pltn_dt
INSERT INTO s_pltn_dt
  SELECT YEAR, living_proof, ride_distance, funds_raised, gender, dob, id
  FROM `b_pltn_dt`; --53,535

-- 2. remove " " values
update s_pltn_dt
set YEAR = NULL
where year = ' '
;
update s_pltn_dt
set LIVING_PROOF = NULL
where living_proof = ' '
;
update s_pltn_dt
set GENDER = NULL
WHERE gender = ' '
;
update s_pltn_dt
set DOB = NULL
WHERE dob = ' '
;
/*
-- 3. remove duplicates
--delete t1
SELECT t1.*
  FROM `s_pltn_dt` AS t1
  INNER JOIN `s_pltn_dt` AS t2
ON t1.id = t2.id
AND t1.DOB = t2.DOB
AND t1.FUNDS_RAISED = t2.FUNDS_RAISED
AND t1.GENDER = t2.GENDER
AND t1.LIVING_PROOF = t2.LIVING_PROOF
AND t1.RIDE_DISTANCE = t2.RIDE_DISTANCE
--AND t1.RIDE_YEARS = t2.RIDE_YEARS
--AND t1.RIDER_ID = t2.RIDER_ID
AND t1.`YEAR` = t2.`YEAR`
;*/
