-- import and update code for exclusions table

-- 1. create table e_pltn_dt
CREATE TABLE e_pltn_dt
  (id int, exclusion_reason varchar(max));

-- 1. Load excluded ids and rationale

-- 1.a. Possible DOB id's
insert into e_pltn_dt
  SELECT p1.id, 'possible DOB mismatch'
  FROM `pltn_dt` AS p1
  INNER JOIN `pltn_dt` AS p2
  ON p1.id = p2.`id`
  WHERE (
    p1.dob <> p2.`dob` 		-- 144 rows
    AND
    p1.`gender` = p2.`gender` 	-- 144 rows
        )
  OR
        (
    p1.dob = p2.`dob` 		-- 144 rows
    AND
    p1.`gender` <> p2.`gender` 	-- 144 rows
        )
