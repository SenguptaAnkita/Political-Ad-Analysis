	--Which advertiser had the most impressions i.e. >10M at least cost?
	
	SELECT CS.advertiser_name
	,GS.spend_usd
	FROM `bigquery-public-data.google_political_ads.advertiser_geo_spend`AS AGS 
	INNER JOIN `bigquery-public-data.google_political_ads.geo_spend`AS GS
	ON AGS.country = GS.country
	INNER JOIN  `bigquery-public-data.google_political_ads.creative_stats`AS CS 
	ON AGS.advertiser_name = CS.advertiser_name
	WHERE CS.impressions = "> 10M"
	ORDER BY GS.spend_usd DESC  
	LIMIT 1
