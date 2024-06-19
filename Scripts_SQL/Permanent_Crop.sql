/* Probably you put other name to the data base so USE shoul be changed
 * This tables is to obtain the crops in different regions of PT in the level NUTS2
 * 
 */

USE dms_ine_v2;

SELECT 
    pc.NutsID, 
    pc.year, 
    pc.area, 
    pc.permanent_crop_ID, 
    pcn.crop_name,
    r.region_name,
    rl.region_level
FROM 
    permanent_crop pc
    JOIN permanent_crop_name pcn ON pc.pc_name_ID = pcn.pc_name_ID 
    JOIN region r ON pc.NutsID = r.NutsID
    JOIN region_level rl ON r.level_ID  = rl.level_ID 
WHERE
rl.region_level = 'NUTS2';


SELECT 
    pc.NutsID, 
    pc.year, 
    pc.area, 
    pc.permanent_crop_ID, 
    pcn.crop_name,
    r.region_name,
    rl.region_level
INTO OUTFILE 'C:/Users/cespe/OneDrive_J/OneDrive/Ejercicio 7/Documents/Documents/Analysis and Visualization/TF/Permanent_Crop_NUTS2.csv'
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
FROM 
    permanent_crop pc
    JOIN permanent_crop_name pcn ON pc.pc_name_ID = pcn.pc_name_ID 
    JOIN region r ON pc.NutsID = r.NutsID
    JOIN region_level rl ON r.NutsID = rl.NutsID
WHERE
    rl.region_level = 'NUTS2';



-- Dom's script
(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'pc.year',
    'pc.area',
    'pc.hold',
    'pcn.crop_name')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    pc.year,
    pc.area,
    pc.hold,
    pcn.crop_name
FROM
    permanent_crop pc
    JOIN permanent_crop_name pcn ON pc.pc_name_ID = pcn.pc_name_ID 
    JOIN region r ON pc.NutsID = r.NutsID
WHERE
    r.level_ID = 2
    AND pc.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Permanent_Crop_NUTS2_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';


(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'pc.year',
    'pc.area',
    'pc.hold',
    'pcn.crop_name')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    pc.year,
    pc.area,
    pc.hold,
    pcn.crop_name
FROM
    permanent_crop pc
    JOIN permanent_crop_name pcn ON pc.pc_name_ID = pcn.pc_name_ID 
    JOIN region r ON pc.NutsID = r.NutsID
WHERE
    r.level_ID = 4
    AND pc.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Permanent_Crop_NUTS4_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';


(SELECT
    'NutsID',
    'region_name',
    'NUTS_level',
    'pc.year',
    'pc.area',
    'pc.hold',
    'pcn.crop_name')
UNION
(SELECT
    r.NutsID,
    r.region_name,
    r.level_ID,
    pc.year,
    pc.area,
    pc.hold,
    pcn.crop_name
FROM
    permanent_crop pc
    JOIN permanent_crop_name pcn ON pc.pc_name_ID = pcn.pc_name_ID 
    JOIN region r ON pc.NutsID = r.NutsID
WHERE
    r.level_ID = 5
    AND pc.year = 2019)
INTO OUTFILE '/Users/dom/Green_Data_Science/AVCAD/avcad_final/CSVs/Permanent_Crop_NUTS5_2019.csv'
    FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\n';
