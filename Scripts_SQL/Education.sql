(SELECT
    'NutsID',
    'Region Name',
    'NUTS ID',
    'e.year',
    'e.value',
    'el.education_level')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    e.year,
    e.value,
    el.education_level
FROM
    education e
    JOIN education_level el ON e.education_level_ID = el.education_level_ID
    JOIN region r ON e.NutsID = r.NutsID
WHERE
    r.level_ID = 2
    AND e.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Education_NUTS2_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';
