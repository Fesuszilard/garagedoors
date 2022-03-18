   --Create login for select, insert , update ,delete
USE master;
GO
CREATE LOGIN  [karcagi.nicoletta@gmail.com] WITH PASSWORD=N'karcagi', 
DEFAULT_DATABASE=GARAGEDOORS;
GO
USE GARAGEDOORS;
GO
CREATE USER [karcagi.nicoletta@gmail.com] FOR LOGIN [karcagi.nicoletta@gmail.com];
GO
ALTER ROLE db_datareader ADD MEMBER [karcagi.nicoletta@gmail.com];
GO
ALTER ROLE db_datawriter ADD MEMBER [karcagi.nicoletta@gmail.com];
GO


USE master;
GO
CREATE LOGIN  [halmos.aron@gmail.com] WITH PASSWORD=N'halmos', 
DEFAULT_DATABASE=GARAGEDOORS;
GO
USE GARAGEDOORS;
GO
CREATE USER [halmos.aron@gmail.com] FOR LOGIN [halmos.aron@gmail.com];
GO
ALTER ROLE db_datareader ADD MEMBER [halmos.aron@gmail.com];
GO
ALTER ROLE db_datawriter ADD MEMBER [halmos.aron@gmail.com];
GO


--ddl admin
USE [master];
GO
CREATE LOGIN [rancso.imre@gmail.com] WITH PASSWORD=N'Rancso', DEFAULT_DATABASE=GARAGEDOORS;
GO
USE GARAGEDOORS;
GO
CREATE USER [rancso.imre@gmail.com] FOR LOGIN [rancso.imre@gmail.com];
GO
ALTER ROLE db_datareader ADD MEMBER [rancso.imre@gmail.com];
GO
ALTER ROLE db_datawriter ADD MEMBER [rancso.imre@gmail.com];
GO
ALTER ROLE db_ddladmin ADD MEMBER [rancso.imre@gmail.com];
GO

--create application role

USE GARAGEDOORS;
GO
CREATE APPLICATION ROLE appTest WITH DEFAULT_SCHEMA = sales, PASSWORD = N'Test';
GO
GRANT INSERT ON sales.orders TO appTest;
GO
GRANT SELECT ON sales.orders TO appTest;
GO
GRANT UPDATE ON sales.orders TO appTest;
GO
GRANT DELETE ON sales.orders TO appTest;
GO
GRANT SELECT ON sales.order_items TO appTest;
GO
GRANT DELETE ON sales.order_items TO appTest;
GO
GRANT INSERT ON sales.order_items TO appTest;
GO
GRANT UPDATE ON sales.order_items TO appTest;
GO
GRANT EXECUTE ON sales.setdiscount TO appTest;
GO
GRANT DELETE ON sales.shop TO appTest;
GO
GRANT INSERT ON sales.shop TO appTest;
GO
GRANT SELECT ON sales.shop TO appTest;
GO
GRANT UPDATE ON sales.shop TO appTest;
GO
GRANT SELECT ON sales.purchaser_info TO appTest;
GO
GRANT DELETE ON sales.purchaser_info TO appTest;
GO
GRANT INSERT ON sales.purchaser_info TO appTest;
GO
GRANT UPDATE ON sales.purchaser_info TO appTest;
GO


