	--Which regions had less than 10k impressions?
	
	SELECT stats.regions 
	FROM `bigquery-public-data.google_political_ads.creative_stats`AS cread
	INNER JOIN `bigquery-public-data.google_political_ads.advertiser_stats`AS stats 
	ON cread.advertiser_id = stats.advertiser_id
	WHERE cread.impressions = "≤ 10k"
	group by stats.regions
