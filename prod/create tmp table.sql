-- create, load temp table
-- js 2018-11-17

-- tmp table for loading column names from dynamic sql QA code
CREATE TABLE `tmp`
	(
	`id` INTEGER,
	`col_name` text
	);

	--drop table tmp_pltn_dt
	--DELETE FROM tmp

	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(1, 'year');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(2, 'rider_id');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(3, 'living_proof');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(4, 'ride_distance');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(5, 'gender');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(6, 'dob');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(7, 'ride_years');
	INSERT INTO `tmp`
	(`id`, `col_name`)
	VALUES(8, 'id');

	SELECT * FROM tmp
