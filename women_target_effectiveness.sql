--Did targeting only women imply more impression?
	
	SELECT gender_targeting  
	,COUNT(impressions) AS Ad_Reach
	FROM `bigquery-public-data.google_political_ads.creative_stats`
	WHERE NOT impressions = "≤ 10k" 
	AND gender_targeting = "Female"
	OR gender_targeting = "Not targeted"
GROUP BY gender_targeting
