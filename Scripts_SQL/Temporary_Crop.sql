(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'tc.year',
    'tc.area',
    'tc.hold',
    'tcn.crop_name')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    tc.year,
    tc.area,
    tc.hold,
    tcn.crop_name
FROM
    temporary_crop tc
    JOIN temporary_crop_name tcn ON tc.tc_name_ID = tcn.tc_name_ID
    JOIN region r ON tc.NutsID = r.NutsID
WHERE
    r.level_ID = 2
    AND tc.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Temporary_Crop_NUTS2_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';


(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'tc.year',
    'tc.area',
    'tc.hold',
    'tcn.crop_name')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    tc.year,
    tc.area,
    tc.hold,
    tcn.crop_name
FROM
    temporary_crop tc
    JOIN temporary_crop_name tcn ON tc.tc_name_ID = tcn.tc_name_ID
    JOIN region r ON tc.NutsID = r.NutsID
WHERE
    r.level_ID = 4
    AND tc.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Temporary_Crop_NUTS4_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';


(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'tc.year',
    'tc.area',
    'tc.hold',
    'tcn.crop_name')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    tc.year,
    tc.area,
    tc.hold,
    tcn.crop_name
FROM
    temporary_crop tc
    JOIN temporary_crop_name tcn ON tc.tc_name_ID = tcn.tc_name_ID
    JOIN region r ON tc.NutsID = r.NutsID
WHERE
    r.level_ID = 5
    AND tc.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Temporary_Crop_NUTS5_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';