-- Create bronze, silver, gold level table
-- js 2018-11-17

--bronze level: data as is, combined from raw files
CREATE TABLE b_pltn_dt (LIKE `pltn_dt`);
INSERT INTO b_pltn_dt
  SELECT * FROM `pltn_dt`;

--silver level: data quality remediation transformations applied
CREATE TABLE s_pltn_dt (LIKE `pltn_dt`);
INSERT INTO s_pltn_dt
  SELECT * FROM `pltn_dt`;

--gold level: data scoped
CREATE TABLE g_pltn_dt (LIKE `pltn_dt`);
INSERT INTO g_pltn_dt
  SELECT * FROM `pltn_dt`;
