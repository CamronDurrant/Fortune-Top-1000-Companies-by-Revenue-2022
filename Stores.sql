------Pullijng Everything From The Fortune Database---
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


 --------Top 10 Stores That Has Store Has The Most Market Value
 SELECT Top 10 [name ], [market_value ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 2 DESC

 --------According to the companies revenues in the year 2021 how much profit each company and which one made the most
 SELECT [name ], [revenues ], [profits ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 3 DESC

 ------Which Company Made The Least Profit In The Fortune 1000
 SELECT Top 5 [name ], [revenues ], [profits ]
 FROM ['Fortune 1000 Companies by Reven$']
 ORDER BY 3 ASC

 ------Which companies that didn't see a profits percentage change in the year 2021
 SELECT [name ], [revenues ], profits_percent_change
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE profits_percent_change IS NULL
 ORDER BY 1 ASC

 -----Does the # of Employess see an effective change in company revenue?
 SELECT [name ], [revenues ], [profits ], [employees ]
 FROM ['Fortune 1000 Companies by Reven$']
 WHERE [revenues ] IS NOT NULL
 ORDER BY 2,4




 -----------CASE STAEMENT FOR AN UPCOMING QUESTION