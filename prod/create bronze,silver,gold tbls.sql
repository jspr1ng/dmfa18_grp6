-- Create bronze, silver, gold level table
-- js 2018-11-17

CREATE TABLE b_pltn_dt (LIKE `pltn_dt`);
INSERT INTO b_pltn_dt
  SELECT * FROM `pltn_dt`;

CREATE TABLE s_pltn_dt (LIKE `pltn_dt`);
INSERT INTO s_pltn_dt
  SELECT * FROM `pltn_dt`;

CREATE TABLE g_pltn_dt (LIKE `pltn_dt`);
INSERT INTO g_pltn_dt
  SELECT * FROM `pltn_dt`;
