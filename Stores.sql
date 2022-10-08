------Pulling Everything From The Fortune Database---
SELECT *
FROM ['Fortune 1000 Companies by Reven$']

----Top 5 
SELECT TOP 5 *
FROM ['Fortune 1000 Companies by Reven$']


 -------Getting The Unique Values From The Tabale-------
 SELECT DISTINCT [name ]
 FROM [fortune_1000].[dbo].['Fortune 1000 Companies by Reven$']
 ORDER BY 1 DESC
 
 ----------Checking to see if there is duplicates in the name coulumn
 SELECT [name ]-----No Dupilcates In The name coulmn
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 1 ASC
 
 ------Which Store Has The Most Employees----
 SELECT [name ], [employees ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 2 DESC


 --------Top 10 Stores Based On Market Value
 SELECT Top 10 [name ], [market_value ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 2 DESC ----Tableau Vizulization

 --------According to the companies revenues in the year 2021 how much profit each company and which one made the most
 SELECT [name ], [revenues ], [profits ], assets
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 2 DESC ----Tableau Vizulization

 ------Top 5 Companies Made The Least Profit In The Fortune 1000
 SELECT Top 5 [name ], [revenues ], [profits ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 3 ASC

 ------Companies Profits 
 SELECT [name ], [profits ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 2 DESC

 ------Which companies that had revenue but never provided or had a profits percentage change in the year 2021
 SELECT [name ], [revenues ], profits_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE profits_percent_change IS NULL
 ORDER BY 1 ASC

 -----Does the # of Employess see an effective change in company revenue?
 SELECT [name ], [revenues ], [profits ], [employees ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [revenues ] IS NOT NULL
 ORDER BY 2,4

 ----------Checking Each Row To see If There Are Nulls 
 ---Name Column (0 Nulls)
 SELECT [name ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [name ] IS NULL; 

 -----Revenue Column (0 NUlls)
 SELECT [revenues ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [revenues ] IS NULL;

 -----Revenue Percent Change (8 Nulls)
 SELECT revenue_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE revenue_percent_change IS NULL;

 ------Profits Column (3 Nulls)
 SELECT [profits ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [profits ] IS NULL;

 -----Profits Per Percentage (273 Nulls)
 SELECT profits_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE profits_percent_change IS NULL;

 -----Company Assest (0)
 SELECT assets
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE assets IS NULL;

 ----Market Value (45 Nulls)
 SELECT [market_value ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [market_value ] IS NULL;

 ----Employees (1 Null)

 SELECT [employees ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [employees ] IS NULL;

 -------The companies that didnt have or at least never provided a profit per percentage change in the previous year
 SELECT [name ], profits_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE profits_percent_change IS NULL
 ORDER BY 1 DESC-------(Possibly Tableau Vizulization)

 -----------The Companies That Showed Profit Percentage Change In The Pervious Year From Highest To Lowest
 SELECT [name ], profits_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE profits_percent_change IS NOT NULL 
 ORDER BY 2 DESC--------(Tableau Vizulization)

 ------Which Companies Had A Decline In Revenue Percent Change
 SELECT Top 128 [name ], [revenues ], revenue_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 3 ASC


 --------Seeing Which Companies That Exceeded Well, Poorly And Average In The Profit Category
 SELECT [name ], [profits ], profits_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 1,2 DESC
