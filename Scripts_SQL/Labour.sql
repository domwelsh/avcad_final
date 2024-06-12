(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'l.year',
    'l.value',
    'ltn.type_labour')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    l.year,
    l.value,
    ltn.type_labour
FROM
    labour l
    JOIN labour_type_name ltn ON l.lt_name_ID = ltn.lt_name_ID 
    JOIN region r ON l.NutsID = r.NutsID
WHERE
    r.level_ID = 2
    AND l.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Labour_NUTS2_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';
