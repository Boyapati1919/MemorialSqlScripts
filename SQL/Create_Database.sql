IF NOT EXISTS (SELECT * FROM master.sys.databases 
          WHERE name='Memorial')
BEGIN
CREATE DATABASE Memorial
END