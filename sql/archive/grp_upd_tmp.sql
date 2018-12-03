--
CREATE TABLE `s_pltn_dt`
(YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, id)
INSERT INTO `s_pltn_dt`
	SELECT YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, id
	FROM 	`b_pltn_dt`
-- OR --
ALTER TABLE `s_pltn_dt`
	DROP COLUMN ride_years
;

SELECT "Distinct" AS ct_type, COUNT(DISTINCT(id)) AS ct
FROM b_pltn_dt
WHERE year = '2010'
UNION
SELECT "Non-distinct count", COUNT(id)
FROM `b_pltn_dt`
WHERE year = '2010'
;

--DELETE FROM `g_pltn_dt`
SELECT count(*) FROM `g_pltn_dt`
WHERE FUNDS_RAISED = '0'
--OR FUNDS_RAISED IS NULL
;

SELECT id, count(id)
FROM `b_pltn_dt`
WHERE id IS NOT NULL
GROUP BY id
HAVING COUNT(id) > 1
ORDER BY count(id) DESC
;

SELECT count(*)
FROM `b_pltn_dt`
WHERE id IS NOT NULL
--GROUP BY id
HAVING COUNT(id) > 1
--ORDER BY count(id) desc
