-- TESTS GOLD LAYER 
==========================================================
--Cheking gold.dim_customers
==========================================================
-- Checks duplicates 
SELECT cst_id, COUNT(*) FROM 
(
	SELECT 
		ci.cst_id,
		ci.cst_key,
		ci.cst_firstname,
		ci.cst_lastname,
		ci.cst_marital_status,
		ci.cst_gndr,
		ci.cst_create_date,
		ca.bdate,
		ca.gen,
		la.cntry
	FROM silver.crm_cust_info AS ci
	LEFT JOIN silver.erp_cust_az12 AS ca
	ON ci.cst_key = ca.cid
	LEFT JOIN silver.erp_loc_a101 AS la
	ON ci.cst_key = la.cid
) AS x 
GROUP BY cst_id
HAVING COUNT(*) > 1 

-- Check gender columns 
SELECT DISTINCT
	ci.cst_gndr,
	ca.gen,
	CASE WHEN ci.cst_gndr != 'n/a' THEN ci.cst_gndr
		 ELSE COALESCE(ca.gen,'n/a')
	END AS new_gen
FROM silver.crm_cust_info AS ci
LEFT JOIN silver.erp_cust_az12 AS ca
ON ci.cst_key = ca.cid
LEFT JOIN silver.erp_loc_a101 AS la
ON ci.cst_key = la.cid
 
-- Check gold.dim_customers
SELECT * FROM gold.dim_customers;
SELECT DISTINCT gender FROM gold.dim_customers;

==========================================================
--Cheking gold.dim_products
==========================================================
--Check duplicates
SELECT prd_id, COUNT(*) FROM 
(
	SELECT 
		prd_id,
		cat_id,
		prd_key,
		prd_nm,
		prd_cost,
		prd_line,
		prd_start_dt,
		pc.cat,
		pc.subcat,
		pc.maintenance
	FROM silver.crm_prd_info AS pn
	LEFT JOIN silver.erp_px_cat_g1v2 AS pc
	ON pn.cat_id = pc.id
	WHERE prd_end_dt IS NULL 
) AS x 
GROUP BY prd_id
HAVING COUNT(*) > 1 

-- Check gold.dim_products
SELECT * FROM gold.dim_products;

==========================================================
--Cheking gold.fact_sales
==========================================================  
--Foreign Key Integrity (Dimensions)
SELECT * 
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_customers AS c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products AS p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL
