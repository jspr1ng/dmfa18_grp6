-- import & update code: GOLD level

-- 1. create and load GOLD from SILVER for values:
  -- have more than one id (multiple years of ridership)
  -- funds_raised is not null, and greater than $0.00
CREATE TABLE g_pltn_dt
  (YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, id);
INSERT INTO g_pltn_dt
  SELECT YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, id
  FROM `s_pltn_dt`
  where id is not NULL
  and   (funds_raised > 0 and funds_raised is not null)
  having count(id)>1
  ;

-- 2. add column for quantile
-- populate later once decision has been made on quantile ranges
alter table g_pltn_dt
  add column "quantile" int
;

-- 3. add column for dob year, drop column DOB
alter table g_pltn_dt
  add column "y_dob" string
;
update g_pltn_dt
  set y_dob = right(dob,4)
  where dob is not null
;
alter table g_pltn_dt
  drop column dob
;
-- 4. remove duplicates
delete t1
  FROM `g_pltn_dt` AS t1
  INNER JOIN `g_pltn_dt` AS t2
ON t1.id = t2.id
AND t1.DOB = t2.DOB
AND t1.FUNDS_RAISED = t2.FUNDS_RAISED
AND t1.GENDER = t2.GENDER
AND t1.LIVING_PROOF = t2.LIVING_PROOF
AND t1.RIDE_DISTANCE = t2.RIDE_DISTANCE
AND t1.RIDE_YEARS = t2.RIDE_YEARS
AND t1.RIDER_ID = t2.RIDER_ID
AND t1.`YEAR` = t2.`YEAR`
