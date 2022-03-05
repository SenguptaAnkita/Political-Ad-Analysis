	--Advertisers of 10 most recent ads that had over 10 million impressions
SELECT distinct (advertiser_name) AS Advertiser_Name
,date_range_end AS Recent_Ad_Run
, ad_url AS Ad_URL
FROM `bigquery-public-data.google_political_ads.creative_stats`
where impressions = "> 10M" 
ORDER BY date_range_end desc LIMIT 10
