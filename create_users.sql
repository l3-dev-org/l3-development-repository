--using master

/*Rodrigo*/
CREATE LOGIN rmoraes WITH PASSWORD = 'Change123!'
GO

--using l3dbadm
CREATE USER rmoraes FOR LOGIN rmoraes WITH DEFAULT_SCHEMA = dbo
GO
ALTER ROLE db_datareader ADD MEMBER rmoraes; 
ALTER ROLE db_datawriter ADD MEMBER rmoraes; 

/*Bernardo*/
CREATE LOGIN baguiar WITH PASSWORD = 'Change123!'
GO
CREATE USER baguiar FOR LOGIN baguiar WITH DEFAULT_SCHEMA = dbo
GO
ALTER ROLE db_datareader ADD MEMBER baguiar; 
ALTER ROLE db_datawriter ADD MEMBER baguiar; 


/*Juan*/
CREATE LOGIN jmontealegre WITH PASSWORD = 'Change123!'
GO
CREATE USER jmontealegre FOR LOGIN jmontealegre WITH DEFAULT_SCHEMA = dbo
GO
ALTER ROLE db_datareader ADD MEMBER jmontealegre; 
ALTER ROLE db_datawriter ADD MEMBER jmontealegre; 


/*Luis*/
CREATE LOGIN lgomez WITH PASSWORD = 'Change123!'
GO
CREATE USER lgomez FOR LOGIN lgomez WITH DEFAULT_SCHEMA = dbo
GO
ALTER ROLE db_datareader ADD MEMBER lgomez; 
ALTER ROLE db_datawriter ADD MEMBER lgomez; 



/*Nicolas*/
CREATE LOGIN nlopez WITH PASSWORD = 'Change123!'
GO
CREATE USER nlopez FOR LOGIN nlopez WITH DEFAULT_SCHEMA = dbo
GO
ALTER ROLE db_datareader ADD MEMBER nlopez; 
ALTER ROLE db_datawriter ADD MEMBER nlopez; 

/*Victor*/
CREATE LOGIN vfarias WITH PASSWORD = 'Change123!'
GO
CREATE USER vfarias FOR LOGIN vfarias WITH DEFAULT_SCHEMA = dbo
GO
ALTER ROLE db_datareader ADD MEMBER vfarias; 
ALTER ROLE db_datawriter ADD MEMBER vfarias; 

