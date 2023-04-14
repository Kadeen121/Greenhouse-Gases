/****** View for country emission by sector ******/
GO
Create or Alter View GHGbySectandCon
AS
SELECT con.Entity
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
  FROM [GHGandAGR].[f].[Sectors] sec
       inner join [dim].[SecCountry] con
	    on sec.Code = con.kCode