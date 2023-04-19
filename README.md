# Greenhouse-Gases  ![GHG](/pics/GHG.png)
## Introduction
The greenhouse gases warms the planet causing a myriad of issues, some includes the  melting of  ice caps and extreme weather events, such as heat waves, droughts, blizzards and rainstorms.  This has a devastating effect on the planet, especially the on the nations that are developing and underdeveloped as they do not have the resource to combat the effects from climate change which is caused by greenhouse gases. In this project explore greenhouse gas emissions  from 1990 to 2019, what industries  are producing the most greenhouse gases and attempt to build a model which will help give us clues in lowering GHG in the future.  

## Objective 
> * Explore total GHG emissions from 1990 to 2019 by country.
> * Explore the sectors that contribute to the production of GHG by countries. 
> * Explore the effects of Agriculture of certain products has on GHG, particularly cows.
> * Explore the countries GDP per capita  in comparison consumption of meat(Beef) to see the correlation.
> * Create a model that will  attempt to predict how much of certain agricultural products can be produced to have lessen the GHG emission.
> * Use appropriate, clear visualizations to tell the data story. 
> * Use both Python and SQL to do data cleaning and mart creation.

## Problem Statement
Global emission of  greenhouse gases  has significantly increase in since the latter part of the 1900s.Measured data show that global temperatures, as well as greenhouse gas (nitrous oxide – N2O; carbon dioxide – CO2; methane – CH4) emissions are rising. 

Since the 1970s Carbon dioxide emissions have increased by remarkably due to fossil fuels combustion and the rise of industrialization in many countries. Many countries invest heavily in industrialization as a way to increase the GDP for their country and also to secure a bright future for generations to come. In a world  where the producer of the cheaper product always wins, alternative fuel source will push certain emerging economies(developing countries) out of the market, as the initial cost is high. 

Agriculture contributes about  20-25% of total greenhouse gas emissions. This is so because most emissions come from the methane produced by livestock,  mainly ruminants ( cows, goats and sheep) husbandry. More industrialized farm will produce more greenhouse gases, as they  have equipments producing carbon dioxide,  nitrogen fertilizer, etc. There are also off-farm emissions like transportation, food processing distributing, etc. Individual consumption increases even more when their wages ( the economy gets better - GDP) increase especially meat consumption. 

Addressing this GHG, more specifically from Agriculture, issue will  requires a comprehensive approach that may  includes changing the way we eat and also the way we farm. This may be a necessary step to decrease our individual emissions  in efforts to  mitigate the impacts of climate change and promote a more sustainable future for all.

## Data 
 ### The following are the source where the data was retrieved (click the link)

[Greenhouse Gases Emissions by Sector](https://ourworldindata.org/grapher/ghg-emissions-by-sector).

[Total Greenhouse Gases Emissions](https://ourworldindata.org/grapher/total-ghg-emissions)

[Greenhouse Gases Emissions per Kilogram of Food](https://ourworldindata.org/grapher/ghg-per-kg-poore)

[GDP Per Capita](https://ourworldindata.org/grapher/gdp-per-capita-worldbank)

[Agriculture: Drivers of Emission](https://www.climatewatchdata.org/sectors/agriculture?emissionType=203&filter=#drivers-of-emissions)

## Use Case 
 This research may be used by any government agencies to want to asses their country's or region's overall emissions levels . Also a food processing plants looking to become more "green". Also with the model it may be used by an individual  looking to lower their GHG footprint.

## Scope 
At first there will be an overall look at  GHG emissions by country, over a period of 1990 to 2019.  Then, an assessment of the emissions produced by sectors, where a deeper assessment will be done on agricultural emission. Given that the largest emissions emission comes from cows, there will be a comparison of GDP  per capita to cow product consumption. The final piece will be a model predicting emissions from cow product(beef and dairy).

## The First Draft (What I have been up to!)
### Data Cleaning and Exploration. 
The first to step to any successful data project to clean data. The data was relatively clean, however, there was a lot of nulls and different grains. This was a big NO NO!!
So in the draft I will demonstrate how I cleaned the data use Pandas, SSMS and Visual Studios. The aim was show that no matter what tool you use you can do successful Extract Transform and Load one you pay keen attention and use Kimball Rules.  

### SSMS
I use SSMS to test most of the codes that i used in the build the table and load the data. It was quite interesting because  I had to use stacked C.T.E in make my Per Capita staging Table. 

Here is how I did it! 

[![SSMS Logo](/pics/ssms.jpg)](https://github.com/Kadeen121/Greenhouse-Gases/tree/main/SSMS)

### PANDAS
This was quite fun, as I played with pandas to clean and build this PerCap table 

Here is how I did it!

[![Pandas Logs](/pics/pandas.png)](https://github.com/Kadeen121/Greenhouse-Gases/blob/main/MeatConsumptionDimCreation.ipynb)

### Visual Studios
I made a SSIS package  which was done by the SQL code above

Here is how I did it!

[![Visual Studio Logs](/pics/visualstudio.png)](https://github.com/Kadeen121/Greenhouse-Gases/tree/main/GHGVisualStudios)

[# FINAL READ ME ](https://github.com/Kadeen121/Greenhouse-Gases/blob/main/READMEFINAL.md)
