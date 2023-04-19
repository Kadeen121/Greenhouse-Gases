USE [GHGandAGR]
GO

/****** Object:  View [vw].[TotalGHG]    Script Date: 2023-04-18 12:42:53 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




CREATE OR ALTER         View [vw].[TotalGHG]
AS
with PrevTE
as
(
SELECT (CASE
	        WHEN con.Country = 'United States' THEN 'United States of America'
			WHEN con.Country like 'Cote d%' THEN 'Ivory Coast'
			WHEN con.Country = 'Democratic Republic of Congo' THEN 'Democratic Republic of the Congo'
			WHEN con.Country = 'Congo' THEN 'Republic of the Congo'
			WHEN con.Country = 'Tanzania' THEN 'United Republic of Tanzania'
	--		WHEN Country = 'Somalia' THEN 'Somalia'
	--		WHEN Country = '' THEN ''
	        ELSE con.Country
		END) as 'Country'
      ,CAST([YEAR] as  smallint) as  [Year]
      ,[TotalGHG]
	  ,sum([TotalGHG])over (PARTITION by [Year]) as TotalByYr
	  ,(LAG (TotalGHG) over (Partition by country order by [year] ASC)) as 'PrevYr'---/nullif(LAG (TotalGHG) over (Order by [Year] ASC)) as pctchn
      ,(TotalGHG - LAG (TotalGHG) over (Partition by country order by [year] ASC)) as Diff
FROM [GHGandAGR].[f].[GHGTotal] ghg
     inner join  [dim].[GHGCountry] con
	  on con.pkCode = ghg.Code
)
select *
      ,Isnull((Diff/ NULLIF(PrevYr, 0)),0) as 'PerChan'
From PrevTE 

GO


