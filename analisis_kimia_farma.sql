CREATE OR REPLACE TABLE `rakamin-kf-analytics-508010.kimia_farma.tabel_analisa` AS 
with data_gabungan AS (
  SELECT
    t.transaction_id,
    t.date,
    t.branch_id,
    c.branch_name,
    c.kota,
    c.provinsi,
    c.rating AS rating_cabang,
    t.customer_name,
    t.product_id,
    p.product_name,
    p.price AS actual_price,
    t.discount_percentage,
    t.rating AS rating_transaksi
from `rakamin-kf-analytics-508010.kimia_farma.kf_final_transaction` AS t
left join `rakamin-kf-analytics-508010.kimia_farma.kf_kantor_cabang` AS c
  on t.branch_id = c.branch_id
left join `rakamin-kf-analytics-508010.kimia_farma.kf_product` AS p
  on t.product_id = p.product_id
),
data_kalkulasi AS (
  select
   *,
   case 
    WHEN actual_price <= 50000 THEN 0.10
    WHEN actual_price <= 100000 THEN 0.15
    WHEN actual_price <= 300000 THEN 0.20
    WHEN actual_price <= 500000 THEN 0.25
    ELSE 0.30
  END AS persentase_gross_laba,
  (actual_price * (1 - discount_percentage / 100)) AS nett_sales
FROM data_gabungan
)
select
   *,
   (nett_sales * persentase_gross_laba) as nett_profit
FROM data_kalkulasi;