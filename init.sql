CREATE DATABASE fffswebportalgis
GO
exec sp_configure 'contained database authentication', 1;
GO
RECONFIGURE;
GO
USE fffswebportalgis
GO
ALTER DATABASE fffswebportalgis SET CONTAINMENT = PARTIAL
GO
