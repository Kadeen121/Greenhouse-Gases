/*** STAGING TABLES ***/

SELECT [Entity]
      ,[Code]
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
FROM [GHGandAGR].[stg].[GHGbySector]
WHERE Entity  Not in ('Asia', 'Africa', 'Europe', 'European Union (27)', 'High-income countries',
                   'Low-income countries', 'Lower-middle-income countries', 'North America',
				   'Oceania', 'South Africa', 'Upper-middle-income countries', 'World')
;

/***PerCapTable***/ 
/***As stacked C.T.E was done to obtain a particular outcome***/
WITH GDPperCap
AS
(SELECT [Entity]
      ,[Code]
      ,[Year]
      ,[GDPpercapita]
FROM [GHGandAGR].[stg].[GDPperCap]
Where [Year] between 2000 and 2019 and Entity  not in ('East Asia and Pacific', 'Europe and Central Asia', 'European Union'
                                                  , 'High income', 'Latin America and Caribbean', 'Low and middle income'
												  , 'Low income', 'Lower middle income', 'Middle East and North Africa'
												  , 'Middle income', 'North America', 'South Asia', 'Sub-Saharan Africa'
												  , 'Upper middle income', 'World')
), 
MeatConGDP
AS
(SELECT met.[Entity] as metEntity
      ,met.[Code]
      ,met.[Year] as metYear
      ,[MeatConkgpercap]
      ,[GDPpercap]
      ,[Population]
      ,[Continent]
FROM [GHGandAGR].[stg].[GDPMeatCon] met
where MeatConkgpercap is not NUll /*and GDPpercap is not NULL*/ and met.[Year] between 2000 and 2019 and met.Entity not in (SELECT [Entity]
                                                      FROM [GHGandAGR].[stg].[GDPMeatCon]
                                                      where [Year] between 2000 and 2019 and Entity like '%(FAO)' or Entity like '%(UN)')
), 
GHGperCap
AS 
(SELECT [Entity]
      ,[Code]
      ,[Year]
      ,[TGHGpercapita]
FROM [GHGandAGR].[stg].[GHGperCap]
WHERE [YEAR] between 2000 and 2019 and Code <> ''  and Entity <> 'World'
)
Select mcg.metEntity
      ,mcg.Code
	  ,mcg.[metYear]
	  ,mcg.[MeatConkgpercap]
	  ,gdp.GDPpercapita
	  ,ghg.TGHGpercapita
	  ,mcg.[Population]
From GDPperCap gdp
     inner join MeatConGDP mcg
	  on gdp.Code = mcg.Code
	  and gdp.[Year] = mcg.[metYear]
	 inner join GHGperCap ghg
	  on ghg.Code = mcg.Code
	  and ghg.[Year] = mcg.[metYear]