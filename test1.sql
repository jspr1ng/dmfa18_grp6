DECLARE @col
SET @col = (SELECT column_name FROM `tmp`);

DECLARE @counter
SET @counter = (SELECT id FROM `tmp`);

while @counter < 9

DECLARE @sql
SET @sql = 'select '

SELECT 
