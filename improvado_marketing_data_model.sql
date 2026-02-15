CREATE OR REPLACE VIEW `project-ce7efd4e-2514-4a62-807.improvado_assignment.vw_ads_kpis` AS
SELECT
  *,
  SAFE_DIVIDE(clicks, impressions) AS ctr,
  SAFE_DIVIDE(spend, clicks) AS cpc,
  SAFE_DIVIDE(spend, conversions) AS cpa,
  SAFE_DIVIDE(conversions, clicks) AS conversion_rate,
  SAFE_DIVIDE(spend, impressions) * 1000 AS cpm,
  SAFE_DIVIDE(conversion_value, spend) AS roas
FROM `project-ce7efd4e-2514-4a62-807.improvado_assignment.mart_ads_unified`;
