SELECT *
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_catalog = 'HEALTHWAY_DB' -- the database
   AND table_name = 'HWOrder'
   ORDER BY COLUMN_NAME
