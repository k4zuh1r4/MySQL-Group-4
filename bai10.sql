SELECT * FROM acs_2014_2018_stats;
#covar alt
SELECT( SUM( pct_bach_higher * med_hh_inc ) - SUM(pct_bach_higher) * SUM(med_hh_inc) / COUNT(pct_bach_higher) ) / COUNT(med_hh_inc) as covar FROM acs_2014_2018_stats;
#covar_samp alt
SELECT (SUM(pct_bach_higher * med_hh_inc) - SUM(pct_bach_higher) * SUM(med_hh_inc) / COUNT(pct_bach_higher) ) /( COUNT(med_hh_inc) - 1 ) as covar_samp FROM acs_2014_2018_stats;

SELECT * FROM sql_inventory.products;
SELECT product_id, name, quantity_in_stock, unit_price, dense_rank() OVER (ORDER BY quantity_in_stock DESC) as test_rank FROM sql_inventory.products;

SELECT * FROM acs_2014_2018_stats;
SELECT AVG(med_hh_inc), SUM(med_hh_inc) FROM acs_2014_2018_stats;
SELECT COUNT(*) FROM acs_2014_2018_stats;
SELECT MAX(pct_masters_higher) FROM acs_2014_2018_stats;
SELECT var_pop(med_hh_inc) FROM acs_2014_2018_stats;


