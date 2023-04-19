/****** Script for SelectTopNRows command from SSMS  ******/
--Create or Alter  view StgSECpct
--as
With CTESECT
as 
(
SELECT [Entity]
      ,[Year]
      ,[Agriculture]
	  ,sum([Agriculture])over (PARTITION by [Year] ) as AgricultureT
      ,[LandandForestry]
	  ,sum([LandandForestry])over (PARTITION by [Year] ) as LandandForestryT 
      ,[Waste]
	  ,sum([Waste])over (PARTITION by [Year] ) as WasteT
      ,[Industry]
	  ,sum([Industry])over (PARTITION by [Year] )as IndustryT
      ,[ManandConstr] 
	  ,sum([ManandConstr])over (PARTITION by [Year] ) as ManandConstrT
      ,[Transport]
	  ,sum([Transport])over (PARTITION by [Year] ) as TransportT
      ,[Electricity]
	  ,sum([Electricity])over (PARTITION by [Year] ) as ElectricityT
      ,[Buildings]
	  ,sum([Buildings])over (PARTITION by [Year] ) as BuildingsT
      ,[Fugitiveemissions]
	  ,sum([Fugitiveemissions])over (PARTITION by [Year] ) as FugitiveemissionsT
      ,[Otherfuelcombust]
	  ,sum([Otherfuelcombust])over (PARTITION by [Year] ) as OtherfuelcombustT
      ,[Aviationandship]
	  ,sum([Aviationandship])over (PARTITION by [Year] ) as AviationandshipT
      ,[Total Emission]
	  ,sum([Total Emission])over (PARTITION by [Year] ) as [Total EmissionT]
  FROM [GHGandAGR].[dbo].[GHGbySectandCon]
)
Select [Year]
      ,AVG(AgricultureT) as Agriculture
      ,AVG(LandandForestryT ) as LandandForestry
	  ,AVG(WasteT) as Waste
	  ,AVG(IndustryT) as Industry
	  ,AVG(ManandConstrT) as ManandConstr
	  ,AVG(TransportT) as  Transport
	  ,AVG(ElectricityT) as Electricity
	  ,AVG(BuildingsT) as Buildings
	  ,AVG(FugitiveemissionsT) as Fugitiveemissions
	  ,AVG(OtherfuelcombustT) as therfuelcombust
	  ,AVG(AviationandshipT) as Aviationandship
From CTESECT
Group by [Year]