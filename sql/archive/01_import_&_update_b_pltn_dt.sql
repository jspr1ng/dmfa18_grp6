-- import & update code: BRONZE level

-- 1. create and load b_pltn_dt
CREATE TABLE b_pltn_dt
  (YEAR varchar(255), rider_id varchar(255), living_proof varchar(255), ride_distance smallint, funds_raised decimal, gender varchar(255), dob varchar(255), ride_years smallint, id varchar(255));

-- load from raw files (in this case, pre-combined raw files already loaded as a table)
INSERT INTO b_pltn_dt
  SELECT YEAR, rider_id, living_proof, ride_distance, funds_raised, gender, dob, ride_years, id
  FROM `combined_pltn_dt`;-- 53,535
