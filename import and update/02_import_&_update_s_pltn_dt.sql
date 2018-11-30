-- import & update code: SILVER level

-- 1. create and load s_pltn_dt
CREATE TABLE s_pltn_dt
  (YEAR varchar(255), living_proof varchar(255), ride_distance smallint, funds_raised decimal, gender varchar(255), dob varchar(255), id varchar(255));

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

-- 3. remove rows with dob/gender inconsistencies
delete from s_pltn_dt
  where id  in
  (
  select p1.id  FROM `s_pltn_dt` AS p1
  INNER JOIN `s_pltn_dt` AS p2
  ON p1.id = p2.`id`
  WHERE p1.dob <> p2.`dob`
  OR	p1.`gender` <> p2.`gender`
  OR 	(p1.gender <> p2.gender AND p1.dob <> p2.dob)
  )
;
