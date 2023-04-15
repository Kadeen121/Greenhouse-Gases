/****** This how the view was created for Total GHG emission by country******/
Go
Create or Alter View vw.TotalGHG
AS
SELECT con.Country
      ,[Year]
      ,[TotalGHG]
FROM [GHGandAGR].[f].[GHGTotal] ghg
     inner join  [dim].[GHGCountry] con
	  on con.pkCode = ghg.Code