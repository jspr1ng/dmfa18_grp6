-- import & update code: GOLD level

-- 1. create and load GOLD from SILVER for values:
  -- have more than one id (multiple years of ridership)
  -- funds_raised is not null, and greater than $0.00
CREATE TABLE g_pltn_dt (YEAR varchar(255), living_proof varchar(255), ride_distance SMALLINT, funds_raised decimal, gender varchar(255), dob_year varchar(255), id varchar(255));
INSERT INTO g_pltn_dt
  SELECT YEAR, living_proof, ride_distance, funds_raised, gender, right(dob,4), id
  FROM `s_pltn_dt`
  where id is not NULL
  and   (funds_raised > 0 and funds_raised is not null)
/*  AND id not in
(
  select p1.id  FROM `s_pltn_dt` AS p1
  INNER JOIN `s_pltn_dt` AS p2
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
)*/
;
-- 2. Remove id's with dob/gender mismatch (run until count=0)
delete from g_pltn_dt
  where id in
  (
    select p1.id  FROM `s_pltn_dt` AS p1
    INNER JOIN `s_pltn_dt` AS p2
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
  )
