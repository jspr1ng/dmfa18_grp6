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
