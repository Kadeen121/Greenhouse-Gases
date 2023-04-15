/*****Creating the Staging Tables *****/
Go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM GHGandAGR.INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'TotalGHG'
)

exec('CREATE TABLE [stg].[TotalGHG] (
    [Entity] varchar(50),
    [Code] varchar(10),
    [Year] bigint,
    [TotalGHG] float
)'
);
Go
--Truncate Table [stg].[TotalGHG];

Go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM GHGandAGR.INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'GHGbySector'
)

exec('CREATE TABLE [stg].[GHGbySector] (
    [Entity] varchar(50),
    [Code] varchar(10),
    [Year] bigint,
    [Agriculture] float,
    [LandandForestry] float,
    [Waste] float,
    [Industry] float,
    [ManandConstr] float,
    [Transport] float,
    [Electricit] float,
    [Buildings] float,
    [Fugitiveemissions] float,
    [Otherfuelcombust] float,
    [Aviationandship] float
)'
);
Go
--Truncate Table [stg].[GHGbySector];
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'Sector'
)

exec('CREATE TABLE [stg].[Sector] (
    [Entity] varchar(50),
    [Code] varchar(10),
    [Year] bigint,
    [Agriculture] float,
    [LandandForestry] float,
    [Waste] float,
    [Industry] float,
    [ManandConstr] float,
    [Transport] float,
    [Electricit] float,
    [Buildings] float,
    [Fugitiveemissions] float,
    [Otherfuelcombust] float,
    [Aviationandship] float
)'
);
Go 
--Truncate Table [stg].[Sector]
Go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM GHGandAGR.INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'GDPperCap'
)

exec('CREATE TABLE [stg].[GDPperCap] (
    [Entity] varchar(50),
    [Code] varchar(10),
    [Year] bigint,
    [GDPpercapita] float
)'
);
Go
--Truncate Table [stg].[GDPperCap];
Go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM GHGandAGR.INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'GDPMeatCon'
)

exec('CREATE TABLE [stg].[GDPMeatCon] (
    [Entity] varchar(11),
    [Code] varchar(8),
    [Year] bigint,
    [MeatConkgpercap] float,
    [GDPpercap] float,
    [Population] bigint,
    [Continent] varchar(4)
)'
);
Go
--Truncate Table [stg].[GDPMeatCon];
Go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM GHGandAGR.INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'GHGperCap'
)

exec('CREATE TABLE [stg].[GHGperCap] (
    [Entity] varchar(50),
    [Code] varchar(11),
    [Year] bigint,
    [TGHGpercapita] float
)'
);
Go
---Truncate Table [stg].[GHGperCap];
