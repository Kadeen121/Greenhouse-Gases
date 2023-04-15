/****** View Creation for Countries' GDP vs Meatcon vs GHG ******/
Go
Create or Alter view vw.MeatvsGDP 
as
SELECT con.Country
      ,[Year]
      ,[MeatConkgpercap]
      ,[GDPpercapita]
      ,[TGHGpercapita]
      ,[Population]
  FROM [GHGandAGR].[f].[PerCap]pcp
       inner Join [dim].[Country] con
	    on con.Code = pcp.Code

