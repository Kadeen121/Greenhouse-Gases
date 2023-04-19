/****** Script for SelectTopNRows command from SSMS  ******/

With PrevTE 
as
(
SELECT [Country]
      ,[Year] 
      ,[TotalGHG]
	  ,(LAG (TotalGHG) over (Partition by country order by [year] ASC)) as 'PrevYr'---/nullif(LAG (TotalGHG) over (Order by [Year] ASC)) as pctchn
      ,(TotalGHG - LAG (TotalGHG) over (Partition by country order by [year] ASC)) as Diff
	  ,[TotalByYr]
  FROM [GHGandAGR].[vw].[TotalGHG]
---order by country asc
)
select *
      ,Isnull((Diff/ NULLIF(PrevYr, 0))*100,0) as 'PerChan'
From PrevTE 
--where Year  1990

--NULLIF(income-expenses, 0)




---(revenue - LAG (revenue) OVER (Partition by ORDER BY month ASC))/LAG (revenue) OVER (ORDER BY month ASC)*100 AS revenue_percentage_growth.
