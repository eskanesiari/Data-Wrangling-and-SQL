--Objective1

SELECT translate.product_category_name_english as product_name, SUM(order_item_id) as jumlah_pembelian
FROM olist_order_items_dataset
JOIN translate
ON olist_order_items_dataset.product_id = translate.product_id
GROUP BY product_name
order by jumlah_pembelian DESC;

CREATE TEMPORARY TABLE translate as
SELECT 
olist_products_dataset.product_id,
product_category_name_translation.product_category_name_english
FROM olist_products_dataset
LEFT JOIN product_category_name_translation ON olist_products_dataset.product_category_name = product_category_name_translation.product_category_name;