delete t1
  FROM `b_pltn_dt` AS t1
  INNER JOIN `b_pltn_dt` AS t2
ON t1.id = t2.id
AND t1.DOB = t2.DOB
AND t1.FUNDS_RAISED = t2.FUNDS_RAISED
AND t1.GENDER = t2.GENDER
AND t1.LIVING_PROOF = t2.LIVING_PROOF
AND t1.RIDE_DISTANCE = t2.RIDE_DISTANCE
AND t1.RIDE_YEARS = t2.RIDE_YEARS
AND t1.RIDER_ID = t2.RIDER_ID
AND t1.`YEAR` = t2.`YEAR`
