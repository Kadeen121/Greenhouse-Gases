/****Country Dimension****/

IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'GHGCountry'
)

exec('CREATE TABLE [dim].[GHGCountry] (
    [pkCode] varchar(10),
    [Country] varchar(50)
	CONSTRAINT PK_ghgCountry PRIMARY KEY (pkCode ASC)
)'
);
Go 



IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'eGHGCountry'
)

exec('CREATE TABLE [err].[eGHGCountry] (
    [pkCode] varchar(10),
	[Country] varchar(50),
    [Local] datetime,
    [UTC] datetime,
    [Offset] int
)'
);
Go 

IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'SecCountry'
)

exec('CREATE TABLE [dim].[SecCountry] (
    [kCode] varchar(10),
    [Entity] varchar(50),
   
	CONSTRAINT PK_SecCountry PRIMARY KEY (kCode ASC)
)'
);
Go 



IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'eSecCountry'
)

exec('CREATE TABLE [err].[eSecCountry] (
    [kCode] varchar(10),
    [Entity] varchar(50),
    [Local] datetime,
    [UTC] datetime,
    [Offset] int
)'
);
Go 
IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'Country'
)

exec('CREATE TABLE [dim].[Country] (
      [Code] varchar(11),
	  [Country] varchar(50)

CONSTRAINT PK_Country PRIMARY KEY (Code ASC)
)'
);
Go 

IF NOT EXISTS (SELECT TABLE_NAME 
      FROM [GHGandAGR].INFORMATION_SCHEMA.TABLES 
            WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_NAME = 'eCountry'
)

exec('CREATE TABLE [err].[eCountry] (
      [Code] varchar(11),
	  [Country] varchar(50),
	 Local_Time datetime NULL,
	 UTC datetime NULL,
	 Offset int NULL
	 
)'
);
Go 