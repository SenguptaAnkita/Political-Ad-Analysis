--Total ads by each political ad agency for the US Federal Elections of 2018

SELECT AWS.advertiser_name
,SUM(ADS.total_creatives) AS Total_Ads_Runs
FROM `bigquery-public-data.google_political_ads.advertiser_stats` AS ADS
INNER JOIN `bigquery-public-data.google_political_ads.advertiser_weekly_spend`AS AWS 
ON ADS.advertiser_id = AWS.advertiser_id 
WHERE AWS.election_cycle = "US-Federal-2018"
GROUP BY AWS.election_cycle, AWS.advertiser_name
ORDER BY Total_Ads_Runs DESC 
