/****Fact table DDL****/
go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'GHGTotal'
)

exec('CREATE TABLE [f].[GHGTotal] (
    [Code] varchar(10),
    [Year] bigint,
    [TotalGHG] float,

CONSTRAINT fkghgCountry FOREIGN KEY (Code)
REFERENCES dim.GHGCountry(pkCode) 
)'
);
Go 
--Truncate Table [f].[GHGTotal]

GO
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'PerCap'
)

exec('CREATE TABLE [f].[PerCap] (
    [Code] varchar(11),
    [Year] bigint,
    [MeatConkgpercap] float,
    [GDPpercapita] float,
    [TGHGpercapita] float,
    [Population] bigint,

CONSTRAINT fkCountry FOREIGN KEY (Code)
REFERENCES dim.Country(Code) 
)'
);
Go 
---Truncate Table [f].[PerCap]
Go
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'Sectors'
)

exec('CREATE TABLE [f].[Sectors] (
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

CONSTRAINT fk_SecCountry FOREIGN KEY (Code)
REFERENCES [dim].[SecCountry](kCode) 
)'
);
Go 
---Truncate Table [f].[Sectors]