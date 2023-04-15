/***Fact Table***/

---Total GHG Fact Table 
SELECT [Code]
      ,[Year]
      ,[TotalGHG]
FROM [GHGandAGR].[stg].[TotalGHG]
WHERE Entity not in('Africa', 'Asia', 'Europe', 'European Union (27)', 'High-income countries', 'Low-income countries'
                     , 'Lower-middle-income countries', 'North America', 'Oceania', 'South America', 'Upper-middle-income countries'
					 , 'World')
;

--PerSector GHG Fact Table 
Go 
SELECT [Code]
      ,[Year]
      ,[Agriculture]
      ,[LandandForestry]
      ,[Waste]
      ,[Industry]
      ,[ManandConstr]
      ,[Transport]
      ,[Electricit]
      ,[Buildings]
      ,[Fugitiveemissions]
      ,[Otherfuelcombust]
      ,[Aviationandship]
  FROM [GHGandAGR].[stg].[Sector]
  ;

--GHG Vs Meat consumption vs GDP Fact Table 
go
SELECT [Code]
      ,[metYear] as [Year]
      ,[MeatConkgpercap]
      ,[GDPpercapita]
      ,[TGHGpercapita]
      ,[Population]
  FROM [GHGandAGR].[stg].[PerCapita]
