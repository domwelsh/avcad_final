(SELECT
    'NutsID',
    'Region Name',
    'NUTS ID',
    'p.year',
    'p.value_eur',
    'p.area_ha')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    p.year,
    p.value_eur,
    p.area_ha
FROM
    production p
    JOIN region r ON p.NutsID = r.NutsID
WHERE
    r.level_ID = 2
    AND p.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Production_NUTS2_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';