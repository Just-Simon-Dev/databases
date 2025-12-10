-- CASCADE UPDATE TEST

SELECT Catalog_ID, Name, Galaxy_ID
FROM Objects
WHERE Galaxy_ID = 'NGC 7003';

UPDATE Galaxies
SET Catalog_ID = 'GALAXY_UPDATED'
WHERE Catalog_ID = 'NGC 7003';

SELECT Catalog_ID, Name, Galaxy_ID
FROM Objects
WHERE Galaxy_ID = 'GALAXY_UPDATED';

-- CASCADE DELETE TEST

SELECT 'Objects' AS TableName, Count(*) AS Count FROM Objects WHERE Catalog_ID = 'OBJ_020'
UNION ALL
SELECT 'Events', Count(*) FROM Events WHERE Object_ID = 'OBJ_020'

DELETE FROM Objects WHERE Catalog_ID = 'OBJ_020';

SELECT 'Objects' AS TableName, Count(*) AS Count FROM Objects WHERE Catalog_ID = 'OBJ_020'
UNION ALL
SELECT 'Events', Count(*) FROM Events WHERE Object_ID = 'OBJ_020';