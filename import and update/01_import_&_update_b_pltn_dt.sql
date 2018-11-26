-- import & update code: BRONZE level

-- 1. create and load b_pltn_dt
CREATE TABLE b_pltn_dt
  (YEAR varchar, rider_id varchar, living_proof varchar, ride_distance smallint, funds_raised decimal, gender varchar, dob varchar, ride_years int, id int);

-- load from raw files (in this case, pre-combined raw files already loaded as a table)
INSERT INTO b_pltn_dt
  SELECT YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, ride_years, id
  FROM `pltn_dt`;
