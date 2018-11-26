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
/*
-- DEV - 3. duplicate detection
delete from s_pltn_dt
  where id in (
    select t1.id
    from s_pltn_dt as t1
    inner join s_pltn_dt as t2
    on t1.id = t2.id
    and t1.year = t2.year

  )
*/
