/***Sector Country***/
SELECT [Code] as 'kCode'
      ,[Entity]
	  ,GETDATE() as 'Local'
      ,GETDATE() as 'UTC'
      ,DATEDIFF (hh, GETUTCDATE(), GETDATE()) as 'Offset'
FROM [GHGandAGR].[stg].[GHGbySector]
WHERE Entity  Not in ('Asia', 'Africa', 'Europe', 'European Union (27)', 'High-income countries',
                   'Low-income countries', 'Lower-middle-income countries', 'North America',
				   'Oceania', 'South Africa', 'Upper-middle-income countries', 'World')
Group by Entity, Code;

Go
SELECT [Code] as pkCode
       ,[Entity] as Country
	   ,GETDATE() as 'Local'
       ,GETDATE() as 'UTC'
       ,DATEDIFF (hh, GETUTCDATE(), GETDATE()) as 'Offset'
FROM [GHGandAGR].[stg].[TotalGHG]
WHERE Entity not in('Africa', 'Asia', 'Europe', 'European Union (27)', 'High-income countries', 'Low-income countries'
                     , 'Lower-middle-income countries', 'North America', 'Oceania', 'South America', 'Upper-middle-income countries'
					 , 'World')
Group by Entity, Code;

Go
SELECT Code
       ,[metEntity] as 'Country'    
	   ,GETDATE() as 'Local'
       ,GETDATE() as 'UTC'
       ,DATEDIFF (hh, GETUTCDATE(), GETDATE()) as 'Offset'
FROM [GHGandAGR].[stg].[PerCapita]
Group by [metEntity], code
