--What is the average ads in an election cycle for India, EU and USA?
	SELECT elections
	, AVG(total_creatives) AS Total_Ads
	FROM `bigquery-public-data.google_political_ads.advertiser_stats`
	WHERE elections IS NOT NULL 
	GROUP BY elections
	ORDER BY Total_Ads DESC
