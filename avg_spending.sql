--What is the average spending in an election cycle for India and USA?
	SELECT ADS.elections, 
	SUM(GS.spend_usd) AS Avg_Amt_Spent
	FROM `bigquery-public-data.google_political_ads.geo_spend`AS GS
	INNER JOIN `bigquery-public-data.google_political_ads.advertiser_stats` AS ADS
	ON GS.country = ADS.regions
	WHERE  ADS.elections IS NOT NULL 
	GROUP BY ADS.elections
	ORDER BY Avg_Amt_Spent DESC 
