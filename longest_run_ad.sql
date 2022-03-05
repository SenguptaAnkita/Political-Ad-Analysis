	--Which ad ran longest and for how many days?
	
	SELECT max(num_of_days) AS LONGEST_RUN_AD
	, advertiser_name
	FROM `bigquery-public-data.google_political_ads.creative_stats`
	GROUP BY advertiser_name 
	order by LONGEST_RUN_AD desc LIMIT 1
