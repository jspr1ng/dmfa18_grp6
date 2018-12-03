-- QA code: remove blanks, replace with NULL
-- js 2018-11-05

UPDATE pltn_dt
SET YEAR = NULL
WHERE YEAR = ''
;
UPDATE pltn_dt
SET rider_id = NULL
WHERE rider_id = ''
;
UPDATE pltn_dt
SET living_proof = NULL
WHERE living_proof = ''
;
UPDATE pltn_dt
SET funds_raised = NULL
WHERE funds_raised = ''
;
UPDATE pltn_dt
SET gender = NULL
WHERE gender = ''
;
UPDATE pltn_dt
SET dob = NULL
WHERE dob = ''
;
UPDATE pltn_dt
SET ride_years = NULL
WHERE ride_years = ''
;
UPDATE pltn_dt
SET YEAR = NULL
WHERE YEAR = ''
;
UPDATE pltn_dt
SET id = NULL
WHERE id = ''
;
