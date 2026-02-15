CREATE OR REPLACE TABLE `project-ce7efd4e-2514-4a62-807.improvado_assignment.mart_ads_unified` AS

-- FACEBOOK
SELECT
  DATE(date) AS date,
  'facebook' AS platform,
  campaign_id,
  campaign_name,
  ad_set_id AS ad_group_id,
  ad_set_name AS ad_group_name,
  impressions,
  clicks,
  spend,
  conversions,
  NULL AS conversion_value,
  video_views,
  reach,
  frequency,
  NULL AS likes,
  NULL AS shares,
  NULL AS comments,
  NULL AS quality_score,
  NULL AS search_impression_share
FROM `project-ce7efd4e-2514-4a62-807.improvado_assignment.raw_facebook_ads`

UNION ALL

-- GOOGLE
SELECT
  DATE(date) AS date,
  'google' AS platform,
  campaign_id,
  campaign_name,
  ad_group_id,
  ad_group_name,
  impressions,
  clicks,
  cost AS spend,
  conversions,
  conversion_value,
  NULL AS video_views,
  NULL AS reach,
  NULL AS frequency,
  NULL AS likes,
  NULL AS shares,
  NULL AS comments,
  quality_score,
  search_impression_share
FROM `project-ce7efd4e-2514-4a62-807.improvado_assignment.raw_google_ads`

UNION ALL

-- TIKTOK
SELECT
  DATE(date) AS date,
  'tiktok' AS platform,
  campaign_id,
  campaign_name,
  adgroup_id AS ad_group_id,
  adgroup_name AS ad_group_name,
  impressions,
  clicks,
  cost AS spend,
  conversions,
  NULL AS conversion_value,
  video_views,
  NULL AS reach,
  NULL AS frequency,
  likes,
  shares,
  comments,
  NULL AS quality_score,
  NULL AS search_impression_share
FROM `project-ce7efd4e-2514-4a62-807.improvado_assignment.raw_tiktok_ads`;
