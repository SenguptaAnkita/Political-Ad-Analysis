	--How many ad campaigns targeted the youth in their agenda?
	
	SELECT COUNT(age_targeting) AS Youth_Targeted
	FROM `bigquery-public-data.google_political_ads.creative_stats`
	WHERE age_targeting LIKE "%18-24%"
