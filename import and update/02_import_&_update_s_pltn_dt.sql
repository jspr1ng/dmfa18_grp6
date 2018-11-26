-- import & update code: SILVER level

-- 1. create and load s_pltn_dt
CREATE TABLE s_pltn_dt
  (YEAR varchar, rider_id varchar, living_proof varchar, ride_distance smallint, funds_raised decimal(100,4), gender varchar, dob varchar, id int);
-- load from b_pltn_dt
INSERT INTO s_pltn_dt
  SELECT YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, id
  FROM `pltn_dt`;

-- 2. remove " " values
update s_pltn_dt
  set YEAR = NULL
  where year = ' '
;
update s_pltn_dt
  set RIDER_ID = null
  where rider_id = ' '
;
update s_pltn_dt
  set LIVING_PROOF = NULL
  where living_proof = ' '
;
update s_pltn_dt
  set RIDE_DISTANCE	= NULL
  where ride_distance = ' '
;
update s_pltn_dt
  set FUNDS_RAISED = NULL
  where funds_raised = ' '
;
update s_pltn_dt
set GENDER
;
update s_pltn_dt
set DOB
;
update s_pltn_dt
set RIDE_YEARS
;
update s_pltn_dt
  set ID = null
  where id = ' '
;

-- 3. remove duplicates
delete t1
  FROM `s_pltn_dt` AS t1
  INNER JOIN `s_pltn_dt` AS t2
ON t1.id = t2.id
AND t1.DOB = t2.DOB
AND t1.FUNDS_RAISED = t2.FUNDS_RAISED
AND t1.GENDER = t2.GENDER
AND t1.LIVING_PROOF = t2.LIVING_PROOF
AND t1.RIDE_DISTANCE = t2.RIDE_DISTANCE
AND t1.RIDE_YEARS = t2.RIDE_YEARS
AND t1.RIDER_ID = t2.RIDER_ID
AND t1.`YEAR` = t2.`YEAR`
;
