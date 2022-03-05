	--How many ads targeted women?
	
	SELECT COUNT(gender_targeting) AS Female_Targeted
	FROM `bigquery-public-data.google_political_ads.creative_stats`
	WHERE gender_targeting LIKE '%Female%'
