-- import & update final_pltn_dt
-- js 2018-12-01

-- 1. create table drop table final_pltn_dt
CREATE TABLE final_pltn_dt
	(YEAR varchar(255), living_proof varchar(255), ride_distance smallint, funds_raised decimal, gender varchar(255), dob varchar(255), id varchar(255), return_rider varchar(255), bin_funds_raised varchar(255));

-- 2. load table
INSERT INTO final_pltn_dt
SELECT YEAR, living_proof, ride_distance, funds_raised, gender, dob, id, 'n/a', 'n/a'
FROM `Combined_pltn_dt`;

-- 3. update table for 2 new columns
-- bins(category): 0-1000, 100-1500, 1500-2500, 2500-5000, 5000-7500, 7500-10000, 10000+
UPDATE final_pltn_dt
SET bin_funds_raised =
CASE
WHEN  funds_raised < 1000 OR `funds_raised` IS NULL THEN "< $1,000"
WHEN funds_raised >=1000 AND funds_raised <1500 THEN "$1,000-$1,499.99"
WHEN funds_raised >=1500 AND funds_raised <2500 THEN "$1,500-$2,499.99"
WHEN funds_raised >=2500 AND funds_raised <5000 THEN "$2,500-$4,999.99"
WHEN funds_raised >=5000 AND funds_raised <7500 THEN "$5,000-$7,499.99"
WHEN funds_raised >=7500 AND funds_raised <10000 THEN "$7,500-$9,999.99"
WHEN funds_raised >=10000 THEN "> $10,000"
END
;

-- 5. update return_rider field
-- y/n(category) field WHERE id occurs FOR MORE than 1 YEAR
UPDATE `final_pltn_dt`
SET return_rider =
CASE
WHEN id IN (SELECT id FROM `final_pltn_dt` GROUP BY id HAVING count(id)>1) THEN "Y"
ELSE "N"
END
;
